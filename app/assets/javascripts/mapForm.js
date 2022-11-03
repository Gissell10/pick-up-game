function initMap() {
  const myLatlng = { lat: -25.363, lng: 131.044 };
  const latInput = document.getElementById("lat");
  const lngInput = document.getElementById("lng");

  const map = new google.maps.Map(document.getElementById("map"), {
    zoom: 4,
    center: myLatlng,
  });

  // Configure the click listener.
  map.addListener("click", (mapsMouseEvent) => {
    console.log(mapsMouseEvent.latLng.lat());
    latInput.value = mapsMouseEvent.latLng.lat();
    lngInput.value = mapsMouseEvent.latLng.lng();
  });
}
