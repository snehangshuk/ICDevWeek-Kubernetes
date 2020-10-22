from flask import Flask, request
import subprocess

app = Flask(__name__)
@app.route("/")
def hello():
    '''return (
        "Hello from Kubernetes! I am running on {ip}, and my name is {name}."
        .format(ip=request.remote_addr, name=subprocess.check_output('hostname').decode('utf8'))
    )'''
    return "Hello from Kubernetes!"

if __name__ == "__main__":
    app.run(host='0.0.0.0')
