import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Welcome! from Flask, NOW AVILABLE ON AWS EC2"