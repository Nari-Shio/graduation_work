document.addEventListener("turbo:load", () => {
  const addActionLogButton = document.getElementById("add-action-log");
  const container = document.getElementById("action-logs");

  if (!addActionLogButton || !container) return;

  addActionLogButton.addEventListener("click", function () {
    const index = container.children.length;

    const template = `
      <div class="mb-4 p-4 border rounded">
        <label>時間</label>
        <input type="time" name="post[action_logs_attributes][${index}][created_at]" class="border p-2 w-full" />

        <label>場所</label>
        <input type="text" name="post[action_logs_attributes][${index}][place]" class="border p-2 w-full" />

        <label>行動の種類</label>
        <input type="text" name="post[action_logs_attributes][${index}][category]" class="border p-2 w-full" />

        <label>詳細</label>
        <textarea name="post[action_logs_attributes][${index}][memo]" rows="3" class="border p-2 w-full"></textarea>

        <input type="hidden" name="post[action_logs_attributes][${index}][_destroy]" class="destroy-flag" value="false" />
        <button type="button" class="remove-action-log text-red-500">削除</button>
      </div>
    `;
  
    container.insertAdjacentHTML("beforeend", template);
  });
  
  container.addEventListener("click", function (event) {
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
});
