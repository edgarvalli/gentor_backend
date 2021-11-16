class HeadTitle extends HTMLElement {
  constructor() {
    super();
    this.render();
  }

  render() {
    const container = renderElement("div", ["d-flex","justify-content-bewteen","p-2"]);
    container.style.backgroundColor = "#fff";
    const row = renderElement("div");
    row.innerHTML = `<strong>${this.textContent}</strong>`;

    const showBack = this.getAttribute("show-back");

    if (showBack === "show") {
      const backRow = renderElement("div",["row-icon"]);
      backRow.style.cursor = "pointer";
      backRow.onclick = () => window.history.back();
      const img = renderElement("img");
      img.src = "/icons/arrow-left.png";
      img.alt = "arrow-left";
      backRow.append(img);
      container.append(backRow);
    }

    this.textContent = "";
    container.append(row);
    this.append(container);
  }
}

window.customElements.define("head-title", HeadTitle);
