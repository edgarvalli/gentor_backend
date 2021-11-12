const radius = document.getElementById("no-option");
const list = document.getElementById("q1_ans1_list");
const listRow = document.getElementById("list-row");
const k = "q1";
let isRendered = false;

const answer = {
  code: "",
  questioncode: viewKey,
  question:
    "¿Haz presentado alguno de los siguientes síntomas en los últimos 14 días?",
  answer: "",
};

const sintomas = [
  {
    code: "q1_ans1_1",
    text: "Fiebre",
  },
  {
    code: "q1_ans1_2",
    text: "Escalofríos",
  },
  {
    code: "q1_ans1_3",
    text: "Tos seca",
  },
  {
    code: "q1_ans1_4",
    text: "Tos húmeda (con mucosidad)",
  },
  {
    code: "q1_ans1_5",
    text: "Dificultad para respirar",
  },
  {
    code: "q1_ans1_6",
    text: "Pérdida del olfato",
  },
  {
    code: "q1_ans1_7",
    text: "Fatiga",
  },
  {
    code: "q1_ans1_8",
    text: "Opresión en el pecho",
  },
  {
    code: "q1_ans1_9",
    text: "Dolor de garganta / Escurrimiento nasal / Congestión",
  },
  {
    code: "q1_ans1_10",
    text: "Vómito",
  },
  {
    code: "q1_ans1_11",
    text: "Diarrea",
  },
];

function renderItems() {
  if (isRendered) return;
  let html = "";
  for (let i in sintomas) {
    const s = sintomas[i];
    let checked = "";
    const isIn = isInResponses(s.code);
    if (isIn) checked = "checked";
    html += `<checkbox-row checked="${checked}" onclick="selectChildOption(this)" id="${s.code}">${s.text}</checkbox-row>\n`;
  }
  list.innerHTML = html;
  isRendered = true;
}

function next() {
  let responses = getResponses();
  responses = responses[viewKey] || [];
  const uri = "/healthcheck/questions/q2";
  if (responses.length < 1) return alert("Debe de seleccionar una opcion");
  window.location.href = uri;
}

function selectNO() {
  const checked = radius.checked;
  list.innerHTML = "";

  if (checked) {
    answer.code = "q1_ans2";
    answer.answer = "No";
    setResponses([answer]);
  } else {
    setResponses([]);
  }
  document.body.scrollTop = document.documentElement.scrollTop = 0;
}

function selectYES(el) {
  if (el.open) {
    answer.code = el.getAttribute("key");
    answer.answer = el.value;
    setResponses([answer]);
    renderItems();
  } else {
    isRendered = false;
    setResponses([]);
    list.innerHTML = "";
  }
  radius.clearChecked();
}

function selectOption(el, opt) {
  if (opt === "yes") {
    selectYES(el);
  } else {
    selectNO(el);
  }
}

function selectChildOption(el) {
  let responses = getResponses();
  responses = responses[viewKey];
  if (el.checked) {
    answer.code = el.id;
    answer.answer = el.textContent;
    responses.push(answer);
  } else {
    responses = responses.filter((r) => r.code !== el.id);
  }
  setResponses(responses);
}

const response1 = isInResponses("q1_ans1");
const response2 = isInResponses("q1_ans2");
if (response1) {
  renderItems();
  listRow.open = false;
  listRow.setOpen();
}

if (response2) {
  radius.setChecked();
  selectNO();
}
