import json, os, sys, subprocess
from pathlib import Path
from flask import Blueprint, send_file, request
from .utils.sql_server import SqlConnector
from .utils.monitor_status_import import MonitorStatusImport

monitor = MonitorStatusImport()

infosatapi = Blueprint("Api Infosat", __name__, url_prefix="/infosat/")


@infosatapi.route("/")
def infosat_index():
    return "Server running - Infosat"


@infosatapi.route("/dashboard")
def dashboard():
    fpath = Path(__file__).parent
    fpath = os.path.join(fpath, "static", "dashboard.html")

    return send_file(fpath)


@infosatapi.route("/log/<id>")
def get_log(id):
    fpath = Path(__file__).parent.parent.parent
    fpath = os.path.join(fpath, "logs", "infosat", f"{id}.txt")
    if os.path.exists(fpath):
        f = open(fpath, "r")
        content = f.read()
        f.close()
        return content
    else:
        return f"El archivo del log [{fpath}] no existe"


@infosatapi.route("/getstatus")
def get_status():
    return {
        "error": False,
        "data": monitor.status
    }


@infosatapi.route("/newprocess", methods=["POST","GET"])
def new_process():

    data: dict = request.json
    script_file = Path(__file__).parent
    script_file = os.path.join(script_file, "import_script.py")
    startdate = data.get("startdate",None)
    enddate = data.get("enddate",None)
    userid= data.get("userid", "Edgar Valli")

    # os.system(f"{sys.executable} {script_file} {startdate} {enddate} {userid} &")
    subprocess.Popen([sys.executable, script_file, startdate, enddate, userid], close_fds=True)
    return {
        "error": False,
        "data": "Working"
    }


@infosatapi.route("/fetch", methods=["GET"])
def fetch_process():
    db = SqlConnector()
    statuscode = request.args.get("statuscode", None)

    if statuscode is None:
        r = db.fetchall("select top 50 * from Procesos order by CreatedDate desc")
    else:
        r = db.fetchall(
            f"select top 50 * from Procesos where Status={statuscode} order by CreatedDate desc")
    data = []

    for item in r.data:
        item["StatusText"] = monitor.get_status_by_code(item["Status"])
        if item["CreatedDate"] is not None:
            item["CreatedDate"] = item["CreatedDate"].strftime(
                "%Y-%m-%d %H:%M:%S")

        if item["FinishedDate"] is not None:
            item["FinishedDate"] = item["FinishedDate"].strftime(
                "%Y-%m-%d %H:%M:%S")

        data.append(item)

    if r.error:
        return json.dumps(r)
    else:
        return {
            "error": False,
            "data": data
        }
