import sys
from set_root_path import set_root_path
set_root_path()

import app_config
from db import mysql_driver as db
database = app_config.HEALTHCHECK_DB

#### CREATING DATABASE ###
print("Creating databases....")
r = db.commit(f"create database if not exists {database}")

if r.get('error'):
    print(r.get('message'))
    sys.exit()


query = {
    'users': """
        CREATE TABLE IF NOT EXISTS users (
            id int primary key auto_increment,
            email varchar(250) unique,
            name varchar(250),
            is_admin tinyint default 0,
            createddate timestamp default now(),
            INDEX index_mail (email)
        );
    """,
    'documents': """
        CREATE TABLE IF NOT EXISTS documents (
            id int primary key auto_increment,
            userid int,
            createddate timestamp default now()
        );
    """,
    'responses': """
        CREATE TABLE IF NOT EXISTS responses (
            id int primary key auto_increment,
            userid int,
            documentid int,
            code varchar(50),
            questioncode varchar(50),
            question varchar(1000),
            answer varchar(1000),
            extrainfo varchar(1000),
            createddate timestamp default now(),
            INDEX filters (userid,documentid,code,questioncode)
        );
    """
}

for k in query:
    print(f"Creating table {k}....")
    db.config['database'] = database
    r = db.commit(query.get(k))

    if r.get('error'):
        print(r.get('message'))
        sys.exit()

print("Finished")
