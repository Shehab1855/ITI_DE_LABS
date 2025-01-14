from flask import Flask ,  render_template , jsonify ,request 

app = Flask(__name__)

@app.route('/home')
def home_page():
    return  "Welcome to the Flask Lab!"

@app.route('/greet/<YourName>')
def Greeting_page(YourName):
    return  f"Hello, {YourName}! Welcome to the Flask Lab"

@app.route("/Form")
def Form_page():
    return  render_template("html_flask_lab4-1.HTML")


@app.route('/api/data')
def api_data():
    data = {
        "age": 25,
        "title": "Flask "
    }
    return jsonify(data)
if __name__ == '__main__':
    app.run(port=8082,debug=True)
     
