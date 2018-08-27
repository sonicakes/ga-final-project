$(document).ready(function() {
  $('.tour-card').click(function() {
    $('.tour-card').not(this).removeClass('active');
    $('.maps-day').toggle('active');
    console.log('clicked!');
  });
});