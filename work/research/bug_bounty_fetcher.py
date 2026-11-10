"""Skeleton for fetching bug‑bounty related data.

This script demonstrates how one could programmatically gather
program listings from public APIs (e.g., HackerOne, Bugcrowd, GitHub
Search).  The implementation is intentionally lightweight and does not
attempt to authenticate with paid endpoints.  It provides a basis for
future expansion.

Usage:

    python3 work/research/bug_bounty_fetcher.py

The script currently performs a simple GitHub search for repositories
that have the topic ``security`` or ``bug-bounty`` and writes the
results to :file:`work/research/bug_bounty_api_results.json`.
"""

from __future__ import annotations

import json
import os
import sys
import time
import re
from pathlib import Path
from typing import Dict, List

import requests
import csv


def safe_get(url: str, params: Dict | None = None, headers: Dict | None = None, *, retries: int = 3, backoff: int = 5) -> requests.Response:
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
    """Return the first monetary amount found in the README.

    The function looks for a numeric amount that may be prefixed by a
    currency symbol or the word ``USD``. It normalises the amount to a
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

# Basic configuration - keep it on the side so the script can be
# executed from anywhere.  The GitHub Search API is rate limited to
# 10 requests per minute for unauthenticated requests.
BASE_GITHUB_SEARCH_URL = "https://api.github.com/search/repositories"
BASE_HACKERONE_URL = "https://hackerone.com/api/v1/programs"
BASE_HACKERONE_PROGRAM_URL = "https://hackerone.com/api/v1/programs/{program_id}"
# The default query params for GitHub Search.  The script will iterate
# over pages until either the API stops returning results or the user
# specifies a limit via an environment variable ``GITHUB_MAX_PAGES``.
QUERY_PARAMS = {
    "q": "topic:security",
    "per_page": 30,
    "page": 1,
}

OUTPUT_PATH = Path("work/research/bug_bounty_api_results.json")
CSV_PATH = Path("work/research/bug_bounty_list.csv")
def fetch_github_repos(query_params: Dict[str, str]) -> List[Dict]:
    """Return a list of repository items from the GitHub Search API.

    The GitHub Search API caps results at 1000 items.  This function
    automatically pages through the results, respecting the rate limit
    for unauthenticated requests (10 per minute).  When the
    ``GITHUB_TOKEN`` environment variable is set, the request is
    authenticated and the limit becomes 30 per minute.
    """

    The function forwards the request using :func:`safe_get` to benefit
    from retry logic.  It returns the ``items`` field from the JSON
    response. Errors are propagated to the caller.
    """
    all_items: List[Dict] = []
    headers = {}
    token = os.getenv("GITHUB_TOKEN")
    if token:
        headers["Authorization"] = f"token {token}"
    page = query_params.get("page", 1)
    max_pages = int(os.getenv("GITHUB_MAX_PAGES", 20))
    per_page = int(query_params.get("per_page", 30))
    while page <= max_pages:
        query_params["page"] = page
        response = safe_get(
            BASE_GITHUB_SEARCH_URL, params=query_params, headers=headers
        )
        data = response.json()
        items = data.get("items", [])
        if not items:
            break
        all_items.extend(items)
        # GitHub limits unauthenticated requests to 10/min.
        # Sleep to avoid hitting the limit.
        time.sleep(6 if not token else 2)
        page += 1
    return all_items


def main() -> None:
    # --- GitHub fetching with pagination ---------------------------------
    all_repos: List[Dict] = []
    page = 1
    per_page = QUERY_PARAMS["per_page"]
import time

    # GitHub Search API is rate limited to 10 requests per minute for
    # unauthenticated requests.  We respect this limit by sleeping after
    # each batch of 10 requests.  If a token is provided in the
    # ``GITHUB_TOKEN`` environment variable the limit is higher; in that
    # case we ignore the sleep.
    rate_limit_sleep = 60
    use_token = bool(os.getenv("GITHUB_TOKEN"))
    request_counter = 0

    while True:
        QUERY_PARAMS["page"] = page
        repos = fetch_github_repos(QUERY_PARAMS)
        if not repos:
            break
        all_repos.extend(repos)
        # stop if we hit the maximum GitHub Search API cap of 1000 results
        if len(all_repos) >= 1000:
            print("Reached GitHub Search API limit of 1000 results.")
            break
        page += 1
        request_counter += 1
        if not use_token and request_counter % 10 == 0:
            # pause to avoid hitting the rate limit
            time.sleep(rate_limit_sleep)
    print(f"Fetched {len(all_repos)} repositories across {page-1} pages.")
    OUTPUT_PATH.write_text(json.dumps(all_repos, indent=2))
    print(f"Output written to {OUTPUT_PATH}")

    csv_path = Path("work/research/bug_bounty_list.csv")
    if not csv_path.exists():
        print(f"CSV file {csv_path} not found. Skipping merge.", file=sys.stderr)
        return
    with csv_path.open(newline="") as fh:
        reader = csv.DictReader(fh)
        # Build a set of (Program, Platform) to detect duplicates
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
        # Try to extract payout information from the repository README.
        def extract_payout_from_readme(repo: Dict) -> str:
            """Return the first monetary amount found in the README.

            The function is intentionally simple - it looks for a number
            that may contain thousand separators and may be prefixed with
            a dollar sign.  It returns the cleaned numeric string
            (e.g. ``"50000"``) or an empty string if no amount is found.
            """
            readme_url = (
                f"https://raw.githubusercontent.com/{repo['full_name']}/"
                f"{repo.get('default_branch', 'master')}/README.md"
            )
            try:
                r = requests.get(readme_url, timeout=10)
                r.raise_for_status()
                content = r.text
import re
                match = re.search(r"\$?([0-9]{3,}(?:[.,][0-9]{3})*)", content)
                if match:
                    return match.group(1).replace(",", "").replace(".", "")
            except Exception:
                pass
            return ""

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
        with csv_path.open("a", newline="") as fh:
            writer = csv.DictWriter(fh, fieldnames=fieldnames)
            for row in rows_to_append:
                writer.writerow(row)
        print(f"Appended {len(rows_to_append)} new rows to {csv_path}")
    else:
        print("No new GitHub repositories to append.")

    # --- HackerOne public API with optional auth ------------------------
        try:
            headers = {}
            hackerone_token = os.getenv("HACKERONE_TOKEN")
            if hackerone_token:
                # HackerOne expects a bearer token
                headers["Authorization"] = f"Bearer {hackerone_token}"
            # First fetch program list
            list_resp = safe_get(BASE_HACKERONE_URL, params={"per_page": 200}, headers=headers)
            list_data = list_resp.json()
            programs = list_data.get("data", [])
            print(f"Fetched {len(programs)} HackerOne programs.")
            rows_to_append_ho = []
            for program in programs:
                name = program.get("name")
                if not name or (name, "HackerOne") in existing:
                    continue
                program_id = program.get("id")
                # Fetch program details for payouts and severity
                detail_url = BASE_HACKERONE_PROGRAM_URL.format(program_id=program_id)
                detail_resp = safe_get(detail_url, headers=headers)
                detail = detail_resp.json()
                # Parse payouts - we look for the highest and average
                payouts = detail.get("payouts", [])
                max_payout = ""
                avg_payout = ""
                if payouts:
                    amounts = []
                    for p in payouts:
                        amt = p.get("amount")
                        if amt and isinstance(amt, int):
                            amounts.append(amt)
                    if amounts:
                        max_payout = str(max(amounts))
                        avg_payout = str(int(sum(amounts) / len(amounts)))
                # Minimum severity - look for the lowest level key
                severity_levels = detail.get("severity_levels", {})
                min_sev = ""
                if severity_levels:
                    # Assuming severity_levels keys are severity names
                    min_sev = min(severity_levels.keys())
                rows_to_append_ho.append(
                    {
                        "Program": name,
                        "Platform": "HackerOne",
                        "Max Payout": max_payout,
                        "Avg Payout": avg_payout,
                        "Minimum Severity": min_sev,
                        "Contact": detail.get("public_url", ""),
                    }
                )
            if rows_to_append_ho:
                with csv_path.open("a", newline="") as fh:
                    writer = csv.DictWriter(fh, fieldnames=fieldnames)
                    for row in rows_to_append_ho:
                        writer.writerow(row)
                print(f"Appended {len(rows_to_append_ho)} HackerOne rows to {csv_path}")
            else:
                print("No new HackerOne programs to append.")
        except Exception as exc:  # pragma: no cover - optional feature
            print(f"Failed to fetch HackerOne data: {exc}", file=sys.stderr)


if __name__ == "__main__":  # pragma: no cover
    main()