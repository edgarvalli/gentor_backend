async function fetchUsers() {
  const request = await fetch("/api/healthcheck/users");
  const response = await request.json();
  if (response.error) return alert(response.message);
  let html = "";

  for (let i in response.result) {
    user = response.result[i];
    html += `
        <a href="/healthcheck/admin/encuestas?userid=${user.id}" class="list-group-item list-group-item-action d-flex justify-content-between align-items-center" style="cursor:pointer">
            ${user.name}
            <span class="badge badge-primary badge-pill" style="background: #eaab35;">
                ${user.total_documents}
            </span>
        </a>
      `;
    list.innerHTML = html;
  }
}

fetchUsers();
