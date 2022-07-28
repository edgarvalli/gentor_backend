from flask import Blueprint, session, redirect, render_template, send_file
from auth import _build_auth_code_flow, _get_token_from_cache
from functools import wraps
import app_config
import requests


aad = Blueprint('aad', __name__, url_prefix='/aad')


def search_users(filter=None):
    headers = {
        'Content-Type': 'Application/Json',
        'Authorization': 'Bearer ' + _get_token_from_cache(app_config.SCOPE)['access_token']
    }
    uri = "https://graph.microsoft.com/beta/users?&$filter=(userType eq 'Member')"
    
    if filter is not None:
        uri += "and" + filter

    print(uri)
    users = requests.get(uri, headers=headers)
    users = users.json()
    return users


def is_auth(f):
    @wraps(f)
    def run(*args, **kvargs):
        if not session.get('user'):
            return redirect('/aad/loginerror')
        else:
            return f(*args, **kvargs)
    return run


@aad.route('/')
@is_auth
def add_index():
    return "aad Index"


@aad.route("/login")
def aad_login():
    # Technically we could use empty list [] as scopes to do just sign in,
    # here we choose to also collect end user consent upfront
    session['app_redirect'] = '/aad/users'
    session["flow"] = _build_auth_code_flow(scopes=app_config.SCOPE)

    return redirect(session["flow"]["auth_uri"])


@aad.route('/loginerror')
def aad_loginerror():
    return "<a href='/aad/login'>No esta autenticado dar click aqui para iniciar sesion</a>"


@aad.route('/users')
@is_auth
def add_users():
    _filter = f"(startsWith(displayName,'edgar'))"
    _filter += f"or startsWith(userPrincipalName,'edgar')"

    users = search_users(filter=_filter)
    # return render_template('aad/users.html', users=users['value'])
    return send_file('templates/aad/users.html')


@aad.route('/get/users/<query>')
@aad.route('/get/users/')
def aad_get_users(query=None):

    if query is None:
        print(query)
        users = search_users()
    else:
        _filter = f"(startsWith(displayName,'{query}'))"
        _filter += f"or startsWith(userPrincipalName,'{query}')"

        users = search_users(filter=_filter)
    
    return users
