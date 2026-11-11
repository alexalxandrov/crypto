# Bug Bounty Utils

This repository contains a small utility for gathering bug‑bounty information
from public GitHub repositories and exposing it via a REST API.  The core
logic lives in `work/research/bug_bounty_fetcher.py`, while the API layer is
implemented in `bugbounty_utils/app.py`.

## Features

* Query GitHub Search API for repositories tagged with the *bug-bounty* topic.
* Extract the first monetary value from a repository's `README.md`.
* Expose a single endpoint: `GET /bounties?page=N`.

## Requirements

Python 3.8 or newer.

## Installation

```bash
pip install -e .  # or pip install bugbounty-utils
```

## Running the API locally

```bash
uvicorn bugbounty_utils.app:app --reload
```

The API will be available at `http://127.0.0.1:8000`.

## Usage

```bash
curl http://127.0.0.1:8000/bounties?page=1
```

The response contains a list of repositories, each with a potential payout
amount extracted from its README.
"""
