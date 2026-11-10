import types
import pytest

import work.research.bug_bounty_fetcher as bf


class DummyResponse:
    def __init__(self, text="", json_data=None, status=200):
        self.text = text
        self._json = json_data or {}
        self.status_code = status

    def raise_for_status(self):
        if self.status_code >= 400:
            raise Exception(f"HTTP {self.status_code}")

    def json(self):
        return self._json


def test_extract_payout_from_readme_basic(monkeypatch):
    # Arrange: monkeypatch safe_get to return a README containing a payout
    def fake_safe_get(url, *_, **__):
        return DummyResponse(
            text="\n# Sample\nReward: $12,000 for critical bugs.\n\n", json_data={}
        )

    monkeypatch.setattr(bf, "safe_get", fake_safe_get)

    # Repository dict with full_name and default_branch
    repo = {"full_name": "owner/repo", "default_branch": "main"}

    # Act
    payout = bf.extract_payout_from_readme(repo)

    # Assert
    assert payout == "12000"


def test_extract_payout_from_readme_multiple(monkeypatch):
    def fake_safe_get(url, *_, **__):
        return DummyResponse(
            text="\nReward: USD 15,000; also $10.000.\n", json_data={}
        )

    monkeypatch.setattr(bf, "safe_get", fake_safe_get)
    repo = {"full_name": "owner/repo", "default_branch": "main"}
    payout = bf.extract_payout_from_readme(repo)
    assert payout == "15000"  # first amount
