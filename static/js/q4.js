const ids = ["q4_ans1_1", "q4_ans1_2", "q4_ans1_3", "q4_ans1_4"];
const ans1 = document.getElementById("q4_ans1");
const ans2 = document.getElementById("q4_ans2");

const answer = {
  code: null,
  questioncode: viewKey,
  question: "¿Haz viajado en los últimos 7 días?",
  answer: null,
};

let choices = answer;

function setAnswer(code, text) {
  answer.code = code;
  answer.answer = text;
  return answer;
}

function addResponse(ans) {
  const responses = getResponses();
  responses[viewKey].push(ans);
  setResponses(responses[viewKey]);
}

function expandedItem(el) {
  const id = el.getAttribute("list-id");
  const item = document.getElementById(id);
  item.classList.toggle("collapsed");
  const a = setAnswer(el.id, el.textContent.trim());
  ans2.clearChecked();
  setResponses([a]);
}

function setChecked(el, id2) {
  const id = el.getAttribute("check-id");
  const textId = el.getAttribute("text-id");
  const text = document.getElementById(textId).textContent;
  const el1 = document.getElementById(id);
  const el2 = document.getElementById(id2);
  el1.classList.add("checkbox-checked");
  el2.classList.remove("checkbox-checked");

  choices.answer = text;
  choices.code = id;
  choices.extrainfo = "Motivo del viaje";

  addResponse(choices);
}

function selectNO(el) {
  const id = el.id;
  document.getElementById("item-expanded-2").classList.add("collapsed");
  if (el.checked) {
    setResponses([setAnswer(id, el.textContent)]);
  } else {
    setResponses([]);
  }
  document.body.scrollTop = document.documentElement.scrollTop = 0;
}

function sendData() {
  if (isInResponses(ans2.id)) {
    ans2.checked = true;
    setResponses([setAnswer(ans2.id, ans2.textContent)]);
  } else {
    ids.forEach((id) => {
      const el = document.getElementById(id);
      answer.code = id;
      answer.answer = el.value;
      answer.extrainfo = el.getAttribute("placeholder");
      addResponse(answer);
    });
  }

  const responses = getResponses();
  const body = {
    data: responses,
  };

  const headers = {
    method: "POST",
    body: JSON.stringify(body),
    headers: {
      "Content-Type": "application/json",
      Accept: "application/json",
    },
  };

  fetch("/healthcheck/responses/save", headers)
    .then((response) => response.json())
    .then((res) => {
      if (res.error) return alert(res.message);
      sessionStorage.clear()
      window.location.href = '/healthcheck/gratefulness'
    });
}

// function checkIfExists() {
//   if (isInResponses(ans2.id)) {
//     ans2.checked = true;
//     ans2.setChecked();
//     this.selectNO(ans2);
//   } else {
//     this.expandedItem(ans1);
//   }
// }

setResponses([]);
// checkIfExists();
