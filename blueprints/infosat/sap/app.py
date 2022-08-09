import base64,re
from .sapws import SapWS

def run():
    sap = SapWS("dev")

    response = sap.get_customer_invoice_by_date("2022-04-01", "2022-08-31")
    if response["error"]:
        print(response["message"])
    else:
        customer_invoices = response["soap-env:Envelope"]["soap-env:Body"]
        customer_invoices = customer_invoices["n0:Z_CustInvoiceQueryByElementsSimpleByConfirmation_sync"]
        if "Z_CustInvoice" in customer_invoices:
            customer_invoices = customer_invoices["Z_CustInvoice"]
        else:
            customer_invoices = []

        print(len(customer_invoices))
        i = 0
        for inv in customer_invoices:
            if "base64XML" in inv:
                print(inv["SAP_UUID"] + ": " + inv["empresaID"])

                fecha = inv["facturaFecha"]
                serie=inv["facturaID"]
                serie = re.findall(r"[a-zA-Z]",serie)
                serie = "".join(serie)

                folio = inv["facturaID"]
                folio = re.findall(f"[0-9]", folio)
                folio = "".join(folio)

                xml = inv["base64XML"]
                # xml = base64.b64decode(xml)

                print(folio)
                i += 1
        
        print(i)