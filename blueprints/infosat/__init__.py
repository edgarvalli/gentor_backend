from flask import Blueprint
from . import config

working_path = ""

infosatapi = Blueprint("Api Infosat", __name__, url_prefix="/infosat/")

config.WORKING_PATH = working_path

@infosatapi.route("/")
def infosat_index():
    print(working_path)
    return "Server running"