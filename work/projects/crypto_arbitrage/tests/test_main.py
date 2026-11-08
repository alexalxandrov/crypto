import os
import sys
import sqlite3
import responses

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', '..')))

from main import fetch_binance_price, fetch_coinbase_price
from utils import db_connect, create_tables, persist_prices


@responses.activate
def test_fetch_prices_and_persistence(tmp_path):
    binance_resp = {"symbol": "BTCUSDT", "price": "40000.00"}
    coinbase_resp = {"data": {"amount": "39900.00", "base": "BTC", "currency": "USD"}}

    responses.add(
        responses.GET,
        "https://api.binance.com/api/v3/ticker/price?symbol=BTCUSDT",
        json=binance_resp,
        status=200,
    )
    responses.add(
        responses.GET,
        "https://api.coinbase.com/v2/prices/BTC-USD/spot",
        json=coinbase_resp,
        status=200,
    )

    binance_price = fetch_binance_price()
    coinbase_price = fetch_coinbase_price()
    assert binance_price == 40000.0
    assert coinbase_price == 39900.0

    db_path = tmp_path / "data.db"
    conn = db_connect(str(db_path))
    create_tables(conn)
    persist_prices(conn, {"Binance": binance_price, "Coinbase": coinbase_price})
    cur = conn.execute("SELECT exchange, price FROM crypto_prices")
    rows = cur.fetchall()
    assert sorted([row["exchange"] for row in rows]) == ["Binance", "Coinbase"]
    conn.close()
