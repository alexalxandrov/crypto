"""Convenience shim that aggregates key utilities from sub‑projects.

This file re‑exports the :func:`fetch_public_repos` and :func:`main` functions
from :mod:`work.projects.bug_bounty.main` to keep backward compatibility with
tests that expect ``import main`` to work when the repository root is added to
``sys.path``.

The design mirrors the pattern used by other sub‑projects, allowing the
`bug_bounty` implementation to live in its own package while presenting a
flat namespace for simple imports.
"""

from __future__ import annotations

# Import implementations from the two sub‑projects that expose a
# ``main`` module in the test suites.
from work.projects.bug_bounty.main import fetch_public_repos  # noqa: F401
from work.projects.crypto_arbitrage.main import (
    fetch_binance_price,
    fetch_coinbase_price,
)

__all__ = [
    "fetch_public_repos",
    "fetch_binance_price",
    "fetch_coinbase_price",
]
