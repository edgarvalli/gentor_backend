function expandedItem(id) {
  const el = document.getElementById(id);
  el.classList.toggle("collapsed");
}

function setChecked(id,id2) {
  const el = document.getElementById(id);
  const el2 = document.getElementById(id2);
  el.classList.toggle("checkbox-checked");
  el2.classList.remove("checkbox-checked");
}
