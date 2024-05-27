from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'This Flask app does nothing.'

if __name__ == '__main__':
    app.run(port=6969)
