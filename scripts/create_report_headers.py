from set_root_path import set_root_path
set_root_path()

import json
import db.mysql_driver as db


db.config['database'] = 'healthcheckdb'

query = """
    CREATE TABLE IF NOT EXISTS headers (
        id int primary key auto_increment,
        code varchar(50),
        header varchar(1000),
        createddate timestamp default now(),
        INDEX code (code)
    );
"""

r = db.commit(query)
print(r)

f = open('report_headers.json', 'r', encoding="utf-8")

headers = json.loads(f.read())
# for h in headers:
#     query = db.build_insert_query("headers", h)
#     print(query)

f.close()
db.insermany('headers', headers)
