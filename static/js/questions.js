const sintomas = [
  {
    code: "q1_ans2_1",
    text: "Fiebre",
  },
  {
    code: "q1_ans2_2",
    text: "Escalofríos",
  },
  {
    code: "q1_ans2_3",
    text: "Tos seca",
  },
  {
    code: "q1_ans2_4",
    text: "Tos húmeda (con mucosidad)",
  },
  {
    code: "q1_ans2_5",
    text: "Dificultad para respirar",
  },
  {
    code: "q1_ans2_6",
    text: "Pérdida del olfato",
  },
  {
    code: "q1_ans2_7",
    text: "Fatiga",
  },
  {
    code: "q1_ans2_8",
    text: "Opresión en el pecho",
  },
  {
    code: "q1_ans2_9",
    text: "Dolor de garganta / Escurrimiento nasal / Congestión",
  },
  {
    code: "q1_ans2_10",
    text: "Vómito",
  },
  {
    code: "q1_ans2_11",
    text: "Diarrea",
  },
];

const list = document.getElementById("q1_list");

let checkboxQ2 = null;

function renderOption(id, text) {
  const row = document.createElement("div");
  row.classList.add("row");
  row.classList.add("answer");
  row.classList.add("p-2");
  row.id = id;

  const row2 = document.createElement("div");
  row2.classList.add("col-11");
  row2.innerText = text;

  const row3 = document.createElement("div");
  row3.classList.add("col-1");

  const icon = document.createElement("img");
  icon.src = "/icons/arrow-rigth.png";
  row3.appendChild(icon);

  row.appendChild(row2);
  row.appendChild(row3);

  list.appendChild(row);
}

function onChangeQ2(el) {
  const items = {
    no: document.getElementById("no"),
    yes: document.getElementById("yes"),
  };
  items.no.checked = false;
  items.yes.checked = false;
  items[el].checked = true;
  checkboxQ2 = el;
}

function nextQ2() {
    if(checkboxQ2 === null) return alert("Debe seleccionar una opcion")
  if (checkboxQ2 === "yes")
    return (window.location.href = "/healthcheck/questions/q3");
  return (window.location.href = "/healthcheck/questions/q4");
}

const goBack = () => window.history.back();

sintomas.forEach((item) => renderOption(item.code, item.text));

document.getElementById("list-container").onclick = function () {
  list.classList.toggle("list-expanded");
};
