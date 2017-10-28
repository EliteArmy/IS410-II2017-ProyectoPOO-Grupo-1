var api = "AIzaSyDRSMtngTTbSi1UdxACNVgpDZyYrEp8Qic";

var map;
function initMap() {
  	map = new google.maps.Map(document.getElementById('map'), {
    	center: {lat: 15.5042923, lng: -88.0187848},
    	zoom: 10
  	});
}