function initMap() {
  const coords = document.getElementById("map");
  const city = {
    lat: parseFloat(coords.getAttribute("data-lat")),
    lng: parseFloat(coords.getAttribute("data-lng")),
  };
  console.log(city);
  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 10,
    center: city,
  });
}
