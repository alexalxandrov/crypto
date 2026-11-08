import os
import sys
import sqlite3
import responses

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', '..')))

from main import fetch_bounty_issues
from utils import db_connect, create_tables, persist_issues


@responses.activate
def test_fetch_bounty_issues_and_persistence(tmp_path):
    # Mock GitHub API returning two issues
    issues = [
        {"number": 1, "title": "Fix vulnerability"},
        {"number": 2, "title": "Add feature"},
    ]
    responses.add(
        responses.GET,
        "https://api.github.com/repos/pallets/flask/issues",
        json=issues,
        status=200,
        match=[responses.matchers.query_param_matcher({"labels": "bounty", "per_page": "30"})],
    )

    fetched = fetch_bounty_issues("pallets/flask", 2)
    assert fetched == issues

    db_path = tmp_path / "data.db"
    conn = db_connect(str(db_path))
    create_tables(conn)
    persist_issues(conn, "pallets/flask", fetched)
    cur = conn.execute("SELECT repo, number, title FROM paid_oss_issues")
    rows = cur.fetchall()
    assert len(rows) == 2
    assert rows[0]["repo"] == "pallets/flask"
    conn.close()
