$(document).ready(function() {
  console.log("ready!");

  window.addEventListener("scroll", function() {
    if (window.scrollY > 100) {
      // $('nav').addClass("bg-danger");
      // $('nav').removeClass("bg-dark");
      $("#topButton").show();
      $("#navBr").addClass('scroll-down');
    } else {
      // $('nav').removeClass("bg-danger");
      // $('nav').addClass("bg-dark");
      $("#topButton").hide();
      $("#navBr").removeClass('scroll-down');
    }
  });
});