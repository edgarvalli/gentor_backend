class CheckboxRow extends HTMLElement {
  container = this;
  col1 = this;
  col2 = this;
  checkbox = this;
  checked = false;

  constructor() {
    super();
    // this.attachShadow({ mode: "open" });
    this.render();
  }

  setChecked() {
    this.checkbox.classList.add("checkbox-checked");
    this.checked = true;
  }

  clearChecked() {
    this.checkbox.classList.remove("checkbox-checked");
    this.checked = false;
  }

  render() {
    this.container = renderElement("div", ["row", "answer", "p-2"]);
    this.col1 = renderElement("div", ["col-xs-10","col-sm-10", "col-md-10","col-lg-11"]);
    this.col2 = renderElement("div", ["col-xs-2","col-sm-2", "col-md-2", "col-lg-1"]);
    this.checkbox = renderElement("div");

    this.col1.textContent = this.textContent;
    this.checkbox.classList.add("checkbox");
    this.checkbox.id = `check_${this.id}`;
    this.checkbox.style.width = "1rem"
    this.col1.style.width = "90%"
    this.col2.style.width = "10%"

    this.container.onclick = () => {
      this.checkbox.classList.toggle("checkbox-checked");
      this.checked = !this.checked;
    };

    if (this.getAttribute("checked") === "checked") {
      this.checkbox.classList.add("checkbox-checked");
      this.checked = true;
    }

    this.col2.append(this.checkbox);
    this.container.append(this.col1);
    this.container.append(this.col2);

    this.textContent = "";

    this.append(this.container);
  }
}
window.customElements.define("checkbox-row", CheckboxRow);
