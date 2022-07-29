import json
from flask import Blueprint
from . import config
from .utils.sql_server import SqlConnector

working_path = ""

infosatapi = Blueprint("Api Infosat", __name__, url_prefix="/infosat/")

config.WORKING_PATH = working_path

@infosatapi.route("/")
def infosat_index():
    print(working_path)
    return "Server running"

@infosatapi.route("/fetch",methods=["GET","POST"])
def fetch_process():
    db = SqlConnector()
    r = db.fetchall("select * from Procesos")
    if r.error:
        return json.dumps(r)
    else:
        return {
            "error": False,
            "data": r.data
        }