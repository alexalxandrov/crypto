import os
import sys
import requests
import json
from logs.log_config import get_logger
# Ensure utils from parent directory can be imported
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from work.projects.utils import persist_prices, db_connect, create_tables

logger = get_logger('crypto_arbitrage')

# simple price fetch from Binance and Coinbase for BTC/USDT pair

def fetch_binance_price(symbol="BTCUSDT") -> float:
    url = f"https://api.binance.com/api/v3/ticker/price?symbol={symbol}"
    resp = requests.get(url)
    if resp.status_code != 200:
        logger.error(f"Binance API error: {resp.status_code}")
        return 0.0
    data = resp.json()
    return float(data.get('price', 0.0))

def fetch_coinbase_price(symbol="BTC-USD") -> float:
    url = f"https://api.coinbase.com/v2/prices/{symbol}/spot"
    resp = requests.get(url)
    if resp.status_code != 200:
        logger.error(f"Coinbase API error: {resp.status_code}")
        return 0.0
    data = resp.json()
    return float(data.get('data', {}).get('amount', 0.0))

if __name__ == '__main__':
    binance_price = fetch_binance_price()
    coinbase_price = fetch_coinbase_price()
    logger.info(f"Binance BTCUSDT: {binance_price}")
    logger.info(f"Coinbase BTC-USD: {coinbase_price}")
    if coinbase_price == 0 or binance_price == 0:
        logger.warning("Failed to fetch prices from one of the exchanges")
    else:
        spread = binance_price - coinbase_price
        logger.info(f"Spread: {spread}")
    # Persist to SQLite
    db_path = os.path.join(os.path.dirname(__file__), 'data.db')
    conn = db_connect(db_path)
    create_tables(conn)
    persist_prices(conn, {"Binance": binance_price, "Coinbase": coinbase_price})
    conn.close()
