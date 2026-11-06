from pathlib import Path
import os

BASE_DIR = Path(__file__).resolve().parent
DATA_DIR = Path(os.getenv("CRYPTO_DATA_DIR", BASE_DIR / "data")).resolve()
DATA_DIR.mkdir(parents=True, exist_ok=True)
TOKEN_FILE = Path(os.getenv("CRYPTO_TOKEN_FILE", DATA_DIR / "api.token"))
API_TOKEN = os.getenv("CRYPTO_API_TOKEN", "").strip()
if not API_TOKEN and TOKEN_FILE.exists():
    API_TOKEN = TOKEN_FILE.read_text().strip()

# Restrict process execution to these roots. Add project paths deliberately.
WORKSPACES = [
    Path(p).expanduser().resolve()
    for p in os.getenv("CRYPTO_WORKSPACES", str(Path.home() / "work")).split(":")
    if p.strip()
]
ALLOWED_EXECUTABLES = set(os.getenv(
    "CRYPTO_ALLOWED_EXECUTABLES",
    "python3,python,bash,sh,git,ollama,pytest,node,npm"
).split(","))

RPCS = {
    "ethereum": os.getenv("RPC_ETHEREUM", "https://ethereum-rpc.publicnode.com"),
    "base": os.getenv("RPC_BASE", "https://mainnet.base.org"),
    "arbitrum": os.getenv("RPC_ARBITRUM", "https://arb1.arbitrum.io/rpc"),
    "optimism": os.getenv("RPC_OPTIMISM", "https://mainnet.optimism.io"),
    "polygon": os.getenv("RPC_POLYGON", "https://polygon-bor-rpc.publicnode.com"),
    "bsc": os.getenv("RPC_BSC", "https://bsc-dataseed.binance.org"),
}
