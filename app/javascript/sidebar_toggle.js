document.addEventListener("turbo:load", function () {
  const sidebar = document.getElementById("sidebar");
  const toggleButton = document.getElementById("sidebarToggle");

  if (sidebar && toggleButton) {
    toggleButton.addEventListener("click", function () {
      sidebar.classList.toggle("translate-x-full");
    });
  }
  console.log("サイドバー切り替え動作中");
});
 