from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World!'

@app.route('/about')
def about():
   return "This is about page."

@app.route('/user/<name>')
def hello_user(name):
    if name == 'admin':
        return redirect('/adminPage')
    else:
        return redirect('/')

if __name__ == '__main__':
    app.run(debug=True)