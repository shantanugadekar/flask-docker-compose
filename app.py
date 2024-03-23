from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://myuser:mypassword@db/mydb'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class User(db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(128), nullable=False)
    email = db.Column(db.String(128), nullable=False, unique=True)

@app.route('/')
def hello():
    return 'Hello!'

@app.route('/users')
def users():
    users_list = User.query.all()
    users_data = [{'id': user.id, 'name': user.name, 'email': user.email} for user in users_list]
    return jsonify(users_data)

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
