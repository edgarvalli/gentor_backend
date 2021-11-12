class CheckboxShort extends HTMLElement {
  checkbox = this;
  constructor() {
    super();
    this.render();
  }

  render() {
    const container = renderElement("div", ["col-12", "pl-2"]);
    const row = renderElement("div", ["row"]);
    const col1 = renderElement("div", ["col-5"]);
    const col2 = renderElement("div", ["col-1"]);
    this.checkbox = renderElement("div", ["checkbox"]);

    col1.textContent = this.textContent;
    col2.append(this.checkbox);
    this.textContent = ""

    row.append(col1);
    row.append(col2);
    container.append(row);
    this.append(container);

  }
}

window.customElements.define("checkbox-short", CheckboxShort);
