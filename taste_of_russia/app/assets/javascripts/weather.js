$(document).ready(function() {
  const url = 'http://api.openweathermap.org/data/2.5/weather?q=' + city + '&units=metric&appid=36a9dfc29f21bc67501304d573465e4f';

  console.log(city);
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
    // //&#8457 - Farenheit
    // var pic = "";
    // pic += "<img src = 'http://openweathermap.org/img/w/10d.png' style = 'width:200; height:200;'";
    // $("#icon").html(pic);
    var pic = "";
    var iconNumber = weatherInfo.weather[0].icon;
    var pic = `<img src= "http://openweathermap.org/img/w/${iconNumber}.png"`;
    $("#icon").html(pic);
    console.log(pic);
  });
});