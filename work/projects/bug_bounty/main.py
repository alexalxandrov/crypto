import os
import sys
import requests
import json
import base64
from logs.log_config import get_logger
# Ensure utils from parent directory can be imported
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
# Import the utilities from the package rather than the top‑level
# ``utils`` module which may exist in the environment.
from work.projects.utils import persist_repos, db_connect, create_tables

logger = get_logger('bug_bounty')


def fetch_public_repos(org: str = 'github', per_page: int = 100) -> list:
    """Return a list of public repos for an organization using GitHub API."""
    url = f'https://api.github.com/orgs/{org}/repos'
    params = {'per_page': per_page, 'type': 'public'}
    headers = {'Accept': 'application/vnd.github.v3+json'}
    resp = requests.get(url, params=params, headers=headers)
    if resp.status_code != 200:
        logger.error(f'GitHub API returned {resp.status_code}')
        return []
    return resp.json()

if __name__ == '__main__':
    repos = fetch_public_repos('google')
    logger.info(f'Fetched {len(repos)} repos')
    # simple vulnerability pattern check: look for presence of known strings
    vuln_keywords = ['password', 'secret', 'api_key', 'access_token']
    vuln_repos = []
    for repo in repos:
        try:
            readme_url = repo['url'] + '/readme'
            r = requests.get(readme_url, headers={'Accept': 'application/vnd.github.v3+json'})
            if r.status_code == 200:
                content = r.json().get('content', '')
                if content:
                    decoded = base64.b64decode(content).decode('utf-8', errors='ignore')
                    if any(k in decoded.lower() for k in vuln_keywords):
                        vuln_repos.append(repo['full_name'])
        except Exception as e:
            logger.warning(f'Error processing {repo.get("full_name")}: {e}')
    logger.info(f'Potential vulnerable repos: {vuln_repos}')
    # Persist all fetched repos
    db_path = os.path.join(os.path.dirname(__file__), 'data.db')
    conn = db_connect(db_path)
    create_tables(conn)
    persist_repos(conn, repos)
    conn.close()
