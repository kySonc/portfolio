// hamburger //
const hamburger = document.querySelector(".header .nav-bar .nav-list .hamburger");
const mobile_menu = document.querySelector(".header .nav-bar .nav-list ul");

hamburger.addEventListener("click", () => {
    hamburger.classList.toggle("active");
    mobile_menu.classList.toggle("active");
});

const menu_item = document.querySelectorAll(".header .nav-bar .nav-list ul li a");

//scroll nav-bar backgroundColor//
document.addEventListener("scroll", () => {
    var scroll_position = window.scrollY;
    if (scroll_position > 50) {
      header.style.backgroundColor = "#2f0a0d";
    } else {
      header.style.backgroundColor = "transparent";
    }
  });

//view click link//
const header = document.querySelector(".header.container");

menu_item.forEach((item) => {
    item.addEventListener("click", () => {
      hamburger.classList.toggle("active");
      mobile_menu.classList.toggle("active");
    });
});