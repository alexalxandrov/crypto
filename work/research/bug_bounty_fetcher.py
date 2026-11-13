"""Utility for fetching bug‑bounty related data from GitHub and HackerOne.

Only the functions required by the FastAPI application are retained:

``extract_payout_from_readme`` – parses a README for the first monetary
amount.  It returns the amount as a plain integer string.

``fetch_github_repos`` – paginates the GitHub Search API for repositories
that have the topic ``security`` or ``bug‑bounty``.

``main`` – a helper that writes the raw GitHub response to a JSON file
and merges new repositories into an existing CSV of bounty programs.
"""

from __future__ import annotations

import json
import os
import re
import time
from pathlib import Path
from typing import Dict, List

import csv
import requests


def safe_get(
    url: str,
    params: Dict | None = None,
    headers: Dict | None = None,
    *,
    retries: int = 3,
    backoff: int = 5,
):
    """Perform a GET request with simple retry logic.

    Parameters
    ----------
    url: str
        Target URL.
    params: dict, optional
        Query parameters.
    headers: dict, optional
        HTTP headers.
    retries: int, default 3
        Number of retry attempts on failure.
    backoff: int, default 5
        Seconds to wait between retries.
    """
    for attempt in range(1, retries + 1):
        try:
            response = requests.get(url, params=params, headers=headers, timeout=15)
            response.raise_for_status()
            return response
        except Exception as exc:  # pragma: no cover - transient network errors
            if attempt == retries:
                raise
            time.sleep(backoff)


def extract_payout_from_readme(repo: Dict) -> str:
    """Return the first monetary amount found in a README.

    The function looks for a numeric amount that may be prefixed by a
    currency symbol or the word ``USD``.  It normalises the amount to a
    plain integer string (e.g., ``"12000"``).
    """
    readme_url = (
        f"https://raw.githubusercontent.com/{repo['full_name']}/"
        f"{repo.get('default_branch', 'master')}/README.md"
    )
    try:
        r = safe_get(readme_url)
        content = r.text
        # Regex handles formats like $12,000; 12.000; USD 12000; etc.
        match = re.search(r"(?:\$|USD\s*)?([0-9]{1,3}(?:[.,][0-9]{3})*(?:[.,][0-9]{2})?)", content)
        if match:
            # Strip thousand separators and convert to int string
            amount = match.group(1)
            amount = amount.replace(",", "").replace(".", "")
            return amount
    except Exception:
        pass
    return ""


# ---------------------------------------------------------------------------
# GitHub Search API helpers
# ---------------------------------------------------------------------------
BASE_GITHUB_SEARCH_URL = "https://api.github.com/search/repositories"
QUERY_PARAMS = {"q": "topic:security", "per_page": 30, "page": 1}


def fetch_github_repos(query_params: Dict[str, str]) -> List[Dict]:
    """Return a list of repository items from the GitHub Search API.

    Parameters
    ----------
    query_params: dict
        Parameters to send to the GitHub Search API.
    """
    all_items: List[Dict] = []
    headers: Dict = {}
    token = os.getenv("GITHUB_TOKEN")
    if token:
        headers["Authorization"] = f"token {token}"
    page = query_params.get("page", 1)
    max_pages = int(os.getenv("GITHUB_MAX_PAGES", 20))
    while page <= max_pages:
        query_params["page"] = page
        response = safe_get(BASE_GITHUB_SEARCH_URL, params=query_params, headers=headers)
        data = response.json()
        items = data.get("items", [])
        if not items:
            break
        all_items.extend(items)
        time.sleep(6 if not token else 2)
        page += 1
    return all_items


# ---------------------------------------------------------------------------
# CSV merging helper – mirrors the behaviour used by the FastAPI app.
# ---------------------------------------------------------------------------
OUTPUT_PATH = Path("work/research/bug_bounty_api_results.json")
CSV_PATH = Path("work/research/bug_bounty_list.csv")


def main() -> None:
    """Fetch GitHub repos, write JSON, and merge new rows into CSV.

    This function is not used by the FastAPI service directly but
    remains useful for manual debugging or CI steps.
    """
    all_repos = fetch_github_repos(QUERY_PARAMS)
    print(f"Fetched {len(all_repos)} repositories across {len(all_repos) // QUERY_PARAMS['per_page'] + 1} pages.")
    OUTPUT_PATH.write_text(json.dumps(all_repos, indent=2))
    print(f"Output written to {OUTPUT_PATH}")

    if not CSV_PATH.exists():
        print(f"CSV file {CSV_PATH} not found. Skipping merge.", file=sys.stderr)
        return
    with CSV_PATH.open(newline="") as fh:
        reader = csv.DictReader(fh)
        existing = set((r["Program"], r["Platform"]) for r in reader)
    fieldnames = [
        "Program",
        "Platform",
        "Max Payout",
        "Avg Payout",
        "Minimum Severity",
        "Contact",
    ]
    rows_to_append = []
    for repo in all_repos:
        program_name = repo.get("full_name")
        if (program_name, "GitHub") in existing:
            continue
        payout = extract_payout_from_readme(repo)
        rows_to_append.append(
            {
                "Program": program_name,
                "Platform": "GitHub",
                "Max Payout": payout,
                "Avg Payout": payout,
                "Minimum Severity": "",
                "Contact": repo.get("html_url", ""),
            }
        )
    if rows_to_append:
        with CSV_PATH.open("a", newline="") as fh:
            writer = csv.DictWriter(fh, fieldnames=fieldnames)
            for row in rows_to_append:
                writer.writerow(row)
        print(f"Appended {len(rows_to_append)} new rows to {CSV_PATH}")
    else:
        print("No new GitHub repositories to append.")


if __name__ == "__main__":  # pragma: no cover
    main()
