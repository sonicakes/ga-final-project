const url = 'http://api.openweathermap.org/data/2.5/weather?q=London&units=metric&appid=36a9dfc29f21bc67501304d573465e4f';
$(document).ready(function() {
  if (!$('#data').length) {
    // There is no map div on this page, so don't run code below
    return;
  }
  if (!$('#weather').length) {
    // There is no map div on this page, so don't run code below
    return;
  }
  if (!$('#temperature').length) {
    // There is no map div on this page, so don't run code below
    return;
  }
  $.getJSON(url, function(weatherInfo) {
    const location = JSON.stringify(weatherInfo.name + ", " + weatherInfo.sys.country).replace(/\"/g, "");
    $("#data").html(location);
    var weatherData = JSON.stringify(weatherInfo.weather[0].description).replace(/\"/g, "");
    temp = JSON.stringify(Math.round(weatherInfo.main.temp)).replace(/\"/g, "");
    $("#weather").html(weatherData);
    $("#temperature").html(temp + " &#8451");
    //&#8457 - Farenheit
    var pic = "";
    pic += "<img src = '" + weatherInfo.weather[0].icon + "' " + "alt='" + "'>";
    $("#icon").html(pic);

  });
});