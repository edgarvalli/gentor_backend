from flask import Blueprint, session, request
from functools import wraps
from db import mysql_driver as db

healthcheck_api = Blueprint('api', __name__, url_prefix='/api/healthcheck/')

def is_auth(f):
    @wraps(f)
    def run(*args, **kvargs):
        if not session.get('user'):
            return {
                "error": True,
                "message": "Usuario no autorizado"
            }
        else:
            f(*args, **kvargs)
    return run

@healthcheck_api.route('/<model>/')
def get(model):

    fields = request.args.get('$fields', '*')
    # where = request.args.get('$where', None)
    orderby = request.args.get('$orderby', 'id')
    limit = request.args.get('$limit', 50)
    skip = request.args.get('$skip', 0)

    

    query = f"select {fields} from {model} order by {orderby} desc limit {skip},{limit}"

    r = db.fetchall(query)
    
    return r