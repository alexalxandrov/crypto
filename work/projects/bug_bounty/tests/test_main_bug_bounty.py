import os
import sys
import pandas as pd
import work.research.bug_bounty_fetcher as bug_bounty_fetcher

# Ensure repository root is on sys.path for imports
repo_root = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..', '..'))
os.chdir(repo_root)
sys.path.insert(0, os.path.join(repo_root, 'work'))
sys.path.insert(0, os.path.join(repo_root, 'work', 'research'))

def test_bug_bounty_fetcher():
    df, _ = bug_bounty_fetcher.fetch_all()
    assert not df.empty
    assert isinstance(df, pd.DataFrame)
    # The dataset should have at least 200 entries if the fetch is successful
    assert len(df) >= 200