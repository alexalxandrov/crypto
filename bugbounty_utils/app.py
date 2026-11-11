"""FastAPI application that exposes bug bounty data.

Endpoint:
    GET /bounties?page=<int>

It returns a JSON object containing the page number, count of bounties on that
page, and a list of dictionaries with the repository name, extracted payout
amount (if any) and the repository URL.

Usage:
    uvicorn bugbounty_utils.app:app --reload
"""

from __future__ import annotations

from fastapi import FastAPI, HTTPException
from work.research.bug_bounty_fetcher import (
    fetch_github_repos,
    extract_payout_from_readme,
)

app = FastAPI(title="Bug Bounty Fetcher API")


@app.get("/bounties")
async def get_bounties(page: int = 1):
    """Return a page of repositories with bug‑bounty information.

    Parameters
    ----------
    page: int
        Page number to fetch from the GitHub Search API. Defaults to 1.
    """

    query_params = {"q": "topic:bug-bounty", "per_page": 30, "page": page}
    try:
        repos = fetch_github_repos(query_params)
    except Exception as exc:  # pragma: no cover – network failures
        raise HTTPException(status_code=500, detail=str(exc))

    results = []
    for repo in repos:
        payout = extract_payout_from_readme(repo)
        results.append(
            {
                "name": repo.get("full_name"),
                "payout": payout,
                "url": repo.get("html_url"),
            }
        )

    return {"page": page, "count": len(results), "bounties": results}
