from flask import Flask           # importing flask
flaskapp = Flask(__name__)             # creating flaskapp instance

@flaskapp.route("/")                   # defining end point /
def hello_world():                      # calling method hello_world
    return "Hello World! Welcome to my Flask app. Let's dockerize!"         # returns the content in " "
if __name__ == "__main__":        # for running python flaskapp.py
    flaskapp.run(host='0.0.0.0',port=5000)                     # run the flask app 
