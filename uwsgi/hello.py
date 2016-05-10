from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return '<h1>Hey there!  From the KP CSG DevOps Team led by our superb leader Alex Kvyat</h1><script>alert("Hello World!")</script>'

if __name__ == "__main__":
    app.run()
