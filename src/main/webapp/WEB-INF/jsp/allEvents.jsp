<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- use these 4 taglilbs when using forms -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- DYNAMICALLY DISPLAY ALL EVENTS AVAILABLE AND MAP LOCATIONS
==================================================  -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
   
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
    
   <link href="./styles/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    
    <link href="carousel.css" rel="stylesheet">
    <link href="./styles/carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 50%;
}

td, th {
	border: 3px solid #8e8e8e;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #8e8e8e;
}

    #map{
      height:400px;
      width:100%;
      /* margin: 35px 700px; */
        /* padding: 0; */
      
    }
  
</style>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>Events</title>
<!-- Bootstrap core CSS -->
    <link href="./styles/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
</head>
<body>
<header>
    
       <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">ConnectOurHearts</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
     
      
      <a href="/final-project/"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>HOME</button></a>
           
     <a href="about"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>About</button></a>
		<!-- <a href="about">About</a> -->
		<a href="#"><button class="w3-button w3-black"><i class="fa fa-diamond w3-margin-right"></i>Opportunities</button></a>
	  <a target="_blank"  href="radarMap"><button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>Weather</button></a>
	  <a href="register"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>Register</button></a>
      <a target="_blank"  href="login"><button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>Login</button></a>
      <a class="btn btn-lg btn-primary" href="donate" role="button">Donate</a>
</nav>
</header>

<br>
<br>
<br>
<h2>List Of Events</h2>

<!-- LOOP THROUGH EVENTS IN DATABASE AND DISPLAY AS TABLE
================================================== -->
<c:forEach var="eve" items="${events}" >
<form:form action="success" method="Post" modelAttribute="user">

<div class="gallery">
		
		<div class="desc">
			<table>
				<tr>
					<th>Event</th>
					<th>Specifics</th>

				</tr>
				<tr>
					<td>Event ID</td>
					<td><c:out value="${eve.eventId}" /></td>
					</tr>
				
				<tr>
					<td>Date</td>
					<td><c:out value="${eve.dateOfEvent}" /></td>

				</tr>
				<tr>
					<td>Event Name</td>
					<td><c:out value="${eve.nameOfEvent}" /></td>

				</tr>
				<tr>
					<td>Event Description</td>
					<td><c:out value="${eve.eventDesc}" /></td>

				</tr>
				<tr>
				<td>City/State</td>
					<td><c:out value="${eve.city}, ${eve.state }" /></td>

				</tr>
				<tr>
					<td>Volunteers Needed</td>
					<td><c:out value="${eve.volunteersNeeded}" /></td>

				</tr>
				<tr>
					<td>Contact Name</td>
					<td><c:out value="${eve.contact}" /></td>

				</tr>
				<tr>
					<td>Contact Email</td>
					<td><c:out value="${eve.contactEmail}" /></td>

				</tr>
			</table>

<br>
 <!-- SUBMIT WILL SEND TEXT CONFIRMATION -->
<a href="success"><button type="submit"
					name="success" class="btn" value="">Sign Up</button></a>
<br>
<br>

</form:form> 


</c:forEach>

<!-- Map of Events -->

  <h1>Event Locations</h1>
  <div id="map"></div>
  <script>
    function initMap(){
      // Map options
      var options = {
        zoom:4.2,
        center:{lat:42.3601,lng:-71.0589}
      }

      // New map
      var map = new google.maps.Map(document.getElementById('map'), options);

      // Listen for click on map
      google.maps.event.addListener(map, 'click', function(event){
        // Add marker
        addMarker({coords:event.latLng});
      });

      /*
      // Add marker
      var marker = new google.maps.Marker({
        position:{lat:42.4668,lng:-70.9495},
        map:map,
        icon:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
      });

      var infoWindow = new google.maps.InfoWindow({
        content:'<h1>Lynn MA</h1>'
      });

      marker.addListener('click', function(){
        infoWindow.open(map, marker);
      });
      */

      // Array of markers
      var markers = [
        {
          coords:{lat:36.8529,lng:-75.9780},
          iconImage:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
          content:'<h1>VA Beach, VA</h1>'
        },
        {
          coords:{lat:35.5585,lng:-75.4665},
          content:'<h1>Outer Banks, NC</h1>'
        },
        {
            coords:{lat:38.6270,lng:-90.1994},
            content:'<h1>St Louis, MO</h1>'
        },
        {
          coords:{lat:24.5551,lng:-81.7800},
          content:'<h1>Key West, FL</h1>'
        }
      ];

      // Loop through markers
      for(var i = 0;i < markers.length;i++){
        // Add marker
        addMarker(markers[i]);
      }

      // Add Marker Function
      function addMarker(props){
        var marker = new google.maps.Marker({
          position:props.coords,
          map:map,
          //icon:props.iconImage
        });

        // Check for customicon
        if(props.iconImage){
          // Set icon image
          marker.setIcon(props.iconImage);
        }

        // Check content
        if(props.content){
          var infoWindow = new google.maps.InfoWindow({
            content:props.content
          });

          marker.addListener('click', function(){
            infoWindow.open(map, marker);
          });
        }
      }
    }
  </script>
  <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCayZTz6lUIV2_YbzB6K7czV-Y1A1zBVw&callback=initMap"
  type="text/javascript"></script>

</body>
</html>