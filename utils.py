"""Compatibility shim for the historic ``utils`` module.

Several legacy tests import :mod:`utils` directly expecting functions
such as ``db_connect`` or ``persist_prices`` to be available.  In this
repository the real implementations live in :mod:`work.projects.utils`.
This lightweight wrapper re‑exports the needed symbols so the tests
continue to run without modification.
"""

from __future__ import annotations

from work.projects.utils import (
    db_connect,
    create_tables,
    persist_prices,
    persist_repos,
)

__all__ = [
    "db_connect",
    "create_tables",
    "persist_prices",
    "persist_repos",
]