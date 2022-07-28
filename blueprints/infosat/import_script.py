import os
from pathlib import Path
from import_infosat_gentor import ImportToInfosat

cwd = Path(__file__).parent.parent.parent

logpath = os.path.join(cwd,"logs","infosat")
if os.path.exists(logpath) == False:
    os.mkdir(logpath)

p = ImportToInfosat()

p.run(logpath=logpath)