from pathlib import Path
import importlib.util, sys,os

cwd = Path(__file__).parent.parent
# specify the module that needs to be 
# imported relative to the path of the 
# module
spec=importlib.util.spec_from_file_location(os.path.join(cwd, "contpaqi"))
  
# creates a new module based on spec
foo = importlib.util.module_from_spec(spec)
  
# executes the module in its own namespace
# when a module is imported or reloaded.
spec.loader.exec_module(foo)

foo.insert_from_contpqi