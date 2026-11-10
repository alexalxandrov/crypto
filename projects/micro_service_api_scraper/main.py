import os
from fastapi import FastAPI, HTTPException, Header, Depends
from fastapi.responses import JSONResponse
import httpx
from dotenv import load_dotenv

load_dotenv()

API_KEY = os.getenv("MICROSERVICE_API_KEY")
if not API_KEY:
    raise RuntimeError("MICROSERVICE_API_KEY environment variable is required")

app = FastAPI(title="CoinGecko Proxy API")

COINGECKO_BASE_URL = "https://api.coingecko.com/api/v3"

def get_api_key(x_api_key: str = Header(..., alias="X-API-KEY")):
    if x_api_key != API_KEY:
        raise HTTPException(status_code=401, detail="Invalid API key")
    return x_api_key

@app.get("/coins/{coin_id}")
async def get_coin(coin_id: str, _: str = Depends(get_api_key)):
    """Proxy CoinGecko coin data endpoint.

    The service forwards the request to CoinGecko and returns the JSON
    response.  All query parameters are preserved.
    """
    async with httpx.AsyncClient() as client:
        url = f"{COINGECKO_BASE_URL}/coins/{coin_id}"
        params = {}
        try:
            response = await client.get(url, params=params, timeout=10)
        except httpx.RequestError as exc:
            raise HTTPException(status_code=502, detail=str(exc))
        if response.status_code != 200:
            raise HTTPException(status_code=response.status_code, detail=response.text)
        return JSONResponse(content=response.json())

# Additional endpoints can be added following the same pattern.
