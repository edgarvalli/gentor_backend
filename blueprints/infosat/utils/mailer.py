import smtplib
from email import encoders
from email.mime.base import MIMEBase
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart


def send_email(subject='', bodyHtml='', attachament=None):
    sender = "gentor.ti.soporte@gmail.com"
    password = "ceznatsfycavpymo"
    to = "evalli@gentor.com,acastillo@gentor.com"

    message = MIMEMultipart('Backup')
    message['Subject'] = subject
    message['From'] = sender
    message['To'] = f"Notificacion SAP-Guardata <{to}>"

    part = MIMEText(bodyHtml, 'html')
    message.attach(part)

    if attachament is not None:
        filename = attachament.split('\\')
        filename = filename[len(filename) - 1]
        with open(attachament, 'rb') as f:
            part = MIMEBase("application", "octet-stream")
            part.set_payload(f.read())

        encoders.encode_base64(part)

        part.add_header(
            "Content-Disposition",
            f"attachment; filename= {filename}",
        )

        message.attach(part)

    server = smtplib.SMTP(host="smtp.gmail.com", port=587)
    server.ehlo()
    server.starttls()
    server.login(sender, password)
    server.sendmail(sender, to, message.as_string())
    server.quit()