#!/usr/bin/env python3

from datetime import datetime
from flask import Flask

app = Flask(__name__)

@app.route("/Ji_Lu")
def hello_world():
    return f"Hello World from Ji Lu!"

@app.route("/datetime")
def get_datetime():
    now = datetime.now()
    current_time = now.strftime("%m/%d/%Y %H:%M:%S")
    return f"Current time: {current_time}"

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)
