/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

// menu bar
window.onscroll = function () {
  myFunction();
};

var navbar = document.querySelector(".menu-bar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky");
  } else {
    navbar.classList.remove("sticky");
  }
}

// slide show

var swiper = new Swiper(".mySwiper", {
  slidesPerView: 4,
  spaceBetween: 30,
  slidesPerGroup: 4,
  loop: true,
  loopFillGroupWithBlank: true,
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});

// form khach hang
var thongtin = document.querySelector(".thongtinkhachhang");
var muahang = document.querySelector(".muahang");

function toggleModel() {
  thongtin.classList.toggle("hide");
}
muahang.addEventListener("click", toggleModel);

var about = document.querySelectorAll(".about");
var about_tong = document.querySelectorAll(".tong");
var tmp1 = 0;
about_tong.forEach((node) => {
  tmp1 += parseFloat(stringToFloat(node.innerHTML));
  document.querySelector(".total").innerHTML = floatToString(
    tmp1.toLocaleString() + "đ"
  );
});

about.forEach((node) => {
  var sl = node.querySelector(".sl");
  var gia = node.querySelector(".gia1").innerHTML;
  var tong = node.querySelector(".tong").innerHTML;
  var itemCount = node.querySelector(".quantity");
  var add = node.querySelector(".cong");
  var remove = node.querySelector(".tru");

  add.addEventListener("click", () => {
    itemCount.value = parseInt(itemCount.value) + 1;
    var num =
      parseFloat(stringToFloat(node.querySelector(".gia1").innerHTML)) *
      itemCount.value;
    node.querySelector(".tong").innerHTML = floatToString(
      num.toLocaleString() + "đ"
    );
    var tmp = document.querySelectorAll(".tong");
    var res = 0;
    tmp.forEach((node) => {
      res += parseFloat(stringToFloat(node.innerHTML));
      document.querySelector(".total").innerHTML = floatToString(
        res.toLocaleString() + "đ"
      );
    });
  });

  remove.addEventListener("click", () => {
    if (parseInt(itemCount.value) > 0) {
      itemCount.value = parseInt(itemCount.value) - 1;
      var num =
        parseFloat(stringToFloat(node.querySelector(".gia1").innerHTML)) *
        itemCount.value;
      node.querySelector(".tong").innerHTML = floatToString(
        num.toLocaleString() + "đ"
      );
      var tmp = document.querySelectorAll(".tong");
      var res = 0;
      tmp.forEach((node) => {
        res += parseFloat(stringToFloat(node.innerHTML));
        document.querySelector(".total").innerHTML = floatToString(
          res.toLocaleString() + "đ"
        );
      });
    }
  });
});

function stringToFloat(num) {
  num = num.replace("đ", "");
  for (var i = 0; i < num.length; i++) {
    num = num.replace(".", "");
  }
  return num;
}

function floatToString(num) {
  for (var i = 0; i < num.length; i++) {
    num = num.replace(",", ".");
  }
  return num;
}
