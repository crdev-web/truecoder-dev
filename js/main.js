const bottoneMenu = document.querySelector(".nav-toggle");
const listaLink = document.querySelector(".nav-links");
bottoneMenu.addEventListener("click", function () {
  listaLink.classList.toggle("active");
});

// === TOGGLE LINGUA ===
const elementiTraducibili = document.querySelectorAll("[data-it]");
const bottoniLingua = document.querySelectorAll(".nav-lang, .footer-lang");
let linguaAttuale = "it";

function cambiaLingua() {
  elementiTraducibili.forEach(function (elemento) {
    elemento.textContent = elemento.getAttribute("data-" + linguaAttuale);
  });
}

bottoniLingua.forEach(function (bottone) {
  bottone.addEventListener("click", function () {
    if (linguaAttuale === "it") {
      linguaAttuale = "en";
    } else {
      linguaAttuale = "it";
    }
    cambiaLingua();
    bottoniLingua.forEach(function (btn) {
      if (linguaAttuale === "en") {
        btn.textContent = "IT";
      } else {
        btn.textContent = "EN";
      }
    });
  });
});
