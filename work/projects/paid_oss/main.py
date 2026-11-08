import os
import sys
import requests
import json
import base64
from logs.log_config import get_logger
# Ensure utils from parent directory can be imported
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from utils import persist_issues, db_connect, create_tables

logger = get_logger('paid_oss')

# simple search for GitHub issues labeled 'bounty' in popular repos

def fetch_bounty_issues(repo: str, per_page: int = 30) -> list:
    url = f"https://api.github.com/repos/{repo}/issues"
    params = {'labels': 'bounty', 'per_page': per_page}
    headers = {'Accept': 'application/vnd.github.v3+json'}
    resp = requests.get(url, params=params, headers=headers)
    if resp.status_code != 200:
        logger.error(f"GitHub issues API error for {repo}: {resp.status_code}")
        return []
    return resp.json()

if __name__ == '__main__':
    # example popular repo
    repos = ['pallets/flask', 'django/django']
    for r in repos:
        issues = fetch_bounty_issues(r, 5)
        logger.info(f"{len(issues)} bounty issues found in {r}")
        for issue in issues:
            logger.info(f"#{issue.get('number')} {issue.get('title')}")
        # Persist issues
        db_path = os.path.join(os.path.dirname(__file__), 'data.db')
        conn = db_connect(db_path)
        create_tables(conn)
        persist_issues(conn, r, issues)
        conn.close()
