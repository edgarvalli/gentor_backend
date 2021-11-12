from flask import Blueprint, session, redirect, render_template, request
from auth import _build_auth_code_flow
from db import mysql_driver as db
import app_config

db.config['database'] = app_config.HEALTHCHECK_DB

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
    email = session['user']['preferred_username']
    r = db.fetchone(f"select * from users where email='{email}'")
    if r.get('result') is None:
        user = {
            'name': session['user']['name'],
            'email': email
        }
        r2 = db.insert('users', user)
        if r2.get('error') is False:
            session['user']['db_user_id'] = r2.get('result')['lastid']
    else:
        session['user']['db_user_id'] = r.get('result')['id']

    session['document_open'] = True
    return render_template('healthcheck/home.html', name=session['user']['name'])


@healthcheck.route("/gratefulness")
def gratefulness():
    if session['document_open'] is True:
        return redirect('/helthcheck/home')
    return render_template('healthcheck/gratefulness.html')


@healthcheck.route("/questions/<v>")
def questions(v):
    try:
        print(session['document_open'])
        if session['document_open'] is False:
            return redirect('/healthcheck/home')
        t = f'healthcheck/{v}.html'
        t = render_template(t, view=v)
        return t
    except:
        return render_template("healthcheck/error.html")


@healthcheck.route('/responses/save', methods=['POST'])
def responses_save():

    if session['document_open'] is True:
        data = request.get_json().get('data')
        answers = []
        userid = session['user']['db_user_id']
        r = db.insert('documents', {'userid': userid})
        docid = r.get('result')['lastid']
        for k in data.keys():
            rows = data[k]
            for r in rows:
                r['documentid'] = docid
                r['userid'] = userid
                answers.append(r)

        session['document_open'] =  False
        return db.insermany('responses', answers)
    
    return {
        'error': True,
        'message': 'Documento ya guardado'
    }
