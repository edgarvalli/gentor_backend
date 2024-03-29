#import uuid
from werkzeug.middleware.proxy_fix import ProxyFix
from auth import _build_auth_code_flow, _load_cache, _save_cache, _build_msal_app, _get_token_from_cache
import requests
from flask import Flask, render_template, session, request, redirect, url_for
from flask_session import Session  # https://pythonhosted.org/Flask-Session
import msal
import app_config, pathlib

from blueprints.healthcheck import healthcheck
from blueprints.healthcheck.api import healthcheck_api
from blueprints.aad import aad
from blueprints.infosat.api import infosatapi
from blueprints.wallpapers import wallpaperapi

app = Flask(__name__, static_folder="static", static_url_path="")
app.config.from_object(app_config)
app.config['UPLOAD_FOLDER'] = '/temp'
# app.config['SERVER_NAME'] = 'app.gentor.com'
Session(app)

working_path = pathlib.Path(__file__).parent

app.register_blueprint(healthcheck,root_path = app.root_path)
app.register_blueprint(healthcheck_api,root_path = app.root_path)
app.register_blueprint(infosatapi)
app.register_blueprint(wallpaperapi)
app.register_blueprint(aad)


# This section is needed for url_for("foo", _external=True) to automatically
# generate http scheme when this sample is running on localhost,
# and to generate https scheme when it is deployed behind reversed proxy.
# See also https://flask.palletsprojects.com/en/1.0.x/deploying/wsgi-standalone/#proxy-setups
app.wsgi_app = ProxyFix(app.wsgi_app, x_proto=1, x_host=1)


@app.route("/")
def index():
    if not session.get("user"):
        return redirect(url_for("login"))
    return render_template('index.html', user=session["user"], version=msal.__version__)


@app.route("/login")
def login():
    # Technically we could use empty list [] as scopes to do just sign in,
    # here we choose to also collect end user consent upfront
    session["flow"] = _build_auth_code_flow(scopes=app_config.SCOPE)
    return render_template("login.html", auth_url=session["flow"]["auth_uri"], version=msal.__version__)


# Its absolute URL must match your app's redirect_uri set in AAD
@app.route(app_config.REDIRECT_PATH)
def authorized():
    try:
        cache = _load_cache()
        result = _build_msal_app(cache=cache).acquire_token_by_auth_code_flow(
            session.get("flow", {}), request.args)
        if "error" in result:
            return render_template("auth_error.html", result=result)
        session["user"] = result.get("id_token_claims")
        _save_cache(cache)
    except ValueError:  # Usually caused by CSRF
        pass  # Simply ignore them
    # return redirect(url_for("index"))
    url = session.get("app_redirect", '/')
    return redirect(url)


@app.route("/logout")
def logout():
    session.clear()  # Wipe out user and its token cache from session
    return redirect(  # Also logout from your tenant's web session
        app_config.AUTHORITY + "/oauth2/v2.0/logout" +
        "?post_logout_redirect_uri=" + url_for("index", _external=True))


@app.route("/graphcall")
def graphcall():
    token = _get_token_from_cache(app_config.SCOPE)
    if not token:
        return redirect(url_for("login"))
    graph_data = requests.get(  # Use token to call downstream service
        app_config.ENDPOINT,
        headers={'Authorization': 'Bearer ' + token['access_token']},
    ).json()
    return render_template('display.html', result=graph_data)


app.jinja_env.globals.update(
    _build_auth_code_flow=_build_auth_code_flow)  # Used in template

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5000)
