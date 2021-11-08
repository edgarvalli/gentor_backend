let checkboxQ2 = null;



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
  if (checkboxQ2 === null) return alert("Debe seleccionar una opcion");
  if (checkboxQ2 === "yes")
    return (window.location.href = "/healthcheck/questions/q3");
  return (window.location.href = "/healthcheck/questions/q4");
}

const goBack = () => window.history.back();
