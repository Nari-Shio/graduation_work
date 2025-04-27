document.addEventListener("turbo:load", () => {
  document.addEventListener("ajax:success", (event) => {
    const [data, status, xhr] = event.detail;
    const bookmarkBtn = document.getElementById("bookmark-btn");
    const bookmarkIcon = document.getElementById("bookmark-icon");
  
    if (bookmarkBtn && bookmarkIcon) {
      if (bookmarkIcon.innerText === "🤍") {
        bookmarkIcon.innerText = "❤️";
        bookmarkIcon.classList.remove("text-gray-400");
        bookmarkIcon.classList.add("text-red-500");
      } else {
        bookmarkIcon.innerText = "🤍";
        bookmarkIcon.classList.remove("text-red-500");
        bookmarkIcon.classList.add("text-gray-400");
      }
    }
  });
});
  