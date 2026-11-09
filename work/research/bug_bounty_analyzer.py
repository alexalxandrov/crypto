"""Simple analyzer for bug bounty programs.

This script reads :file:`bug_bounty_list.csv` and prints a table of programs
sorted by ``Max Payout``.  It is intended as a quick reference when
starting bug‑bounty research and can be extended to query APIs, filter by
severity, etc.

Usage:

    python bug_bounty_analyzer.py

The script is intentionally lightweight and has no external dependencies.
"""

from __future__ import annotations

import csv
import pathlib
from typing import List, Dict

# Updated to point to the actual CSV location within the repo
CSV_PATH = pathlib.Path("work/research/bug_bounty_list.csv")


def load_programs(csv_path: pathlib.Path) -> List[Dict[str, str]]:
    """Load programs from a CSV file.

    Returns a list of dictionaries keyed by the header names.
    """
    with csv_path.open(newline="") as fh:
        reader = csv.DictReader(fh)
        return list(reader)


def sort_by_max_payout(programs: List[Dict[str, str]]) -> List[Dict[str, str]]:
    """Return programs sorted by descending ``Max Payout`` (numeric)."""
    return sorted(
        programs,
        key=lambda p: int(p["Max Payout"] or 0),
        reverse=True,
    )


def main() -> None:
    programs = load_programs(CSV_PATH)
    programs = sort_by_max_payout(programs)
    print("Program,Platform,Max Payout,Avg Payout,Minimum Severity,Contact")
    for p in programs:
        print(
            ",".join(
                [p["Program"], p["Platform"], p["Max Payout"], p["Avg Payout"], p["Minimum Severity"], p["Contact"]]
            )
        )


if __name__ == "__main__":
    main()