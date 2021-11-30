const ids = ["q3_ans1", "q3_ans2", "q3_ans3", "q3_ans4"];

const answer = {
  code: null,
  questioncode: viewKey,
  question: "¿Te has realizado la prueba de COVID-19?",
  answer: null,
};
console.log(answer)
function next() {
  if (answer.code === null) return alert("Debe seleccionar una opcion");
  window.location.href = "/healthcheck/questions/q4";
}

function setAnswer(code, text) {
  answer.code = code;
  answer.answer = text;
  return answer;
}

function onChange(el) {
  ids.forEach((id) => document.getElementById(id).clearChecked());
  el.setChecked();
  setResponses([setAnswer(el.id, el.textContent)]);
}

ids.forEach((k) => {
  const r = isInResponses(k);
  if (r) {
    const item = document.getElementById(k);
    item.setChecked();
    setAnswer(r, item.textContent);
  }
});
