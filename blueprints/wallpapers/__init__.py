from flask import Blueprint, request, send_file
from os import path

wallpaperapi = Blueprint("wallpaper",__name__, url_prefix='/wallpaper')

secret = "Gmp(FVjwyC?X(ogxj5C;SV+!S;ZqgE?IHUB4VGDw"

@wallpaperapi.route('/')
def wIndex():
    return 'Hello World'


@wallpaperapi.route('/bg')
def bg():

    exts = ['jpg','png','jpeg']
    img = ''

    
    token = request.headers.get("token",None)

    if token is None:
        return "No esta autorizado"
    
    else:

        for ext in exts:
            
            img = f'static\\img\\wallpapers\\bg.{ext}'
            if path.exists(img):
                break
    

    return send_file(img)

@wallpaperapi.route('/ls')
def ls():

    exts = ['jpg','png','jpeg']
    img = ''

    
    token = request.headers.get("token",None)

    if token is None:
        return "No esta autorizado"
    
    else:

        for ext in exts:
            
            img = f'static\\img\\wallpapers\\ls.{ext}'
            if path.exists(img):
                break
    

    return send_file(img)