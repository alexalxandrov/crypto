"""Microservice API Scraper package.

This file allows the project directory to be treated as a Python package so
that relative imports such as ``from .stripe_integration import router`` work
when the module is loaded via ``importlib.spec_from_file_location`` in the
tests.  The file intentionally contains no code.
"""