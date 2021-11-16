class RadiusRow extends HTMLElement {
  css = [
    "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css",
    "/css/components.css",
  ];

  checked = false;

  constructor() {
    super();
    // this.attachShadow({ mode: "open" });
    this.render();
  }

  setChecked() {
    this.radius.classList.add("radius-checked");
    this.checked = true;
  }

  clearChecked() {
    this.radius.classList.remove("radius-checked");
    this.checked = false;
  }

  changeChecked() {
    if (this.checked) {
      this.setChecked();
    } else {
      this.clearChecked();
    }
  }

  render = async () => {
    //Clases de elementos
    const containerClass = ["row", "p-2", "answer"];
    const radiusClass = ["radius"];

    if (this.getAttribute("checked") === "checked" || this.checked) {
      radiusClass.push("radius-checked");
      this.checked = true;
    } else {
      this.checked = false;
    }

    // Declaracion de elementos
    const container = await renderElement("div", containerClass);
    const col1 = await renderElement("div", ["col-11"]);
    const col2 = await renderElement("div", ["col-1"]);
    this.radius = await renderElement("div", radiusClass);

    // Render
    container.onclick = () => {
      if (this.checked) {
        this.clearChecked();
      } else {
        this.setChecked();
      }
    };

    col1.textContent = this.textContent;
    this.textContent = "";

    col2.append(this.radius);
    container.append(col1);
    container.append(col2);
    this.append(container);
  };
}

window.customElements.define("radius-row", RadiusRow);
