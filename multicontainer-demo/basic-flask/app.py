from flask import Flask, render_template, request
import subprocess

app = Flask(__name__)

@app.route("/")
def index():
    return render_template('index.html', ip_addr=request.remote_addr, host_name=subprocess.check_output('hostname').decode('utf8'))

if __name__ == "__main__":
    app.run(host='0.0.0.0')
