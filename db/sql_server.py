import pyodbc

server = '10.2.10.4\\SQLEXPRESS'
database = 'SAPLINK'
username = 'sa'
password = '$ERVER2019soporte'
driver = "ODBC Driver 17 for SQL Server"


def connect():
    connection_string = 'DRIVER={' + driver + '};SERVER='
    connection_string += f'{server};DATABASE={database}; UID={username}; PWD={password}'
    cnxn = pyodbc.connect(connection_string)
    cursor = cnxn.cursor()
    return cursor


def commit(query=""):
    try:
        cursor = connect()
        cursor.execute(query)
        cursor.commit()
        cursor.close()

        return {"error": False}

    except pyodbc.Error as ex:
        return {
            "error": True,
            "message": ex.args[1],
            "codeError": ex.args[0]
        }


def insert_query_builder(model, data={}):
    cursor = connect()
    str_types = ["nvarchar", "datetime", "varchar"]
    keys = data.keys()
    columns = cursor.columns(model)
    values = ""
    fields = ""

    for c in columns:
        if c.column_name in keys:
            fields += f"{c.column_name},"
            v = data[c.column_name]
            if c.type_name in str_types:
                if v is None:
                    v = ''
                values += f"'{v}',"
            else:
                if v is None:
                    v = 0
                values += f"{v},"

    keys = ",".join(keys)
    values = values[:-1]
    fields = fields[:-1]

    query = f"INSERT INTO {model} ({fields}) VALUES ({values})"
    return query


def fetchall(query):
    cursor = connect()
    cursor.execute(query)
    columns = [column[0] for column in cursor.description]
    results = []

    for row in cursor.fetchall():
        results.append(dict(zip(columns, row)))

    return results


def fetchone(query):
    cursor = connect()
    cursor.execute(query)
    r = cursor.fetchone()
    return r


def insert(model='', data={}):
    try:
        cursor = connect()
        query = insert_query_builder(model, data)
        cursor.execute(query)
        cursor.commit()

        return None

    except pyodbc.Error as error:
        return {
            'error': True,
            'code': error.args[0],
            'message': error.args[1]
        }


def insertmany(model="", data=[]):
    try:
        cursor = connect()
        for row in data:
            query = insert_query_builder(model, row)
            cursor.execute(query)

        cursor.commit()
        cursor.close()
        return {
            'error': False
        }
    except pyodbc.Error as error:
        return {
            'error': True,
            'code': error.args[0],
            'message': error.args[1]
        }


def insertmany_cfdis(model="", data=[]):
    msg = ''
    uuid = None
    try:
        cursor = connect()
        cursor.fast_executemany = True
        columns = []
        if len(data) > 0:
            item = data[0]
            for key in item.keys():
                columns.append(key)

        for row in data:
            query = insert_query_builder(model, row)
            cursor.execute(query)
            cursor.commit()
            uuid = row['UUID']
            msg = f"{uuid} guardado correctamente\n"

        cursor.close()

    except pyodbc.Error as error:
        msg = error.args[1]

        if error.args[0] == '23000':
            msg += f"El UUID {uuid} ya existe\n"
        else:
            msg += f"[{uuid}]: {msg}\n"
            cursor.close()

    return {
        "error": False,
        "message": msg
    }
