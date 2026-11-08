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
    log_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
    os.makedirs(log_dir, exist_ok=True)
    log_file = os.path.join(log_dir, f"{name}.log")
    handler = RotatingFileHandler(log_file, maxBytes=5*1024*1024, backupCount=3)
    formatter = logging.Formatter('%(asctime)s [%(levelname)s] %(name)s: %(message)s')
    handler.setFormatter(formatter)
    logger.addHandler(handler)
    return logger

