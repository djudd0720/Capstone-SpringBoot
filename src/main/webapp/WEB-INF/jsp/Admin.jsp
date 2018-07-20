<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- use these 4 taglilbs when using forms -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="./styles/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Custom styles for this template -->
    <link href="./styles/carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Admin</title>
<!-- Bootstrap core CSS -->
    <link href="./styles/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
<!-- <style>-->
<!-- body {
        background-image: url(".//images//californiawildfires.jpg");
}  -->
 
<!--</style> -->
<style>
	div.background {
	  background: url(".//images//harveyflood.jpg") repeat;
	  border: 2px solid black;
	}
	
	div.transbox {
	  margin: 30px;
	  background-color: #ffffff;
	  border: 1px solid black;
	  opacity: 0.6;
	  filter: alpha(opacity=60); /* For IE8 and earlier */
	}
	
	div.transbox p {
	  margin: 5%;
	  font-weight: bold;
	  color: #000000;
	}
	</style>
</head>
<body>
<!-- Menu -->
	<header>
    
       <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">ConnectOurHearts</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
      <!-- <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">Filter:</span>-->
      <button class="w3-button w3-black"><a href="/final-project/">HOME</button></a>
      
     <a href="about"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>About</button></a>
		<!-- <a href="about">About</a> -->
		<a href="allEvents"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>Opportunities</button></a>
	<a href="register"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>Register</button></a>
      <a target="_blank"  href="login"><button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>Login</button></a>
      <!-- <a class="btn btn-lg btn-primary" href="donate" role="button">Donate</a> -->
	</nav>
</header>

	
 
  
  <div class="background">
  <div class="transbox">
    <p><div class="container">
    
    <!-- ADMIN PAGE - ADD, UPDATE AND REMOVE EVENTS (OTHER FEATURES/CATEGORIES TO BE ADDED LATER) -->
    <h1>ADMIN PAGE</h1>
	
    <p>Please fill in this form to add an Event.</p>
    <hr>
    
   <!--  SPRING FORM FOR ADDING EVENTS -->
   
    <form:form action="admin" method="post" modelAttribute="myEvent">
    
    
    <label for="nameOfEvent"><b>Event Name: </b></label>
    <form:input path="nameOfEvent" />
    <label for="dateOfEvent"><b>Date Of Event: </b></label>
    <form:input path="dateOfEvent" />
    <br>
    <label for="eventDesc"><b>Description: </b></label>
    <form:input path="eventDesc" />
    <br>
    <label for="contact"><b>Contact Name:</b></label>
    <form:input path="contact" />
    <label for="contactEmail"><b>Contact Email:</b></label>
    <form:input path="contactEmail" />
    <br>
   
    <label for="city"><b>City: </b></label>
    <form:input path="city" />
    <label for="state"><b>State: </b></label>
    <form:input path="state" />
    
  
    
    <label for="volunteersNeeded"><b># of Volunteers needed: </b></label>
    <form:input path="volunteersNeeded" />
  
    <hr>

    
    <!-- <a class="btn btn-lg btn-primary" role="button">Add Event</a> -->
    <button type="submit" class="registerbtn"><b>Add Event</b></button>
    </form:form> 
    <!--<a class="btn btn-lg btn-primary" href="donate" role="button">Donate</a> -->
  </div>
  </div>
</div>

  

</body>
</html>
