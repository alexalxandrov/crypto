"""Top‑level shim to expose utilities used by the test suites.

This file imports and re‑exports the key helper functions from the
``work.projects`` namespace so that ``from main import …`` works
regardless of whether the repository root is on ``sys.path`` or a
subdirectory is added.  It also preserves backward compatibility with
existing tests that import from the ``work.projects.main`` module.
"""

from __future__ import annotations

# Re‑export from the work.projects package.
from work.projects.main import (
    fetch_public_repos,
    fetch_binance_price,
    fetch_coinbase_price,
)

__all__ = [
    "fetch_public_repos",
    "fetch_binance_price",
    "fetch_coinbase_price",
]
