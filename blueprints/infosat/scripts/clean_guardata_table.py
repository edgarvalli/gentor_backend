import pyodbc

sqlconfig = {
    "server": '10.2.10.4\\SQLEXPRESS',
    "database": 'GUARDATA',
    "username": 'sa',
    "password": '$ERVER2019soporte',
    "driver": "ODBC Driver 17 for SQL Server"
}


def connect() -> pyodbc.Cursor:
    c = sqlconfig
    connection_string = 'DRIVER={' + c['driver'] + '};SERVER='
    connection_string += f'{c["server"]};DATABASE={c["database"]};'
    connection_string += f'UID={c["username"]}; PWD={c["password"]}'
    cnxn = pyodbc.connect(connection_string)
    cursor = cnxn.cursor()
    return cursor

def fetchall(query):
    r = {
        "data": [],
        "error": False,
        "message": "",
        "errorcode":0
    }
    try:
        cursor = connect()
        cursor.execute(query)
        columns = [column[0] for column in cursor.description]
        results = []

        for row in cursor.fetchall():
            results.append(dict(zip(columns, row)))

        r["data"] = results

        return r
    except pyodbc.Error as ex:
        if len(ex.args) == 1:
            r["error"] = True
            r["message"] = ex.args[0]
        else:
            r["error"] = True
            r["message"] = ex.args[1]
            r["errorcode"] = ex.args[0]
            return r
cursor = connect()

cursor.execute("SELECT RFC FROM GUARDATA.dbo.Empresas")
empresas = cursor.fetchall()

for e in empresas:
    rfc = e[0]
    print(rfc)
    query = f"SELECT * FROM GUARDATA.dbo.{rfc} WHERE datalength(XML)=0;"
    docs = fetchall(query)

    if docs["error"]:
        print(docs["message"])
    else:
        for doc in docs["data"]:
            print(doc["UUID"] + "----" + doc["XML"])
            # query = f"delete from {rfc} where UUID like '{doc['UUID']}'"
            # cursor.execute(query)
            # cursor.commit()


cursor.close()