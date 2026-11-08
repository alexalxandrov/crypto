import os
import sys
import sqlite3
import responses

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', '..')))

from main import fetch_public_repos
from utils import db_connect, create_tables, persist_repos


@responses.activate
def test_fetch_public_repos_and_persistence(tmp_path):
    # Mock GitHub organization repos endpoint
    repos = [
        {"full_name": "google/googletest", "url": "https://api.github.com/repos/google/googletest"},
        {"full_name": "google/guava", "url": "https://api.github.com/repos/google/guava"},
    ]
    responses.add(
        responses.GET,
        "https://api.github.com/orgs/google/repos",
        json=repos,
        status=200,
        match=[responses.matchers.query_param_matcher({"per_page": "100", "type": "public"})],
    )

    fetched = fetch_public_repos('google')
    assert fetched == repos

    db_path = tmp_path / "data.db"
    conn = db_connect(str(db_path))
    create_tables(conn)
    persist_repos(conn, fetched)
    cur = conn.execute("SELECT full_name FROM bug_bounty_repos")
    rows = cur.fetchall()
    assert [r["full_name"] for r in rows] == [repo["full_name"] for repo in repos]
    conn.close()
