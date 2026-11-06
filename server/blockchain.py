import json
import urllib.request
from datetime import datetime, timezone
from .config import RPCS

def rpc_post(url: str, method: str, params: list):
    payload=json.dumps({"jsonrpc":"2.0","id":1,"method":method,"params":params}).encode()
    req=urllib.request.Request(url,data=payload,headers={"Content-Type":"application/json","User-Agent":"crypto-watchonly/0.2"})
    with urllib.request.urlopen(req,timeout=20) as response: data=json.loads(response.read().decode())
    if "error" in data: raise RuntimeError(str(data["error"]))
    return data["result"]

def evm_balance(chain,address):
    if chain not in RPCS: raise ValueError("Unsupported EVM chain")
    if not address.startswith("0x") or len(address)!=42: raise ValueError("Expected a 20-byte 0x-prefixed EVM address")
    raw=int(rpc_post(RPCS[chain],"eth_getBalance",[address,"latest"]),16)
    block=int(rpc_post(RPCS[chain],"eth_blockNumber",[]),16)
    return {"chain":chain,"address":address,"asset":"native","symbol":{"ethereum":"ETH","base":"ETH","arbitrum":"ETH","optimism":"ETH","polygon":"POL","bsc":"BNB"}.get(chain,chain.upper()),"raw_wei":str(raw),"balance":raw/10**18,"decimals":18,"block_number":block,"source":RPCS[chain],"retrieved_at":datetime.now(timezone.utc).isoformat()}

def bitcoin_balance(address):
    if not address or len(address)>100: raise ValueError("Invalid Bitcoin address")
    data=http_get_json("https://blockstream.info/api/address/"+address)
    funded=data["chain_stats"]["funded_txo_sum"]+data["mempool_stats"]["funded_txo_sum"]
    spent=data["chain_stats"]["spent_txo_sum"]+data["mempool_stats"]["spent_txo_sum"]
    return {"chain":"bitcoin","address":address,"symbol":"BTC","satoshi":funded-spent,"balance":(funded-spent)/1e8,"source":"blockstream.info","retrieved_at":datetime.now(timezone.utc).isoformat()}

def solana_balance(address):
    result=rpc_post("https://api.mainnet-beta.solana.com","getBalance",[address,{"commitment":"confirmed"}])
    lamports=int(result["value"])
    return {"chain":"solana","address":address,"symbol":"SOL","lamports":lamports,"balance":lamports/1e9,"decimals":9,"source":"api.mainnet-beta.solana.com","retrieved_at":datetime.now(timezone.utc).isoformat()}

def http_get_json(url):
    req=urllib.request.Request(url,headers={"User-Agent":"crypto-watchonly/0.2"})
    with urllib.request.urlopen(req,timeout=20) as response: return json.loads(response.read().decode())

def get_balance(chain,address):
    chain=chain.lower()
    if chain in RPCS: return evm_balance(chain,address)
    if chain=="bitcoin": return bitcoin_balance(address)
    if chain=="solana": return solana_balance(address)
    raise ValueError("Supported chains: "+", ".join([*RPCS.keys(),"bitcoin","solana"]))

def get_transaction(chain,txid):
    chain=chain.lower()
    if chain in RPCS:
        return {"chain":chain,"transaction":rpc_post(RPCS[chain],"eth_getTransactionByHash",[txid]),"receipt":rpc_post(RPCS[chain],"eth_getTransactionReceipt",[txid]),"source":RPCS[chain]}
    if chain=="bitcoin": return {"chain":chain,"transaction":http_get_json("https://blockstream.info/api/tx/"+txid),"source":"blockstream.info"}
    if chain=="solana": return {"chain":chain,"transaction":rpc_post("https://api.mainnet-beta.solana.com","getTransaction",[txid,{"encoding":"json","maxSupportedTransactionVersion":0}]),"source":"solana mainnet RPC"}
    raise ValueError("Unsupported chain")

def get_block(chain,height):
    chain=chain.lower()
    if chain in RPCS:
        return {"chain":chain,"block":rpc_post(RPCS[chain],"eth_getBlockByNumber",[hex(int(height)),False]),"source":RPCS[chain]}
    if chain=="bitcoin":
        blockhash=http_get_text("https://blockstream.info/api/block-height/"+str(height))
        return {"chain":chain,"block":http_get_json("https://blockstream.info/api/block/"+blockhash),"source":"blockstream.info"}
    if chain=="solana":
        return {"chain":chain,"block":rpc_post("https://api.mainnet-beta.solana.com","getBlock",[int(height),{"transactionDetails":"none","rewards":False,"maxSupportedTransactionVersion":0}]),"source":"solana mainnet RPC"}
    raise ValueError("Unsupported chain")

def http_get_text(url):
    req=urllib.request.Request(url,headers={"User-Agent":"crypto-watchonly/0.2"})
    with urllib.request.urlopen(req,timeout=20) as response: return response.read().decode().strip()


def evm_token_balance(chain, token_address, wallet_address):
    chain=chain.lower()
    if chain not in RPCS: raise ValueError("ERC-20 queries require a supported EVM chain")
    for value,name in [(token_address,"token contract"),(wallet_address,"wallet")]:
        if not value.startswith("0x") or len(value)!=42:
            raise ValueError("Expected a 20-byte 0x-prefixed "+name+" address")
        try: int(value[2:],16)
        except ValueError: raise ValueError("Invalid hexadecimal "+name+" address")
    # balanceOf(address) selector + left-padded 32-byte address
    data="0x70a08231"+"0"*24+wallet_address[2:].lower()
    raw_hex=rpc_post(RPCS[chain],"eth_call",[{"to":token_address,"data":data},"latest"])
    decimals_hex=rpc_post(RPCS[chain],"eth_call",[{"to":token_address,"data":"0x313ce567"},"latest"])
    raw=int(raw_hex,16)
    decimals=int(decimals_hex,16)
    if decimals>36: raise ValueError("Token decimals outside accepted range")
    block=int(rpc_post(RPCS[chain],"eth_blockNumber",[]),16)
    return {"chain":chain,"wallet_address":wallet_address,"token_contract":token_address,
            "raw_balance":str(raw),"decimals":decimals,"balance":raw/(10**decimals),
            "block_number":block,"source":RPCS[chain],
            "retrieved_at":datetime.now(timezone.utc).isoformat()}

def get_token_balance(chain, token_address, wallet_address):
    return evm_token_balance(chain,token_address,wallet_address)
