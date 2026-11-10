# CoinGecko Proxy Micro‑service

This lightweight micro‑service exposes a minimal API that proxies requests to
[CoinGecko](https://www.coingecko.com/).  It is built with **FastAPI** and can be
deployed on a low‑cost VPS or container platform.

## Features

* **Secure** – access is protected by an API key supplied in the `X‑API‑KEY`
  request header.
* **Fast** – uses **httpx** for async HTTP calls.
* **Zero‑dependency** – all dependencies are declared in
  `requirements.txt`.

## Installation

```bash
pip install -r requirements.txt
```

## Running locally

```bash
export MICROSERVICE_API_KEY=your-secret-key
uvicorn main:app --host 0.0.0.0 --port 8000
```

## API Endpoints

### GET `/coins/{coin_id}`

Proxy to CoinGecko’s `GET /coins/{id}`. Example:

```http
GET http://localhost:8000/coins/bitcoin
X-API-KEY: your-secret-key
```

## Deployment

The service can be containerized or run directly on a VPS. A minimal
`Dockerfile` is provided for convenience.
