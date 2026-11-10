import os
import sys
import json

# The test expects to import the ``app`` module from the automation
# sub‑project.  The original path mistakenly added the top level ``work``
# directory, which does not contain an ``app`` module, leading to a
# ``ModuleNotFoundError``.  We instead add the directory that actually
# hosts the module – ``work/projects/automation``.
# Add both the automation package directory and the project root so that
# imports such as ``app`` and ``logs.log_config`` resolve correctly.
root_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..'))
sys.path.append(root_dir)
sys.path.append(os.path.join(root_dir, 'automation'))

from app import app


def test_hello_endpoint():
    client = app.test_client()
    resp = client.get("/")
    assert resp.status_code == 200
    data = json.loads(resp.data)
    assert data["message"] == "Hello from automation SaaS"
