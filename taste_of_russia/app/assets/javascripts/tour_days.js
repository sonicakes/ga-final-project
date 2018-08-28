$(document).ready(function() {
  $('.tour-card').click(function() {
    // Load the day we actually display
    var tourDayId = $(this).attr('data-tour-day-id');
    // Hide all days
    $('div.tour-day-details').hide();
    // Show the day we want
    console.log('div.tour-day-details[data-tour-day-id=' + tourDayId + ']');
    $('div.tour-day-details[data-tour-day-id=' + tourDayId + ']').show();
  });
});