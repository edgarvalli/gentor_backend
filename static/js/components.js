const props = {
  links: [
    "gentor-button",
    "radius-row",
    "list-row",
    "checkbox-row",
    "checkbox-short",
    "head-title",
    "contact-row",
  ],
  css: ["/css/components.css"],
};

props.css.forEach((link) => {
  const linkRef = document.createElement("link");
  linkRef.rel = "stylesheet";
  linkRef.href = link;
  document.head.append(linkRef);
});

const renderElement = (tag = "div", className = []) => {
  const el = document.createElement(tag);
  for (let i in className) {
    const c = className[i];
    el.classList.add(c);
  }
  return el;
};

props.links.forEach((link) =>
  document.write(`<script src="/js/components/${link}.js"></script>`)
);
