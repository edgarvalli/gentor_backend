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

const answer = {
  code: "",
  questionCode: "q1",
  question:
    "¿Haz presentado alguno de los siguientes síntomas en los últimos 14 días?",
  answer: "",
};

function renderOption(id, text) {
  const row = document.createElement("div");
  row.onclick = () => setChecked("check_" + id, text);
  row.classList.add("row");
  row.classList.add("answer");
  row.classList.add("p-2");
  row.id = id;

  const row2 = document.createElement("div");
  row2.classList.add("col-11");
  row2.innerText = text;

  const row3 = document.createElement("div");
  row3.classList.add("col-1");

  row3.innerHTML = `
    <div class="checkbox" id="check_${id}"></div>
    `;

  row.appendChild(row2);
  row.appendChild(row3);

  list.appendChild(row);
}

const list = document.getElementById("q1_list");

const setChecked = (id, value) => {
  const el = document.getElementById(id);
  el.classList.toggle("checkbox-checked");
  answer.answer = value;
  answer.code = id.split("check_")[1];

  const responses = JSON.parse(sessionStorage.getItem("responses")) || {};

  if (el.classList.contains("checkbox-checked")) {
    responses["q1"].push(answer);
  } else {
    responses["q1"] = responses["q1"].filter((el) => el.code !== answer.code);
  }

  sessionStorage.setItem("responses", JSON.stringify(responses));
};

const isInResponses = (id) => {
  console.log(id);
};

sintomas.forEach((item) => renderOption(item.code, item.text));

const ans1 = document.getElementById("list-container");
ans1.onclick = function () {
  answer.answer = "Si";
  answer.code = "q1_ans1";

  const responses = JSON.parse(sessionStorage.getItem("responses")) || {};

  if (list.classList.contains("list-expanded")) {
    list.classList.remove("list-expanded");
    responses["q1"] = [];
  } else {
    list.classList.add("list-expanded");
    responses["q1"] = [answer];
  }

  sessionStorage.setItem("responses", JSON.stringify(responses));
};