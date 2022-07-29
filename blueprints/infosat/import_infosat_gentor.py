import os
from utils import mailer
from pathlib import Path
from contpaqi.import_from_contipaq import ImportFromContpaqi
from utils.monitor_status_import import MonitorStatusImport


class ImportToInfosat:
    log: str = ""
    monitor: MonitorStatusImport = MonitorStatusImport()
    processid: str = ""

    def render_html(self,id:str) -> str:
        
        root_path = Path(__file__).parent
        file_path = os.path.join(root_path, "static","infosat_log_file.html")
        f = open(file_path,"r")
        html = f.read()
        f.close()
        html = html.replace("{{id}}",id)
        
        return html

    def run(self, logpath: str = "", startdate:str = None, enddate:str = None, userid: str = None, display:bool = True):

        if userid is None:
            self.monitor.userid = "System User"
        else:
            self.monitor.userid = userid
            
        process = self.monitor.create("Iniciando proceso")
        self.processid = process.id

        linkcontpaqi = ImportFromContpaqi()
        linkcontpaqi.processid = self.processid

        linkcontpaqi.startdate = startdate
        linkcontpaqi.enddate = enddate

        self.log += linkcontpaqi.run(display_console=display, userid=userid)

        logfile = os.path.join(logpath,self.processid + ".txt")

        f = open(logfile, "w")
        f.write(self.log)
        f.close()

        subject = "[EVENTLOG][INFOSAT] Se ha exportado CFDI's a Guardata"
        
        body = self.render_html(self.processid)
        mailer.send_email(subject=subject,bodyHtml=body,attachament=logfile)
        
        self.monitor.update(self.processid, 3, "Se ha completado y enviado por correo", True)

