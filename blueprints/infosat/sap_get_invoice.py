import json
from sap.sapws import SapWS


ws = SapWS("dev")

inv = ws.read_invoice_by_id(module="customer", invoiceID="FABM-66")
f = open("response_by_id.json","w")
f.write(json.dumps(inv))
f.close()
