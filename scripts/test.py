from set_root_path import set_root_path
set_root_path()
import app_config
from db import mysql_driver as db


db.config['database'] = app_config.HEALTHCHECK_DB


r = db.fetchall("select * from responses")

print(r)