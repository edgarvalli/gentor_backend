import os, base64
from utils import mailer
from pathlib import Path
from datetime import datetime
from contpaqi.import_from_contipaq import ImportFromContpaqi
from utils.monitor_status_import import MonitorStatusImport


class ImportToInfosat:
    log: str = ""
    monitor: MonitorStatusImport = MonitorStatusImport()
    processid: str = ""

    def render_html(self,id:str) -> str:
        
        f = open("static/infosat_log_file.html","r")
        html = f.read()
        f.close()

        f = open("static/email-bg.jpg","rb")
        img = base64.b64encode(f.read())
        f.close()
        html = html.replace("{{img}}", img.decode("utf-8"))
        html = html.replace("{{id}}",id)
        
        return html

    def run(self, logpath: str = "", startdate:str = None, enddate:str = None):

        process = self.monitor.create("Iniciando proceso")
        self.processid = process.id

        linkcontpaqi = ImportFromContpaqi()
        linkcontpaqi.processid = self.processid

        linkcontpaqi.startdate = startdate
        linkcontpaqi.enddate = enddate

        self.log += linkcontpaqi.run()

        logfile = os.path.join(logpath,self.processid + ".txt")
        print(logfile)
        f = open(logfile, "w")
        f.write(self.log)
        f.close()

        subject = "[EVENTLOG][INFOSAT] Se ha exportado CFDI's a Guardata"
        
        body = self.render_html(self.processid)
        mailer.send_email(subject=subject,bodyHtml=body,attachament=logfile)

