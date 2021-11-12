const answer = {
  code: null,
  questioncode: viewKey,
  question:
    "En los últimos 14 días, ¿has tenido algún contacto con alguien con síntomas que sugieran una infección por COVID-19?",
  answer: null,
};
function next() {
  if (answer.code === null) return alert("Debe seleccionar una opcion");
  if (answer.code === "q2_ans2")
    return (window.location.href = "/healthcheck/questions/q3");

  const responses = getResponses();
  if ("q3" in responses) delete responses.q3;
  sessionStorage.setItem("responses", JSON.stringify(responses));
  return (window.location.href = "/healthcheck/questions/q4");
}

function setAnswer(code, text) {
  answer.code = code;
  answer.answer = text;
  return answer;
}

function onChangeOption(el) {
  const key = el.getAttribute("key");
  const items = {
    no: document.getElementById("q2_ans2"),
    yes: document.getElementById("q2_ans1"),
  };
  items.no.checked = false;
  items.yes.checked = false;
  items[key].checked = true;
  items.no.changeChecked();
  items.yes.changeChecked();

  setResponses([setAnswer(el.id, el.textContent)]);
}

const keys = ["q2_ans1", "q2_ans2"];

keys.forEach((k) => {
  const r = isInResponses(k);
  if (r) {
    const item = document.getElementById(k);
    item.setChecked();
    setAnswer(r, item.textContent);
  }
});
