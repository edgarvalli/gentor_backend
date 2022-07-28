Vue.createApp({
  data() {
    return {
      title: "Hello Vue!",
      users: []
    };
  },
  async mounted() {
    const req = await fetch('/aad/get/users')
    const resp = await req.json();
    this.users = resp.value || [];
  }
}).mount("#app");