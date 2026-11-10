"""Compatibility shim used by the automation tests.

The test suite imports :mod:`app` from the top level of the
``work/projects`` package.  The real application code lives in
``work/projects/automation/app.py``.

To keep the test import working we re‑export the :data:`app` instance
from the automation module.
"""

from automation.app import app  # type: ignore