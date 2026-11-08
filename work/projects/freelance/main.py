import os
import sys
import requests
import json
from logs.log_config import get_logger
# Ensure utils from parent directory can be imported
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from utils import persist_jobs, db_connect, create_tables

logger = get_logger('freelance')

# simple Upwork job feed scraper (public RSS feed)
# Upwork does not provide a public API without authentication; we use a public RSS feed for illustration.

def fetch_upwork_jobs(search_query="python developer", max_results=10) -> list:
    rss_url = f'https://www.upwork.com/ab/jobs/rss?search_query={search_query.replace(" ", "+")}'
    try:
        resp = requests.get(rss_url)
        resp.raise_for_status()
    except Exception as e:
        logger.error(f'Failed to fetch Upwork RSS: {e}')
        return []
    items = []
    for line in resp.text.split('\n'):
        if '<title>' in line:
            title = line.replace('<title>', '').replace('</title>', '').strip()
            if title and not title.startswith('Upwork'):
                items.append(title)
    return items[:max_results]

if __name__ == '__main__':
    jobs = fetch_upwork_jobs('python developer', 5)
    logger.info(f'Fetched {len(jobs)} jobs: {jobs}')
    # Persist results
    db_path = os.path.join(os.path.dirname(__file__), 'data.db')
    conn = db_connect(db_path)
    create_tables(conn)
    persist_jobs(conn, jobs)
    conn.close()
