"""Simple logging configuration for the project.

This module provides a :func:`get_logger` helper that returns a
``logging.Logger`` instance configured with a ``StreamHandler`` that writes
to ``stderr``.  The original project expected a fully‑fledged logging
setup, but for the purposes of the test suite a minimal implementation
is sufficient.

The helper accepts a ``name`` argument so that individual components can
obtain loggers with distinct names.  Log level defaults to ``INFO``.
"""

from __future__ import annotations

import logging
from typing import Optional


def get_logger(name: str, level: int = logging.INFO) -> logging.Logger:
    """Return a logger configured for the given *name*.

    The logger uses a simple ``StreamHandler`` that outputs to ``stderr``.
    The format includes the log level and message, which is enough for
    debugging during test execution.
    """

    logger = logging.getLogger(name)
    if logger.handlers:
        # Logger already configured; avoid duplicate handlers
        return logger

    logger.setLevel(level)
    handler = logging.StreamHandler()
    formatter = logging.Formatter("[%(levelname)s] %(name)s: %(message)s")
    handler.setFormatter(formatter)
    logger.addHandler(handler)
    return logger


__all__ = ["get_logger"]
