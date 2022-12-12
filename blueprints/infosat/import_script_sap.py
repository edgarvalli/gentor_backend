import datetime
from sap.app import SapImport

def last_day_of_month(any_day):
    # The day 28 exists in every month. 4 days later, it's always next month
    next_month = any_day.replace(day=28) + datetime.timedelta(days=4)
    # subtracting the number of the current day brings us back one month
    return next_month - datetime.timedelta(days=next_month.day)

year = 2020
month = 9

log = "Iniciando proceso de sincronización SAP - Infosat\n"
print(log)
while month <= 12:

    nmonth = "{:02d}".format(month)
    startdate = f"{year}-{nmonth}-01"
    enddate = last_day_of_month(datetime.date(year, month, 1)).strftime("%Y-%m-%d")

    print(f"Obteniendo facturas del rango {startdate} al {enddate}")
    
    sapimport = SapImport(startdate=startdate, enddate=enddate)
    log += sapimport.run()

    # print(log)

    if year == 2022 and month == 12:
        break

    if month == 12:
        year += 1
        month = 1
    else:
        month += 1

# sapimport = SapImport(startdate='2017-01-01',enddate='2022-12-31')

# print(sapimport.startdate)
# log = sapimport.run()
# f = open("log.txt", "w")
# f.write(log)
# f.close()
# print("Finish")