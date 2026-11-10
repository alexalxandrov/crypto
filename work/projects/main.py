"""Shim module for importing bug bounty automation utilities.

This file re‑exports the :func:`fetch_public_repos` and :func:`main` functions
from :mod:`work.projects.bug_bounty.main` to keep backward compatibility with
tests that expect ``import main`` to work when the repository root is added to
``sys.path``.

The design mirrors the pattern used by other sub‑projects, allowing the
`bug_bounty` implementation to live in its own package while presenting a
flat namespace for simple imports.
"""

from __future__ import annotations

# Import the real implementation from the bug bounty sub‑project.
from work.projects.bug_bounty.main import fetch_public_repos, main  # noqa: F401

__all__ = ["fetch_public_repos", "main"]
