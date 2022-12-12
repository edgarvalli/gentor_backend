import os,sys
from pathlib import Path
from sap.app import SapImport
from dateutil.parser import parse
from import_infosat_gentor import ImportToInfosat

def is_date(string, fuzzy=False):
    """
    Return whether the string can be interpreted as a date.

    :param string: str, string to check for date
    :param fuzzy: bool, ignore unknown tokens in string if True
    """
    try: 
        parse(string, fuzzy=fuzzy)
        return True

    except ValueError:
        return False

total_args = len(sys.argv)
cwd = Path(__file__).parent.parent.parent
logpath = os.path.join(cwd,"logs","infosat")

if os.path.exists(logpath) == False:
    os.mkdir(logpath)

p = ImportToInfosat()

if total_args == 1:
    p.run(logpath=logpath)
    
elif total_args == 2:
    print("Debes definir al menos 2 fechas")
    exit()
    
else:
    
    startdate = sys.argv[1]
    enddate = sys.argv[2]
    userid = sys.argv[3]
    
    if is_date(startdate) == False:
        print(f"[{startdate}] No es una fecha valida")
        exit()
    
    if is_date(enddate) == False:
        print(f"[{enddate}] No es una fecha valida")
        exit()
    
    p.run(logpath=logpath, startdate=startdate, enddate=enddate, userid=userid, display=False)
    sapimport = SapImport(startdate=startdate,enddate=enddate)
    sapimport.run()
    