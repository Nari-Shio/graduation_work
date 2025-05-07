document.addEventListener("turbo:load", function() {
    const form = document.getElementById('search-form');
    const formContainer = document.querySelector('search-form-container');
    
    if (form && formContainer) {
      form.addEventListener('submit', () => {
        formContainer.style.display = 'none';
      });
    }
});
  