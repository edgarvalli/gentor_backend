import pyodbc

class SqlResponse():
    error: bool = False
    message: str = ""
    data: dict = {}
    query: str = ""
    errorcode: str = ""

class SqlConnector:
    key = "contpaq"

    config = {
        "contpaq": {
            "server": '10.2.10.10\\COMPAC',
            "database": 'master',
            "username": 'sa',
            "password": '$ERVER2019soporte',
            "driver": "ODBC Driver 17 for SQL Server"
        },
        "guardata": {
            "server": '10.2.10.4\\SQLEXPRESS',
            "database": 'GUARDATA',
            "username": 'sa',
            "password": '$ERVER2019soporte',
            "driver": "ODBC Driver 17 for SQL Server"
        }
    }

    def __init__(self, driver: str = "guardata") -> None:
        self.key = driver

    def parse_sql_response(self, args: tuple = ()) -> SqlResponse:
        r = SqlResponse()
        
        if len(args) == 1:
            r.error = True
            r.message = args[0]
        else:
            r.error = True
            r.message = args[1]
            r.errorcode = args[0]
        


        return r

    def setdb(self, db=''):
        self.config[self.key]['database'] = db

    def connect(self) -> pyodbc.Cursor:
        c = self.config[self.key]
        connection_string = 'DRIVER={' + c['driver'] + '};SERVER='
        connection_string += f'{c["server"]};DATABASE={c["database"]};'
        connection_string += f'UID={c["username"]}; PWD={c["password"]}'
        cnxn = pyodbc.connect(connection_string)
        cursor = cnxn.cursor()
        return cursor

    def insert(self, model: str, data: dict) -> SqlResponse:
        r = SqlResponse()
        r.query = f"select Id from {model} order by CreatedDate desc"
        try:
            query = self.insert_query_builder(model,data)

            cursor = self.connect()
            cursor.execute(query)
            cursor.execute(r.query)
            uuid = cursor.fetchone()[0]
            cursor.commit()
            cursor.close()

            r.error = False
            r.data = {"id": uuid}

            return r

        except pyodbc.Error as ex:
            if len(ex.args) == 1:
                r.error = True
                r.message = ex.args[0]
            else:
                r.error = True
                r.message = ex.args[1]
                r.errorcode = ex.args[0]
            
            return r
    
    def update_by_uuid(self, uuid: str, model: str, data: dict):
        r = SqlResponse()
        r.query = self.update_query_builder(model=model, data=data, where=f"Id='{uuid}'")
        try:

            cursor = self.connect()
            cursor.execute(r.query)
            cursor.commit()
            cursor.close()

            r.error = False
            r.message = f"Se actualizo el registro {uuid}"

            return r

        except pyodbc.Error as ex:
            if len(ex.args) == 1:
                r.error = True
                r.message = ex.args[0]
            else:
                r.error = True
                r.message = ex.args[1]
                r.errorcode = ex.args[0]
            
            return r

    def commit(self, query="") -> SqlResponse:
        r = SqlResponse()
        r.query = query
        try:
            cursor = self.connect()
            cursor.execute(r.query)
            cursor.commit()
            cursor.close()

            r.error = False
            r.message = "Se executo correctamente"

            return r

        except pyodbc.Error as ex:
            if len(ex.args) == 1:
                r.error = True
                r.message = ex.args[0]
            else:
                r.error = True
                r.message = ex.args[1]
                r.errorcode = ex.args[0]
            
            return r

    def insert_query_builder(self, model:str, data: dict={}):
        cursor = self.connect()
        str_types = ["nvarchar", "datetime", "varchar", "text"]
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

    def update_query_builder(self, model: str, data: dict={}, where:str=''):
        cursor = self.connect()
        str_types = ["nvarchar", "datetime", "varchar"]
        keys = data.keys()
        columns: dict = cursor.columns(model)

        kv = ""

        for c in columns:
            if c.column_name in keys:
                k = c.column_name
                v = data[k]

                if c.type_name in str_types:
                    if v is None:
                        kv += f"{k}='',"
                    else:
                        kv += f"{k}='{v}',"
                else:
                    if v is None:
                        v = 0
                    kv += f"{k}={v},"

        kv = kv[:-1]

        query = f"UPDATE {model} SET {kv} WHERE {where}"
        return query

    def fetchall(self, query) -> SqlResponse:
        r = SqlResponse()
        r.query = query
        try:
            cursor = self.connect()
            cursor.execute(query)
            columns = [column[0] for column in cursor.description]
            results = []

            for row in cursor.fetchall():
                results.append(dict(zip(columns, row)))

            r.data = results

            return r
        except pyodbc.Error as ex:
            if len(ex.args) == 1:
                r.error = True
                r.message = ex.args[0]
            else:
                r.error = True
                r.message = ex.args[1]
                r.errorcode = ex.args[0]
            return r

    def fetchone(self, query) -> SqlResponse:
        r = SqlResponse()
        r.query = query
        try:
            cursor = self.connect()
            cursor.execute(query)
            columns = [column[0] for column in cursor.description]
            row = cursor.fetchone()

            if row is None:
                row = {}
            
            r.data = dict(zip(columns, row))

            return r
        except pyodbc.Error as ex:
            if len(ex.args) == 1:
                r.error = True
                r.message = ex.args[0]
            else:
                r.error = True
                r.message = ex.args[1]
                r.errorcode = ex.args[0]
            return r

    def insertmany(self, model="", data=[]) -> SqlResponse:
        r = SqlResponse()
        r.query = ""
        
        try:
            cursor = self.connect()
            for row in data:
                query = self.insert_query_builder(model, row)
                r.query += query + "\n"
                cursor.execute(query)

            cursor.commit()
            cursor.close()

            return r
        except pyodbc.Error as ex:
            if len(ex.args) == 1:
                r.error = True
                r.message = ex.args[0]
            else:
                r.error = True
                r.message = ex.args[1]
                r.errorcode = ex.args[0]
            return r

    def insertmany_cfdis(self, model="", data=[]):
        r = SqlResponse()
        try:
            cursor = self.connect()
            cursor.fast_executemany = True
            columns = []
            if len(data) > 0:
                item = data[0]
                for key in item.keys():
                    columns.append(key)

            for row in data:
                query = self.insert_query_builder(model, row)
                r.query += query + "\n"
                cursor.execute(query)

            cursor.commit()
            cursor.close()

            r.error = False
            r.message = "Datos importados"

            return r

        except pyodbc.Error as error:
            r.error = True
            r.message = error.args[1]
            uuid = row['UUID']

            if error.args[0] == '23000':
                r.message += f"\nEl UUID {uuid} ya existe"

            cursor.close()

            return r
