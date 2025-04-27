document.addEventListener("turbo:load", () => {
  console.log("turbo Loaded");

  const addActionLogButton = document.getElementById("add-action-log");
  console.log("Add Action Log Button:", addActionLogButton);

  if (addActionLogButton) {
    addActionLogButton.addEventListener("click", function () {
    console.log("Add Action Log Button Clicked");

    const container = document.getElementById("action-logs");
    console.log("Container:", container);
  
    if (!container) return;
  
    const index = container.children.length;
    const template = `
        <div class="mb-4 p-4 border rounded">
          <label>行動の種類</label>
          <input type="text" name="post[action_logs_attributes][${index}][action_type]" class="border p-2 w-full" />

          <label>詳細</label>
          <textarea name="post[action_logs_attributes][${index}][details]" rows="3" class="border p-2 w-full"></textarea>

          <label>時間</label>
          <input type="time" name="post[action_logs_attributes][${index}][timestamp]" class="border p-2 w-full" />

          <input type="hidden" name="post[action_logs_attributes][${index}][_destroy]" class="destroy-flag" value="false" />
          <button type="button" class="remove-action-log text-red-500">削除</button>
        </div>
      `;
      container.insertAdjacentHTML("beforeend", template);
    });
  } else {
    console.warn("Button #add-action-log is missing!");
  }
  
  const logsContainer = document.getElementById("action-logs");
  if (logsContainer) {
    logsContainer.addEventListener("click", function (event) {
      if (event.target.classList.contains("remove-action-log")) {
        const logContainer = event.target.closest("div");
        const destroyField = logContainer.querySelector(".destroy-flag");

        if (destroyField) {
          destroyField.value = "true";
          logContainer.style.display = "none";
        } else {
          logContainer.remove();
        }
      }
    });
  } else {
    console.warn("Container #action-logs is missing!");
  }
});
