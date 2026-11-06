import json, os
import httpx
from mcp.server.fastmcp import FastMCP

BASE = os.getenv("CRYPTO_API_URL", "http://127.0.0.1:8765")
TOKEN_PATH = os.path.expanduser(os.getenv("CRYPTO_TOKEN_FILE", "~/.config/crypto/api.token"))
TOKEN = os.getenv("CRYPTO_API_TOKEN") or (open(TOKEN_PATH).read().strip() if os.path.exists(TOKEN_PATH) else "")
mcp = FastMCP("crypto-remote-control")

def call(method, path, **kwargs):
    if not TOKEN: return {"error":"Missing API token. Run install-mac.sh."}
    try:
        r = httpx.request(method, BASE + path, headers={"Authorization":"Bearer "+TOKEN}, timeout=30, **kwargs)
        r.raise_for_status()
        return r.json()
    except Exception as e: return {"error":str(e)}

@mcp.tool()
def server_info() -> str:
    """Show remote server identity, allowed workspaces and executable allowlist."""
    return json.dumps(call("GET","/v1/server"), indent=2)

@mcp.tool()
def system_metrics() -> str:
    """Read remote Linux load, memory and root filesystem metrics."""
    return json.dumps(call("GET","/v1/metrics"), indent=2)

@mcp.tool()
def process_start(executable: str, args: list[str], cwd: str, name: str="task") -> str:
    """Start an allowlisted executable in an approved workspace. Args are passed without a shell."""
    return json.dumps(call("POST","/v1/processes",json={"executable":executable,"args":args,"cwd":cwd,"name":name}),indent=2)

@mcp.tool()
def process_list() -> str:
    """List processes started by this service."""
    return json.dumps(call("GET","/v1/processes"),indent=2)

@mcp.tool()
def process_output(session_id: str, cursor: int=0) -> str:
    """Read new process output from cursor; save next_cursor to avoid duplicate output."""
    return json.dumps(call("GET",f"/v1/processes/{session_id}/output",params={"cursor":cursor}),indent=2)

@mcp.tool()
def process_input(session_id: str, data: str) -> str:
    """Send stdin to a running process. Use only when the process is waiting for input."""
    return json.dumps(call("POST",f"/v1/processes/{session_id}/input",json={"data":data}),indent=2)

@mcp.tool()
def process_stop(session_id: str) -> str:
    """Send terminate to a process started by this service."""
    return json.dumps(call("POST",f"/v1/processes/{session_id}/stop"),indent=2)

@mcp.tool()
def chain_balance(chain: str, address: str) -> str:
    """Read native coin balance for one explicitly supplied address. Read-only; no key or seed phrase required."""
    return json.dumps(call("GET",f"/v1/balance/{chain}/{address}"),indent=2)

if __name__ == "__main__":
    mcp.run()
