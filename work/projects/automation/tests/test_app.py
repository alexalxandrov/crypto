import os
import sys
import json

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', '..')))

from app import app


def test_hello_endpoint():
    client = app.test_client()
    resp = client.get("/")
    assert resp.status_code == 200
    data = json.loads(resp.data)
    assert data["message"] == "Hello from automation SaaS"
