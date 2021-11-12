class GentorButton extends HTMLElement {
  constructor() {
    super();
    const button = document.createElement("button");
    button.classList.add("btn");
    button.classList.add("btn-gentor");
    button.textContent = this.textContent
    this.textContent = ""
    this.append(button);
  }
}

window.customElements.define("gentor-button", GentorButton);
