"""Utility helpers for the Bug Bounty project.

The test suite for this project expects three functions:

``db_connect``
    Open a SQLite connection to a given file path.
``create_tables``
    Create the ``bug_bounty_repos`` table used by the tests.
``persist_repos``
    Insert a list of repository dicts into the table.

The implementation is intentionally straightforward – it uses the standard
``sqlite3`` module that ships with Python and is sufficient for the unit
tests.  No external dependencies are required.
"""

from __future__ import annotations

import sqlite3
from pathlib import Path
from typing import Iterable, Mapping

__all__ = ["db_connect", "create_tables", "persist_repos"]


def db_connect(db_path: str | Path) -> sqlite3.Connection:
    """Return a SQLite connection.

    The function ensures the directory containing ``db_path`` exists.  It
    returns a :class:`sqlite3.Connection` which can be used directly in
    the test suite.
    """

    path = Path(db_path)
    path.parent.mkdir(parents=True, exist_ok=True)
    return sqlite3.connect(str(path))


def create_tables(conn: sqlite3.Connection) -> None:
    """Create the ``bug_bounty_repos`` table.

    The table contains a single column ``full_name`` which is used by
    the test to verify that the repositories were persisted.
    """

    conn.execute(
        """
        CREATE TABLE IF NOT EXISTS bug_bounty_repos (
            full_name TEXT PRIMARY KEY
        );
        """
    )
    conn.commit()


def persist_repos(conn: sqlite3.Connection, repos: Iterable[Mapping[str, str]]) -> None:
    """Persist an iterable of repo dicts.

    Each dict is expected to contain a ``full_name`` key.  Existing
    entries are ignored to keep the test idempotent.
    """

    for repo in repos:
        full_name = repo.get("full_name")
        if not full_name:
            continue
        conn.execute("INSERT OR IGNORE INTO bug_bounty_repos (full_name) VALUES (?)", (full_name,))
    conn.commit()