from flask import Flask, render_template, jsonify
import db_output
import json
from datetime import date, datetime

app = Flask(__name__)

def json_serial(obj):

        if isinstance(obj, (datetime,date)):
                return obj.isoformat();

@app.route('/')
def dashboard():
        d = db_output.db.query(db_output.latest_event)
        d[0]["longitude"] = str(d[0]["longitude"])
        d[0]["latitude"] = str(d[0]["latitude"])
        d[0]["soundlevel"] = str(d[0]["soundlevel"])
        res = json.dumps(d[0], default=json_serial)
        return render_template('index.html', summary=res)

if __name__=='__main__':
        app.run(debug=True,  host='0.0.0.0', port=5000 )
