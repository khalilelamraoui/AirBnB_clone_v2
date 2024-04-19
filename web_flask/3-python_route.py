#!/usr/bin/python3
""" Flask application """

from flask import Flask
app = Flask(__name__)


@app.route('/', strict_slashes=False)
def hello():
    """ say hello """
    return 'Hello HBNB!'


@app.route('/hbnb', strict_slashes=False)
def hbnb():
    """ show HBNB """
    return 'HBNB'


@app.route('/python/', strict_slashes=False)
@app.route('/python/<text>', strict_slashes=False)
def python(text='is_cool'):
    """ show variable text """
    return f'Python {text.replace("_", " ")}'


@app.route('/number/<int:n>')
def check_integer(n):
    return (f"{n} is an integer")


if __name__ == '__main__':
    app.run(debug=True)
    app.run(host='0.0.0.0', port=5000)
