function drawWeatherForLocation(tourDayId) {

  const tourDayTitle = $('#tour-day-title-' + tourDayId).html();
  const url = 'https://api.openweathermap.org/data/2.5/weather?q=' + tourDayTitle + '&units=metric&appid=36a9dfc29f21bc67501304d573465e4f';


  $.getJSON(url, function(weatherInfo) {
    const location = JSON.stringify(weatherInfo.name + ", " + weatherInfo.sys.country).replace(/\"/g, "");
    $('#data-' + tourDayId).html(location);
    var weatherData = JSON.stringify(weatherInfo.weather[0].description).replace(/\"/g, "");
    temp = JSON.stringify(Math.round(weatherInfo.main.temp)).replace(/\"/g, "");
    $('#weather-' + tourDayId).html(weatherData);
    $('#temperature-' + tourDayId).html(temp + " &#8451");
    var pic = "";
    var iconNumber = weatherInfo.weather[0].icon;
    var pic = `<img src= "http://openweathermap.org/img/w/${iconNumber}.png">`;
    $("#icon-" + tourDayId).html(pic);
    console.log(pic);
  });
}


$(document).ready(function() {

  $('div.tour-day-details').each(function() {
    drawWeatherForLocation($(this).attr('data-tour-day-id'));
  });

});