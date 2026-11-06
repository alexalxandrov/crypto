import json, os
import httpx
from mcp.server.fastmcp import FastMCP

BASE = os.getenv("CRYPTO_API_URL", "http://127.0.0.1:8765").rstrip("/")
TOKEN_PATH = os.path.expanduser(os.getenv("CRYPTO_TOKEN_FILE", "~/.config/crypto/api.token"))
TOKEN = os.getenv("CRYPTO_API_TOKEN") or (open(TOKEN_PATH).read().strip() if os.path.exists(TOKEN_PATH) else "")
mcp = FastMCP("crypto-remote-control")

def call(method, path, **kwargs):
    if not TOKEN: return {"error":"Missing API token. Run install-mac.sh."}
    try:
        r=httpx.request(method,BASE+path,headers={"Authorization":"Bearer "+TOKEN},timeout=35,**kwargs)
        r.raise_for_status()
        return r.json()
    except Exception as e: return {"error":str(e)}

@mcp.tool()
def server_info() -> str:
    """Show remote Linux identity, workspaces and executable allowlist."""
    return json.dumps(call("GET","/v1/server"),indent=2)

@mcp.tool()
def system_metrics() -> str:
    """Read remote Linux load, memory and disk metrics."""
    return json.dumps(call("GET","/v1/metrics"),indent=2)

@mcp.tool()
def process_start(executable: str,args: list[str],cwd: str,name: str="task") -> str:
    """Start an allowlisted executable with argv in an approved workspace; no shell strings."""
    return json.dumps(call("POST","/v1/processes",json={"executable":executable,"args":args,"cwd":cwd,"name":name}),indent=2)

@mcp.tool()
def process_list() -> str:
    """List processes started by this service."""
    return json.dumps(call("GET","/v1/processes"),indent=2)

@mcp.tool()
def process_output(session_id: str,cursor: int=0) -> str:
    """Read process output from cursor; retain next_cursor to avoid duplicates."""
    return json.dumps(call("GET",f"/v1/processes/{session_id}/output",params={"cursor":cursor}),indent=2)

@mcp.tool()
def process_input(session_id: str,data: str) -> str:
    """Send stdin to a managed process. Never send passwords, mnemonics or private keys."""
    return json.dumps(call("POST",f"/v1/processes/{session_id}/input",json={"data":data}),indent=2)

@mcp.tool()
def process_stop(session_id: str) -> str:
    """Terminate a process started by this service."""
    return json.dumps(call("POST",f"/v1/processes/{session_id}/stop"),indent=2)

@mcp.tool()
def chain_balance(chain: str,address: str) -> str:
    """Read native balance for an explicitly supplied public address. EVM, Bitcoin and Solana are supported."""
    return json.dumps(call("GET",f"/v1/balance/{chain}/{address}"),indent=2)

@mcp.tool()
def chain_transaction(chain: str,txid: str) -> str:
    """Fetch a public transaction by hash/signature. Read-only."""
    return json.dumps(call("GET",f"/v1/transaction/{chain}/{txid}"),indent=2)

@mcp.tool()
def chain_block(chain: str,height: str) -> str:
    """Fetch a public block by number/height/slot. Read-only."""
    return json.dumps(call("GET",f"/v1/block/{chain}/{height}"),indent=2)

@mcp.tool()
def watchlist_add(chain: str,address: str,label: str="") -> str:
    """Add an explicitly supplied public address to the local watch-only list."""
    return json.dumps(call("POST","/v1/watchlist",json={"chain":chain,"address":address,"label":label}),indent=2)

@mcp.tool()
def watchlist_list() -> str:
    """List saved public addresses; no private wallet data is stored."""
    return json.dumps(call("GET","/v1/watchlist"),indent=2)

@mcp.tool()
def watchlist_check() -> str:
    """Check native balances for all saved watch-only addresses."""
    return json.dumps(call("POST","/v1/watchlist/check"),indent=2)

if __name__ == "__main__":
    mcp.run()


@mcp.tool()
def erc20_balance(chain: str, token_contract: str, wallet_address: str) -> str:
    """Read an ERC-20 token balance for an explicitly supplied public wallet address and token contract. Never uses private keys."""
    return json.dumps(call("GET",f"/v1/token-balance/{chain}/{token_contract}/{wallet_address}"),indent=2)
