// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//





//++++++++++++++++ for gps map ++++++++++++++++

/*
function initialize() {
var mapOptions = {
 center: new google.maps.LatLng(-33.8688, 151.2195),
 zoom: 13
};
var map = new google.maps.Map(document.getElementById('map-canvas2'),
 mapOptions);

var input = (
   document.getElementById('source'));


var autocomplete = new google.maps.places.Autocomplete(input);
autocomplete.bindTo('bounds', map);

var infowindow = new google.maps.InfoWindow();


google.maps.event.addListener(autocomplete, 'place_changed', function() {
 infowindow.close();

 var place = autocomplete.getPlace();
 if (!place.geometry) {
   window.alert("Autocomplete's returned place contains no geometry");
   return;
 }

 // If the place has a geometry, then present it on a map.
 

 var address = '';
 if (place.address_components) {
   address = [
     (place.address_components[0] && place.address_components[0].short_name || ''),
     (place.address_components[1] && place.address_components[1].short_name || ''),
     (place.address_components[2] && place.address_components[2].short_name || '')
   ].join(' ');
 }

 infowindow.setContent('<div><strong>' + place.name + '</strong><br>' + address);
 
});


}

google.maps.event.addDomListener(window, 'load', initialize);
*/


function initialize() {
  var lat=  parseFloat(document.getElementById('latitude').innerHTML.trim())
  var lng=  parseFloat(document.getElementById('longitude').innerHTML.trim())
  var myLatlng = new google.maps.LatLng(lat,lng);
  var mapOptions = {
    zoom: 17,
    center: myLatlng
  }
  var map = new google.maps.Map(document.getElementById('map-canvas3'), mapOptions);

  var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      
  });
}

google.maps.event.addDomListener(window, 'load', initialize);




function getLocation(e) {
    e.preventDefault();
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }    
}


function run(position){
  var city;
       var lat    = position.coords.latitude,
      lng    = position.coords.longitude,
      latlng   = new google.maps.LatLng(lat, lng),
      geocoder = new google.maps.Geocoder();
    geocoder.geocode({'latLng': latlng}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        if (results[1]) {
          for (var i = 0; i < results.length; i++) {
            if (results[i].types[0] === "locality") {
              city = results[i].address_components[0].short_name;
             
            }
          }
        }
        else {console.log("No reverse geocode results.")}
      }
      else {console.log("Geocoder failed: " + status)}
    });

}

function showPosition(position) {
   // alert(position.coords.latitude);
    //alert(position.coords.longitude);
run(position);
    document.getElementById('addonmap_latitude').value = position.coords.latitude;
    document.getElementById('addonmap_longitude').value = position.coords.longitude;

//document.getElementById('complaint_city_name').value =first_result.city ;
    
    console.log(position.coords.latitude)
    setTimeout(doSomething, 3000);

function doSomething() {
  document.getElementById('new_addonmap').submit();
}

}



// ============================= for rescue location





