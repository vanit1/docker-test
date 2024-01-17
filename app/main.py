from flask import Flask, render_template
import os

# Получите абсолютный путь к директории, содержащей ваш скрипт

app = Flask(__name__, template_folder="./templates")

@app.route('/')
def hello():
    return render_template("index/index.html")

if __name__ == '__main__':
    app.run(port=8080, host="0.0.0.0", debug=True)
