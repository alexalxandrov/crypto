"""Utility helpers shared across all starter projects.

This module contains a very small SQLite helper that each project can use
to persist fetched data locally.  The helper is intentionally minimal
because the goal is to keep the framework lightweight while still
providing persistent storage for later analysis.

The module exposes:

* :func:`get_github_token` – read the ``GITHUB_TOKEN`` environment
  variable.  The token is optional; if it is missing the functions will
  make unauthenticated requests.
* :func:`db_connect` – return a ``sqlite3.Connection`` instance for a
  given database file.
* :func:`create_tables` – create the minimal set of tables used by the
  projects.
* :func:`persist_jobs`, :func:`persist_prices`, :func:`persist_issues`,
  :func:`persist_repos` – convenience wrappers that insert data rows.

All functions perform very small amounts of error handling and log
important events via the shared :mod:`logs.log_config` logger.
"""

from __future__ import annotations

import os
import sqlite3
import datetime
import json
from typing import Iterable, List, Dict, Any

from logs.log_config import get_logger

logger = get_logger("utils")


def get_github_token() -> str | None:
    """Return GitHub personal access token from environment.

    The token is optional; if it is not set the caller should fall back to
    unauthenticated requests.
    """

    return os.getenv("GITHUB_TOKEN")


def db_connect(db_path: str) -> sqlite3.Connection:
    """Return a connection to the SQLite database at ``db_path``.

    The database is created automatically if it does not exist.
    """

    conn = sqlite3.connect(db_path, detect_types=sqlite3.PARSE_DECLTYPES)
    conn.row_factory = sqlite3.Row
    return conn


def create_tables(conn: sqlite3.Connection) -> None:
    """Create minimal tables used by the starter framework.

    Tables:
        - freelance_jobs(id PRIMARY KEY, title TEXT, fetched_at TIMESTAMP)
        - crypto_prices(id PRIMARY KEY, exchange TEXT, price REAL, fetched_at TIMESTAMP)
        - paid_oss_issues(id PRIMARY KEY, repo TEXT, number INTEGER, title TEXT, fetched_at TIMESTAMP)
        - bug_bounty_repos(id PRIMARY KEY, full_name TEXT, fetched_at TIMESTAMP)
    """

    cur = conn.cursor()
    cur.executescript(
        """
        CREATE TABLE IF NOT EXISTS freelance_jobs (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT NOT NULL,
            fetched_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        );
        CREATE TABLE IF NOT EXISTS crypto_prices (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            exchange TEXT NOT NULL,
            price REAL NOT NULL,
            fetched_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        );
        CREATE TABLE IF NOT EXISTS paid_oss_issues (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            repo TEXT NOT NULL,
            number INTEGER NOT NULL,
            title TEXT NOT NULL,
            fetched_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        );
        CREATE TABLE IF NOT EXISTS bug_bounty_repos (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            full_name TEXT NOT NULL,
            fetched_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        );
        """
    )
    conn.commit()


def persist_jobs(conn: sqlite3.Connection, jobs: List[str]) -> None:
    """Insert a list of job titles into :table:`freelance_jobs`."""

    cur = conn.cursor()
    cur.executemany(
        "INSERT INTO freelance_jobs (title) VALUES (?)",
        [(title,) for title in jobs],
    )
    conn.commit()


def persist_prices(conn: sqlite3.Connection, prices: Dict[str, float]) -> None:
    """Persist exchange price mapping.

    ``prices`` is a mapping from exchange name to the price value.
    """

    cur = conn.cursor()
    cur.executemany(
        "INSERT INTO crypto_prices (exchange, price) VALUES (?,?)",
        [(exchange, price) for exchange, price in prices.items()],
    )
    conn.commit()


def persist_issues(conn: sqlite3.Connection, repo: str, issues: List[Dict[str, Any]]) -> None:
    """Persist a list of GitHub issue dicts for a particular repo.

    The issue dict is expected to contain at least ``number`` and
    ``title`` keys.
    """

    cur = conn.cursor()
    cur.executemany(
        "INSERT INTO paid_oss_issues (repo, number, title) VALUES (?,?,?)",
        [(repo, issue["number"], issue["title"]) for issue in issues],
    )
    conn.commit()


def persist_repos(conn: sqlite3.Connection, repos: List[Dict[str, Any]]) -> None:
    """Persist a list of repository dicts returned by GitHub API.

    Only the ``full_name`` field is stored.
    """

    cur = conn.cursor()
    cur.executemany(
        "INSERT INTO bug_bounty_repos (full_name) VALUES (?)",
        [(repo["full_name"]) for repo in repos],
    )
    conn.commit()
