class ListRow extends HTMLElement {
  listContainer = this;
  list = this;
  header = this;
  col1 = this;
  col2 = this;
  img = this;
  open = false;
  value = "";

  constructor() {
    super();
    this.render();
  }

  collapsed() {
    this.open = false;
    this.img.src = "/icons/arrow-rigth.png";
    this.list.style.height = 0;
  }

  setOpen() {
    if (this.open) {
      this.open = false;
      this.img.src = "/icons/arrow-rigth.png";
      this.list.style.height = 0;
    } else {
      this.open = true;
      this.img.src = "/icons/arrow-down.png";
      this.list.style.height = "auto";
    }
  }

  render() {
    const containerClass = ["row", "pt-2", "pb-2", "answer"];
    this.listContainer = renderElement("div");
    this.header = renderElement("div", containerClass);
    this.list = renderElement("div", ["container"]);
    this.col1 = renderElement("div", ["col-11"]);
    this.col2 = renderElement("div", ["col-1"]);
    this.img = renderElement("img");

    this.header.onclick = () => {
      this.setOpen();
    };

    this.img.alt = "arrow";
    this.img.src = "/icons/arrow-rigth.png";
    this.col1.textContent = this.textContent;

    this.col2.append(this.img);
    this.header.append(this.col1);
    this.header.append(this.col2);
    this.listContainer.append(this.header);
    this.value = this.textContent.trim();
    this.textContent = "";

    this.append(this.listContainer);
  }
}

window.customElements.define("list-row", ListRow);
