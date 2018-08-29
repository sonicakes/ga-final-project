$(document).ready(function() {
  console.log("ready!");

  window.addEventListener("scroll", function() {
    if (window.scrollY > 100) {
      $("#topButton").show();
      $("#navBr").addClass('scroll-down');
    } else {
      $("#topButton").hide();
      $("#navBr").removeClass('scroll-down');
    }
  });
});