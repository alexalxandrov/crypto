import json
import urllib.request
import urllib.error
from datetime import datetime, timezone
from .config import RPCS

def rpc_post(url: str, method: str, params: list):
    payload = json.dumps({"jsonrpc":"2.0","id":1,"method":method,"params":params}).encode()
    req = urllib.request.Request(url, data=payload, headers={"Content-Type":"application/json","User-Agent":"crypto-watchonly/0.1"})
    with urllib.request.urlopen(req, timeout=15) as response:
        data = json.loads(response.read().decode())
    if "error" in data:
        raise RuntimeError(str(data["error"]))
    return data["result"]

def evm_balance(chain: str, address: str):
    chain = chain.lower()
    if chain not in RPCS:
        raise ValueError(f"Unsupported EVM chain: {chain}")
    if not address.startswith("0x") or len(address) != 42:
        raise ValueError("Expected a 20-byte 0x-prefixed EVM address")
    raw = int(rpc_post(RPCS[chain], "eth_getBalance", [address, "latest"]), 16)
    block = int(rpc_post(RPCS[chain], "eth_blockNumber", []), 16)
    return {
        "chain": chain, "address": address, "asset": "native",
        "symbol": {"ethereum":"ETH","base":"ETH","arbitrum":"ETH","optimism":"ETH","polygon":"POL","bsc":"BNB"}.get(chain, chain.upper()),
        "raw_wei": str(raw), "balance": raw / 10**18, "decimals": 18,
        "block_number": block, "source": RPCS[chain],
        "retrieved_at": datetime.now(timezone.utc).isoformat()
    }

def bitcoin_balance(address: str):
    if not address or len(address) > 100:
        raise ValueError("Invalid Bitcoin address")
    url = "https://blockstream.info/api/address/" + address
    req = urllib.request.Request(url, headers={"User-Agent":"crypto-watchonly/0.1"})
    with urllib.request.urlopen(req, timeout=15) as response:
        data = json.loads(response.read().decode())
    funded = data["chain_stats"]["funded_txo_sum"] + data["mempool_stats"]["funded_txo_sum"]
    spent = data["chain_stats"]["spent_txo_sum"] + data["mempool_stats"]["spent_txo_sum"]
    return {"chain":"bitcoin","address":address,"symbol":"BTC","satoshi":funded-spent,
            "balance":(funded-spent)/1e8,"source":"blockstream.info",
            "retrieved_at":datetime.now(timezone.utc).isoformat()}

def solana_balance(address: str):
    result = rpc_post("https://api.mainnet-beta.solana.com", "getBalance", [address, {"commitment":"confirmed"}])
    lamports = int(result["value"])
    return {"chain":"solana","address":address,"symbol":"SOL","lamports":lamports,
            "balance":lamports/1e9,"decimals":9,"source":"api.mainnet-beta.solana.com",
            "retrieved_at":datetime.now(timezone.utc).isoformat()}

def get_balance(chain: str, address: str):
    chain = chain.lower()
    if chain in RPCS:
        return evm_balance(chain, address)
    if chain == "bitcoin":
        return bitcoin_balance(address)
    if chain == "solana":
        return solana_balance(address)
    raise ValueError("Supported chains: " + ", ".join([*RPCS.keys(), "bitcoin", "solana"]))
