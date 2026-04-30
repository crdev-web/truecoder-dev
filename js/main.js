const bottoneMenu = document.querySelector(".nav-toggle");
const listaLink = document.querySelector(".nav-links");
bottoneMenu.addEventListener("click", function () {
  listaLink.classList.toggle("active");
});
