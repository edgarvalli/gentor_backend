const buttonImport = document.getElementById("button-import");

function csvJSON(csv) {
  let lines = csv.split("\n");
  lines = lines.map((el) => el.trim());
  const result = [];

  const headers = lines[0].split(",");

  for (let i = 1; i < lines.length; i++) {
    let obj = {};
    let currentline = lines[i].split(",");

    for (let j = 0; j < headers.length; j++) {
      const v = currentline[j];
      if (isNaN(v)) {
        obj[headers[j]] = v;
      } else {
        if (headers[j] === "Version") {
          obj[headers[j]] = v;
        } else {
          obj[headers[j]] = parseFloat(v);
        }
      }
    }

    result.push(obj);
  }

  //return result; //JavaScript object
  return JSON.stringify(result); //JSON
}

new Vue({
  el: "#app",
  data: {
    cfdis: [],
    message: "",
    file: null,
    importShow: false,
    empresas: [],
  },
  mounted: function () {
    this.fetchInit();
  },
  methods: {
    onChangeFileInput: function (el) {
      this.file = el.target.files[0];

      const reader = new FileReader();

      reader.onload = () => {
        const data = csvJSON(reader.result.replace(/\n$/, ""));
        this.cfdis = JSON.parse(data);
      };

      reader.readAsText(this.file);

      this.importShow = true;
    },
    importCfdis: async function () {
      const empresa = document.getElementById("empresa");
      if (empresa.value === "") return alert("Debe seleccionar la empresa");
      const file = document.getElementById("file_select");
      const loader = document.getElementById("loader");

      loader.style.display = "flex";

      const req = await fetch("/guardata/import", {
        method: "post",
        body: JSON.stringify({ data: this.cfdis, model: empresa.value }),
        headers: {
          "Content-Type": "Application/Json",
          Accept: "Application/Json",
        },
      });
      const resp = await req.json();
      if (!resp.error) file.value = "";
      loader.style.display = "none";

      this.message = resp.message || "Importado!!!!";
    },
    updateCfdis: async function () {
      const loader = document.getElementById("loader");
      const cfdisEl = document.getElementById("uuids");
      const e = document.getElementById("empresa2");

      if (e.value === "") return alert("Debes elegir una empresa");

      loader.style.display = "flex";

      values = {
        model: e.value,
        data: cfdisEl.value.trimEnd().split("\n"),
      };

      try {
        const request = await fetch("/guardata/update/cfdis", {
          method: "post",
          body: JSON.stringify(values),
          headers: {
            "Content-Type": "Application/Json",
            Accept: "Application/Json",
          },
        });
        const response = await request.json();
        if (response.error) return alert(response.message);
      } catch (error) {
        console.log(error);
      }

      cfdisEl.value = "";
      e.value = ""

      loader.style.display = "none";
    },
    fetchInit: async function () {
      const request = await fetch("/guardata/api/fetch/Empresas");
      const response = await request.json();
      this.empresas = response.data;
    },
  },
});
