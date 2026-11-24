import os
import pickle
import subprocess
import yaml
import requests
from flask import Flask, request, render_template_string

app = Flask(__name__)

# 1. Hardcoded Secret Key
app.secret_key = "super-secret-admin-key-12345"
app.graph_key = os.environ["AZURE_GRAPH_KEY"]

@app.route("/ping")
def ping():
    # 2. OS Command Injection
    host = request.args.get("host", "127.0.0.1")
    output = subprocess.check_output(f"ping -c 1 {host}", shell=True)
    return output

@app.route("/parse-yaml", methods=["POST"])
def parse_yaml():
    # 3. Arbitrary Code Execution via unsafe YAML loading
    data = yaml.load(request.data, Loader=yaml.Loader)
    return {"parsed": str(data)}

@app.route("/load-session", methods=["POST"])
def load_session():
    # 4. Insecure Deserialization via pickle
    session_data = pickle.loads(request.data)
    return {"user": session_data.get("username")}

@app.route("/greet")
def greet():
    # 5. Server-Side Template Injection (SSTI) / XSS
    name = request.args.get("name", "Guest")
    template = f"<h1>Welcome, {name}!</h1>"
    return render_template_string(template)

@app.route("/fetch")
def fetch():
    # 6. Disabled SSL Certificate Verification
    url = request.args.get("url", "https://example.com")
    resp = requests.get(url, verify=False)
    return resp.text

if __name__ == "__main__":
    # 7. Debug mode enabled in production code
    app.run(host="0.0.0.0", port=5000, debug=True)
