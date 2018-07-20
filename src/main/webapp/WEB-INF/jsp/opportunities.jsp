
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- use these 4 taglilbs when using forms -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- /* set map size*/ -->
<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Opportunities</title>
</head>
<body>
<header>
    
       <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">ConnectOurHearts</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
      <!-- <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">Filter:</span>-->
      
      <a href="/final-project/"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>HOME</button></a>
      <!-- <button class="w3-button w3-black"><a href="/final-project/">Home</a></button> -->
      <a href="register"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>Register</button></a>
     <a href="about"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>About</button></a>
		<!-- <a href="about">About</a> -->
		<a href="opportunities"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>Opportunities</button></a>

      <a target="_blank"  href="login"><button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>Login</button></a>
      <a class="btn btn-lg btn-primary" href="donate" role="button">Donate</a>
</nav>
</header>
<h1>This is the Volunteer Opportunities page</h1>
<h2>Please select a location:</h2>
<form action="">
<div class="row">
						<div class="col-md-5 mb-3">
							<label for="country">Country</label> <select
								class="custom-select d-block w-100" id="country" required>
								<option value="">Choose...</option>
								<option>United States</option>
							</select>
							<div class="invalid-feedback">Please select a valid
								country.</div>
						</div>
						<div class="col-md-4 mb-3">
							<label for="state">State</label> <select
								class="custom-select d-block w-100" id="state" required>
								<option value="">Choose...</option>
								<option>California</option>
								<option>Florida</option>
								<option>Missouri</option>
								<option>North Carolina</option>
								<option>Virginia</option>
							</select>
							<div class="invalid-feedback">Please provide a valid state.
							</div>
						</div>
						<div class="col-md-3 mb-3">
							<label for="zip">Zip</label> <input type="text"
								class="form-control" id="zip" placeholder="" required>
							<div class="invalid-feedback">Zip code required.</div>
						</div>
					</div>
</form>

<div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 2,
          center: new google.maps.LatLng(38.6270, -90.1994),
          mapTypeId: 'terrain'
        });

        // Create a <script> tag and set the USGS URL as the source.
        var script = document.createElement('script');
        // This example uses a local copy of the GeoJSON stored at
        // http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_week.geojsonp
        script.src = 'https://developers.google.com/maps/documentation/javascript/examples/json/earthquake_GeoJSONP.js';
        document.getElementsByTagName('head')[0].appendChild(script);
      }
      
   // Loop through the results array and place a marker for each
      // set of coordinates.
      window.eqfeed_callback = function(results) {
        for (var i = 0; i < results.features.length; i++) {
          var coords = results.features[i].geometry.coordinates;
          var latLng = new google.maps.LatLng(coords[1],coords[0]);
          var marker = new google.maps.Marker({
            position: latLng,
            map: map
          });
        }
      }



<!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCayZTz6lUIV2_YbzB6K7czV-Y1A1zBVw &callback=initMap"
  type="text/javascript"></script> -->

</body>
</html>