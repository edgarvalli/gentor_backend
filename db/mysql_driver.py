import mysql.connector as mysql

config = {
    'user': 'root',
    'password': 'p4ssw0rd',
    'host': 'localhost',
    'database': 'mysql'
}


def error_parse(error=mysql.Error):
    return {
        'error': True,
        'errorcode': error.args[0],
        'message': error.args[1]
    }


def fetchone(query="show databases"):
    try:
        cxn = mysql.connect(**config)
        c = cxn.cursor(dictionary=True)
        c.execute(query)
        r = c.fetchone()
        c.close()
        return {
            'error': False,
            'result': r
        }

    except mysql.Error as ex:
        return error_parse(ex)


def fetchall(query="show databases"):
    try:
        cxn = mysql.connect(**config)
        c = cxn.cursor(dictionary=True)
        c.execute(query)
        r = c.fetchall()
        c.close()
        return {
            'error': False,
            'result': r
        }

    except mysql.Error as ex:
        return error_parse(ex)


def commit(query="show databases"):
    try:
        cxn = mysql.connect(**config)
        c = cxn.cursor()
        c.execute(query)
        r = cxn.commit()
        c.close()
        return {
            'error': False,
            'result': r
        }

    except mysql.Error as ex:
        return error_parse(ex)


def build_insert_query(model="", fields={}):

    _fields = ""
    _values = ""
    _types = ['int']

    cxn = mysql.connect(**config)
    c = cxn.cursor(dictionary=True)
    c.execute(f"desc {model}")
    columns = c.fetchall()

    for col in columns:
        f = col.get("Field")
        if f in fields:
            _fields += f + ","
            if col.get("Type") in _types:
                _values += fields.get(f) + ','
            else:
                v = fields.get(f)
                _values += f"'{v}',"

    _fields = _fields[:-1]
    _values = _values[:-1]

    query = f"INSERT INTO {model} ({_fields}) VALUES ({_values});"
    return query


def insert(model="", data={}):
    try:
        query = build_insert_query(model, data)
        commit(query)
        r = fetchone(f"SELECT MAX(id) lastid FROM {model}")
        return r

    except mysql.Error as ex:
        return error_parse(ex)


def insermany(model="", rows=[]):
    try:
        totalrows = 0

        cxn = mysql.connect(**config)
        cursor = cxn.cursor()

        for r in rows:
            query = build_insert_query(model, r)
            cursor.execute(query)
            totalrows += 1

        cxn.commit()

        cxn.close()

        return {
            'error': False,
            'result': {'totalrows': totalrows}
        }

    except mysql.Error as ex:
        return error_parse(ex)
