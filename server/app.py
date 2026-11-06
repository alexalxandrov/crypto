import os, secrets, subprocess, threading, uuid, time, shutil
from pathlib import Path
from typing import Optional
from fastapi import FastAPI, Header, HTTPException
from pydantic import BaseModel, Field
from .config import API_TOKEN, WORKSPACES, ALLOWED_EXECUTABLES
from .blockchain import get_balance

app = FastAPI(title="Crypto Remote & Watch-only API", version="0.1.0")
SESSIONS = {}
LOCK = threading.RLock()

def auth(authorization: Optional[str]):
    token = (authorization or "").removeprefix("Bearer ").strip()
    if not API_TOKEN or not secrets.compare_digest(token, API_TOKEN):
        raise HTTPException(401, "Invalid or missing bearer token")

def allowed_path(raw: str) -> Path:
    path = Path(raw).expanduser().resolve()
    if not any(path == root or root in path.parents for root in WORKSPACES):
        raise HTTPException(403, "Path is outside configured workspaces")
    if not path.exists():
        raise HTTPException(404, "Working directory does not exist")
    return path

class StartRequest(BaseModel):
    executable: str
    args: list[str] = Field(default_factory=list)
    cwd: str
    name: str = "task"

class InputRequest(BaseModel):
    data: str = Field(max_length=4096)

@app.get("/health")
def health():
    return {"ok": True, "service":"crypto-remote"}

@app.get("/v1/server")
def server_info(authorization: Optional[str] = Header(default=None)):
    auth(authorization)
    return {"hostname": os.uname().nodename, "python": os.sys.version, "workspaces":[str(x) for x in WORKSPACES],
            "executables":sorted(ALLOWED_EXECUTABLES)}

@app.get("/v1/metrics")
def metrics(authorization: Optional[str] = Header(default=None)):
    auth(authorization)
    def read(path):
        try: return Path(path).read_text()
        except Exception: return ""
    mem = read("/proc/meminfo")
    load = read("/proc/loadavg")
    return {"loadavg":load.strip(), "meminfo":mem, "disk":shutil.disk_usage("/")._asdict()}

@app.post("/v1/processes")
def start_process(req: StartRequest, authorization: Optional[str] = Header(default=None)):
    auth(authorization)
    if req.executable not in ALLOWED_EXECUTABLES:
        raise HTTPException(403, "Executable is not allowlisted")
    cwd = allowed_path(req.cwd)
    try:
        proc = subprocess.Popen([req.executable, *req.args], cwd=str(cwd), stdin=subprocess.PIPE,
                                stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True,
                                bufsize=1, start_new_session=True)
    except Exception as e:
        raise HTTPException(400, str(e))
    sid = uuid.uuid4().hex[:12]
    entry = {"id":sid,"name":req.name,"pid":proc.pid,"proc":proc,"output":"","cursor":0,
             "state":"running","created":time.time()}
    def reader():
        for line in proc.stdout:
            with LOCK:
                entry["output"] += line
                if len(entry["output"]) > 200000:
                    entry["output"] = entry["output"][-150000:]
                entry["cursor"] += len(line)
        entry["state"] = "exited"
        entry["exit_code"] = proc.wait()
    threading.Thread(target=reader, daemon=True).start()
    with LOCK: SESSIONS[sid] = entry
    return {"session_id":sid,"pid":proc.pid,"name":req.name,"state":"running"}

@app.get("/v1/processes")
def list_processes(authorization: Optional[str] = Header(default=None)):
    auth(authorization)
    with LOCK:
        return [{"session_id":k,"name":v["name"],"pid":v["pid"],"state":v["state"],
                 "exit_code":v.get("exit_code")} for k,v in SESSIONS.items()]

@app.get("/v1/processes/{sid}/output")
def process_output(sid: str, cursor: int = 0, authorization: Optional[str] = Header(default=None)):
    auth(authorization)
    with LOCK:
        e = SESSIONS.get(sid)
        if not e: raise HTTPException(404, "Unknown session")
        out = e["output"]
        return {"session_id":sid,"output":out[cursor:],"next_cursor":len(out),"state":e["state"],
                "pid":e["pid"],"exit_code":e.get("exit_code")}

@app.post("/v1/processes/{sid}/input")
def process_input(sid: str, req: InputRequest, authorization: Optional[str] = Header(default=None)):
    auth(authorization)
    with LOCK: e = SESSIONS.get(sid)
    if not e: raise HTTPException(404, "Unknown session")
    if e["state"] != "running": raise HTTPException(409, "Process is not running")
    try:
        e["proc"].stdin.write(req.data); e["proc"].stdin.flush()
    except Exception as ex: raise HTTPException(400, str(ex))
    return {"ok":True}

@app.post("/v1/processes/{sid}/stop")
def stop_process(sid: str, authorization: Optional[str] = Header(default=None)):
    auth(authorization)
    with LOCK: e = SESSIONS.get(sid)
    if not e: raise HTTPException(404, "Unknown session")
    if e["state"] == "running": e["proc"].terminate()
    return {"ok":True,"session_id":sid}

@app.get("/v1/balance/{chain}/{address}")
def balance(chain: str, address: str, authorization: Optional[str] = Header(default=None)):
    auth(authorization)
    try: return get_balance(chain, address)
    except Exception as e: raise HTTPException(400, str(e))
