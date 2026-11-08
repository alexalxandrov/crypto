import logging
from logging.handlers import RotatingFileHandler
import os

def get_logger(name: str) -> logging.Logger:
    """Return a logger with rotating file handler.

    Logs are stored in ``work/logs/{name}.log`` with size 5MB and 3 backups.
    """
    logger = logging.getLogger(name)
    if logger.handlers:
        return logger
    logger.setLevel(logging.INFO)
    # Store logs in the dedicated logs directory (work/logs). The logger is used from
    # various project folders, so we hard‑code the path relative to the repository
    # root instead of using the script's directory.
    log_dir = os.path.abspath(os.path.dirname(__file__))
    # Ensure the logs directory exists
    os.makedirs(log_dir, exist_ok=True)
    log_file = os.path.join(log_dir, f"{name}.log")
    handler = RotatingFileHandler(log_file, maxBytes=5*1024*1024, backupCount=3)
    formatter = logging.Formatter('%(asctime)s [%(levelname)s] %(name)s: %(message)s')
    handler.setFormatter(formatter)
    logger.addHandler(handler)
    return logger

