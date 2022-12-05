from datetime import datetime
from .sql_server import SqlResponse
from .sql_server import SqlConnector

class MonitorResponse:
    id: str = ""
    error: bool = False
    message: str = ""

class MonitorStatusImport:

    status = ("No iniciado","Iniciado","En proceso","Finalizado","Finalizado con Error")

    def __init__(self, driver:str = "guardata", userid: str = None) -> None:
        self.db = SqlConnector()
        self.db.key = driver

        if userid is None or userid == "":
            self.userid = "System User"
        else:
            self.userid = userid

    def get_status_by_code(self, i: int) -> str:
        total = len(self.status)
        if i == total:
            return "No existe el estatus"
        else:
            return self.status[i]

    def parse_monitor_response(self, sqlresp: SqlResponse)-> MonitorResponse:
        r = MonitorResponse()
        if sqlresp.error:
            r.error = True
            r.message = f"[{sqlresp.errorcode}]: {sqlresp.message}\n [Query]: {sqlresp.query}"
        else:
            r.error = False
            r.id = sqlresp.data.get('id')
            r.message = "ok"
        return r

    def create(self, msg="") -> MonitorResponse:
        #codigo de estatus
        #0 -> No Iniciado
        #1 -> Iniciado
        #2 -> En proceso
        #3 -> Finzalizado
        #4 -> Finalizado y Error
        data = {
            "Status": 1,
            "Message": msg,
            "Error": 0,
            "CreatedBy": self.userid
        }


        result = self.db.insert(model="Procesos",data=data)

        return self.parse_monitor_response(result)


    def update(self, uuid: str, code: int, message: str, finished: bool = False) -> MonitorResponse:
        data = {
            "Status": code,
            "Message": message,
            "CreatedBy": self.userid
        }

        if finished:
            data["FinishedDate"] = datetime.today().strftime("%Y-%m-%d %H:%M:%S")

        r = self.db.update_by_uuid(uuid=uuid, model="Procesos", data=data)
                
        return self.parse_monitor_response(r)