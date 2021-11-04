from flask import Blueprint, send_file, request
from lib import sql_server as db

guardata = Blueprint("guardata", __name__, url_prefix="/guardata")


@guardata.route("/app")
def guardata_app():
    return send_file("templates/guardata/app.html")


@guardata.route("/import", methods=['POST'])
def import_guardata():

    data = request.get_json()
    cfdis = data.get('data', [])
    model = data.get('model', '')

    result = db.insertmany_cfdis(model=model, data=cfdis)

    return result

@guardata.route("/update/cfdis", methods=["POST","GET"])
def update_cfdis():

    data = request.get_json()
    uuids = data.get("data")
    result = {
        "error": False,
        "message": ""
    }

    for uuid in uuids:
        model = data.get("model")
        query = f"UPDATE {model} SET Cancelado=1 WHERE UUID='{uuid}'"
        r = db.commit(query=query)
        if r["error"]:
            result = r
            break

    return result

@guardata.route("/api/fetch/<model>")
def fetch(model):
    data = db.fetchall(f"select * from {model}")
    return {
        "error": False,
        "data": data
    }
