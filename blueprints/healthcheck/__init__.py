from flask import Blueprint, session, redirect, render_template, request
from flask.helpers import send_file, send_from_directory
from auth import _build_auth_code_flow, _get_token_from_cache
from db import mysql_driver as db
from functools import wraps
import app_config
import xlsxwriter
import os

db.config['database'] = app_config.HEALTHCHECK_DB

healthcheck = Blueprint('healcheck', __name__, url_prefix="/healthcheck")


def get_users_from_db():
    users = db.fetchall("select * from users")
    if users['error']:
        users = []
    else:
        users = users['result']

    return users


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
    session['mstoken'] = _get_token_from_cache(app_config.SCOPE)[
        'access_token']
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

        session['document_open'] = False
        user = session['user']['preferred_username']
        r = db.insermany('responses', answers)
        r1 = db.commit(
            f"update users set total_documents=total_documents + 1 where email='{user}'")
        print(r1)
        return r

    return {
        'error': True,
        'message': 'Documento ya guardado'
    }


@healthcheck.route('/loginadmin')
def login_admin():
    session['app_redirect'] = '/healthcheck/admin'
    session["flow"] = _build_auth_code_flow(scopes=app_config.SCOPE)
    return redirect(session["flow"]["auth_uri"])


def is_auth_admin(f):
    @wraps(f)
    def run(*args, **kvargs):
        if not session.get('user'):
            return redirect('/healthcheck/loginadmin')
        else:
            return f(*args, **kvargs)
    return run


@healthcheck.route('/admin')
@is_auth_admin
def admin_route():
    session['mstoken'] = _get_token_from_cache(app_config.SCOPE)[
        'access_token']
    user = session['user']
    query = f"select * from users where email='{user['preferred_username']}' and is_admin=1"
    u = db.fetchone(query=query)
    if u['result'] is None:
        return f"<div>El usuario {user['preferred_username']} no autorizado volver al <a href='/healthcheck'>inicio</a> </div>"

    users = get_users_from_db()

    return render_template('/healthcheck/admin.html', user=user, users=users, token=session['mstoken'])


@healthcheck.route('/admin/encuestas')
@is_auth_admin
def encuestas():
    userid = request.args.get('userid', 1)
    user = db.fetchone(f"select * from users where id={userid}")
    docs = db.fetchall(
        f"select * from documents where userid={userid} order by createddate desc")
    return render_template('/healthcheck/encuestas.html',
                           documents=docs.get('result', []),
                           user=user.get('result', {}),
                           token=session['mstoken'],
                           users=get_users_from_db())


@healthcheck.route('/admin/encuesta')
@is_auth_admin
def encuesta():
    userid = request.args.get('userid', 1)
    docid = request.args.get('docid', 1)
    user = db.fetchone(f"select * from users where id={userid}")
    responses = db.fetchall(
        f"select * from responses where documentid={docid} order by createddate desc")

    resps = {}

    for r in responses.get('result'):

        key = r['questioncode']
        answer = r['answer']

        if r['extrainfo']:
            answer = f"{r['extrainfo']}:  {answer}"

        if not resps.get(key):
            resps[key] = {}
            resps[key]['question'] = r['question']
            resps[key]['answers'] = [answer]
        else:
            resps[key]['answers'].append(answer)

    return render_template('/healthcheck/encuesta.html',
                           responses=resps,
                           user=user.get('result', {}),
                           token=session['mstoken'],
                           users=get_users_from_db())


@healthcheck.route('/admin/report')
@is_auth_admin
def create_report():

    from itertools import groupby

    f = 'temp/encuestas.xlsx'
    f = os.path.abspath(f)
    if os.path.exists(f):
        os.remove(f)

    headers = db.fetchall("select * from headers")
    headers = headers.get('result', [])

    sdate = request.args.get('startdate', '2020-01-01')
    edate = request.args.get('enddate', '2022-01-01')

    lastrow = f"where r.createddate between '{sdate}' and '{edate}'"
    if edate == sdate:
        lastrow = f"where r.createddate >= '{sdate}'"
    query = f"""
        select r.documentid, r.questioncode,r.code, u.name Usuario, u.email Correo,
        r.question Pregunta,r.extrainfo Extra,r.answer Respuesta,
        r.createddate FechaCreación
        from responses r
        inner join users u on r.userid=u.id

    """
    query += lastrow

    rows = db.fetchall(query=query)
    rows = rows.get('result', [])
    if len(rows) == 0:
        return {
            'error': True,
            'message': 'No se encontraron datos en el rango de fechas'
        }

    wb = xlsxwriter.Workbook(f)
    sheet1 = wb.add_worksheet()
    bold = wb.add_format({'bold': True})

    i = 0
    col = 2
    row = 0
    sheet1.write(row, 0, 'Usuario', bold)
    sheet1.write(row, 1, 'Fecha', bold)

    for k in headers:
        sheet1.write(row, col, k['header'], bold)
        headers[i]['col'] = col
        i += 1
        col += 1

    def key_func(k):
        return k['documentid']

    def getcol(code):
        col = None
        for h in headers:
            if h['code'] == code:
                col = h['col']
                break

        return col

    rows = sorted(rows, key=key_func)
    rows = groupby(rows, key_func)

    row = 1
    for _, v in rows:
        items = list(v)
        for item in items:
            date = wb.add_format({'num_format': 'yyyy-mm-dd'})
            sheet1.write(row, 0, item['Usuario'])
            sheet1.write(row, 1, item['FechaCreación'], date)

            col = getcol(item['questioncode'])
            if len(item['code']) > 8:
                col = getcol(item['code'])

            if col is None:
                col = getcol('q4_ans1_5')
            sheet1.write(row, col, item['Respuesta'])
        row += 1

    wb.close()

    return {
        'error': False,
        'message': 'Prueba del servidor'
    }


@healthcheck.route('/admin/download')
def send_report():

    f = 'temp/encuestas.xlsx'
    f = os.path.abspath(f)
    exists = os.path.exists(f)

    if exists is False:
        return {
            'error': True,
            'message': 'El reporte no esta creado'
        }

    f = os.path.abspath(f)

    return send_file(f, as_attachment=True)
