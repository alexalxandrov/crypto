import os
import sqlite3
import sys
import json
import responses

# Ensure parent directory is in PYTHONPATH for imports
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', '..')))

from main import fetch_upwork_jobs
from utils import db_connect, create_tables, persist_jobs


@responses.activate
def test_fetch_upwork_jobs_and_persistence(tmp_path):
    # Mock a tiny RSS feed with two job entries
    rss_content = """
    <rss>
      <channel>
        <item><title>Python Developer 1</title></item>
        <item><title>Python Developer 2</title></item>
      </channel>
    </rss>
    """
    rss_url = "https://www.upwork.com/ab/jobs/rss?search_query=python+developer"
    responses.add(responses.GET, rss_url, body=rss_content, status=200)

    jobs = fetch_upwork_jobs("python developer", 5)
    assert len(jobs) == 2
    assert jobs[0] == "Python Developer 1"
    assert jobs[1] == "Python Developer 2"

    # Persist the results
    db_path = tmp_path / "data.db"
    conn = db_connect(str(db_path))
    create_tables(conn)
    persist_jobs(conn, jobs)
    cur = conn.execute("SELECT title FROM freelance_jobs")
    rows = cur.fetchall()
    assert [r["title"] for r in rows] == jobs
    conn.close()
