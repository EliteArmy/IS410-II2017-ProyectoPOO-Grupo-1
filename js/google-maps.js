var api = "AIzaSyDRSMtngTTbSi1UdxACNVgpDZyYrEp8Qic";

function initMap() {
	var latLng = {
		lat: 14.0834956, 
		lng: -87.1631161
	};

  	var map = new google.maps.Map(document.getElementById('map'), {
    	'center': latLng,
    	'zoom': 14,
    	'mapTypeId': google.maps.MapTypeId.ROADMAP
  	});

  	var informacion = new google.maps.InfoWindow({
  		content: 'UNAH'
  	});

  	var marker = new google.maps.Marker({
  		position: latLng,
  		map: map,
  		title: 'UNAH',
  		label: '8.2'
  	});

  	marker.addListener('click', function () {
  		informacion.open(map, marker);
  	});
}