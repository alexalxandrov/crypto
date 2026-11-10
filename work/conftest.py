import os
import sys

# Add the repository root to sys.path so that imports like
# ``import work.research.bug_bounty_fetcher`` resolve correctly during test
# collection.
repo_root = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
if repo_root not in sys.path:
    sys.path.insert(0, repo_root)