import sys
import requests
from requests.auth import HTTPBasicAuth

xml = """
    <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:glob="http://sap.com/xi/SAPGlobal20/Global">
        <soapenv:Header/>
        <soapenv:Body>
            <glob:CustomerInvoiceByElementsQuery_sync>
                <!--Optional:-->
                <CustomerInvoiceSelectionByElements>
                    <!--Zero or more repetitions:-->
                    <SelectionByDate>
                    <!--Optional:-->
                    <InclusionExclusionCode>I</InclusionExclusionCode>
                    <!--Optional:-->
                    <IntervalBoundaryTypeCode>3</IntervalBoundaryTypeCode>
                    <!--Optional:-->
                    <LowerBoundaryCustomerInvoiceDate>2020-01-01</LowerBoundaryCustomerInvoiceDate>
                    <!--Optional:-->
                    <UpperBoundaryCustomerInvoiceDate>2022-12-31</UpperBoundaryCustomerInvoiceDate>
                    </SelectionByDate>
                </CustomerInvoiceSelectionByElements>
                <!--Optional:-->
                <ProcessingConditions>
                    <!--Optional:-->
                    <QueryHitsMaximumNumberValue>10000</QueryHitsMaximumNumberValue>
                    <QueryHitsUnlimitedIndicator>false</QueryHitsUnlimitedIndicator>
                </ProcessingConditions>
            </glob:CustomerInvoiceByElementsQuery_sync>
        </soapenv:Body>
        </soapenv:Envelope>
"""

endpoint = "https://my353505.sapbydesign.com/sap/bc/srt/scs/sap/querycustomerinvoicein?sap-vhost=my353505.sapbydesign.com"
username = "_FACTURASCLI"
password = "G3nt0r01"

headers = {
    "Content-Type": "text/xml; charset=utf-8"
}
base_auth: HTTPBasicAuth = HTTPBasicAuth(username=username, password=password)
r = requests.post(endpoint,data=xml, headers=headers, auth=base_auth)

print(r.text)