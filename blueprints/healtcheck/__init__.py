from flask import Blueprint, session, redirect, render_template
from auth import _build_auth_code_flow
import app_config

healthcheck = Blueprint('healcheck', __name__, url_prefix="/healthcheck")


@healthcheck.route("/")
def healthcheck_index():
    return render_template('healthcheck/index.html')


@healthcheck.route("/login")
def heatlcheck_login():
    # Technically we could use empty list [] as scopes to do just sign in,
    # here we choose to also collect end user consent upfront
    session['app_redirect'] = '/healthcheck/home'
    session["flow"] = _build_auth_code_flow(scopes=app_config.SCOPE)
    return redirect(session["flow"]["auth_uri"])


@healthcheck.route("/home")
def home():
    return render_template('healthcheck/home.html', name=session['user']['name'])

@healthcheck.route("/questions/<v>")
def questions(v):
    t = f'/healthcheck/{v}.html'
    return render_template(t)
