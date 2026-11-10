import os
import pytest
from fastapi.testclient import TestClient
import importlib
from fastapi import FastAPI
import pathlib
import os

# Ensure the required API key environment variable is set before importing
os.environ.setdefault("MICROSERVICE_API_KEY", "testkey")

# Load the main module from the microservice directory directly to avoid
# clashes with a globally installed package named ``main``.
module_path = pathlib.Path(__file__).resolve().parent.parent / "main.py"
spec = importlib.util.spec_from_file_location("microservice.main", module_path)
main = importlib.util.module_from_spec(spec)
spec.loader.exec_module(main)  # type: ignore
app = main.app


def test_get_coin_success():
    # Ensure environment variable is set for the app to start
    os.environ["MICROSERVICE_API_KEY"] = "testkey"
    client = TestClient(app)
    response = client.get("/coins/bitcoin", headers={"X-API-KEY": "testkey"})
    assert response.status_code == 200
    data = response.json()
    assert data["id"] == "bitcoin"


def test_invalid_api_key():
    os.environ["MICROSERVICE_API_KEY"] = "correct_key"
    client = TestClient(app)
    response = client.get("/coins/bitcoin", headers={"X-API-KEY": "wrong"})
    assert response.status_code == 401