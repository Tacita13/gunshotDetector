from flask import Flask, render_template, jsonify
import db_output

app = Flask(__name__)

@app.route('/')
def index():
        return render_template('index.html')

@app.route('/dashboard')
def dashboard():
        d = db_output.db.query(db_output.latest_event)
        d[0]["longitude"] = str(d[0]["longitude"])
        d[0]["latitude"] = str(d[0]["latitude"])
        d[0]["soundlevel"] = str(d[0]["soundlevel"])
        return jsonify(d[0])

if __name__=='__main__':
        app.run(debug=True,  host='0.0.0.0', port=5000 )
