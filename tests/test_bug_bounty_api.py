"""Tests for the FastAPI bug‑bounty endpoint.

The tests monkey‑patch the functions that communicate with external
services so the API can be exercised deterministically without hitting the
GitHub API during CI.  The endpoint is expected to return a JSON payload
with the keys ``page``, ``count`` and ``bounties`` where ``bounties`` is a
list of objects each containing ``name``, ``payout`` and ``url``.
"""

from fastapi.testclient import TestClient
import pytest

# Import the application module.  The FastAPI instance is defined as ``app``
# in bugbounty_utils.app.
from bugbounty_utils import app as app_module


@pytest.fixture
def client(monkeypatch):
    """Create a TestClient with the FastAPI app.

    The fixture monkey‑patches the two helper functions used by the API so
    that no network calls are performed.  It returns a :class:`TestClient`
    ready for use in tests.
    """

    # Define a static list of repository dictionaries that mimic the shape
    # of the real GitHub response.
    sample_repos = [
        {
            "full_name": "alice/project-alpha",
            "html_url": "https://github.com/alice/project-alpha",
            "default_branch": "main",
        },
        {
            "full_name": "bob/project-beta",
            "html_url": "https://github.com/bob/project-beta",
            "default_branch": "main",
        },
    ]

    # Monkey‑patch the repository fetcher to return the sample list.
    monkeypatch.setattr(app_module, "fetch_github_repos", lambda qp: sample_repos)

    # Monkey‑patch payout extraction to return a deterministic value.
    monkeypatch.setattr(app_module, "extract_payout_from_readme", lambda repo: "5000")

    return TestClient(app_module.app)


def test_bounties_endpoint_returns_expected_structure(client):
    """The endpoint should return a paginated list of bounties."""

    response = client.get("/bounties?page=1")
    assert response.status_code == 200
    data = response.json()
    # Verify top‑level structure
    assert isinstance(data, dict)
    assert data["page"] == 1
    assert data["count"] == 2
    assert isinstance(data["bounties"], list)
    assert len(data["bounties"]) == 2
    # Verify each bounty contains the expected keys and values.
    for bounty, repo in zip(data["bounties"], ["alice/project-alpha", "bob/project-beta"]):
        assert bounty["name"] == repo
        assert bounty["payout"] == "5000"
        assert bounty["url"] in (
            "https://github.com/alice/project-alpha",
            "https://github.com/bob/project-beta",
        )


def test_default_page_parameter(client):
    """When the ``page`` query parameter is omitted, the default page ``1`` is used."""

    response = client.get("/bounties")
    assert response.status_code == 200
    data = response.json()
    assert data["page"] == 1
    assert data["count"] == 2