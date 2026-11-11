"""bugbounty_utils package.

This package exposes a minimal FastAPI service that can be used to query
bug‑bounty data gathered by the `work.research.bug_bounty_fetcher` module.

The module is intentionally lightweight – it only fetches data from the
GitHub Search API (no authentication by default) and extracts the first
monetary amount from each repository's ``README.md``.  The service can be
run locally with ``uvicorn bugbounty_utils.app:app``.
"""
