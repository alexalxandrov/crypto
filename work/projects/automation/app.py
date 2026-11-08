from flask import Flask, jsonify
from logs.log_config import get_logger

app = Flask(__name__)
logger = get_logger('automation')

@app.route('/')
def hello():
    logger.info("Received request at /")
    return jsonify(message='Hello from automation SaaS')

if __name__ == '__main__':
    # Run in debug mode for local testing
    app.run(host='0.0.0.0', port=5000, debug=True)
