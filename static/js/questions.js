const viewKey = document.getElementById("view-key").getAttribute("value");

function isInResponses(id, v=viewKey) {
  let responses = JSON.parse(sessionStorage.getItem("responses")) || {};
  responses = responses[v] || [];
  responses = responses.filter((item) => item.code === id);
  if (responses.length > 0) return true;
  return false;
}

function getResponses() {
  let _responses = sessionStorage.getItem("responses");
  if (_responses === null) {
    _responses = {};
  } else {
    _responses = JSON.parse(_responses);
  }
  return _responses;
}

function setResponses(responses, v=viewKey) {
  let _responses = getResponses();
  _responses[v] = responses;
  _responses = JSON.stringify(_responses);
  sessionStorage.setItem("responses", _responses);
}

const goBack = () => window.history.back();
