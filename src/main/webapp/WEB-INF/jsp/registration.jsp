<!-- REGISTER NEW USER
================================================== --> 


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

<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">
    
   <link href="./styles/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./styles/carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Register</title>

<style>
div.background {
  background: url(".//images//californiawildfires.jpg") repeat;
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

<!-- Menu 
================================================== -->
<header>
    
       <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">ConnectOurHearts</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
      
      <a href="/final-project/"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>HOME</button></a>
      
     <a href="about"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>About</button></a>
		
		<a href="allEvents"><button class="w3-button w3-white"><i class="fa fa-diamond w3-margin-right"></i>Opportunities</button></a>
	  <a target="_blank"  href="radarMap"><button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>Weather</button></a>
	  <a href="#"><button class="w3-button w3-black"><i class="fa fa-diamond w3-margin-right"></i>Register</button></a>
      <a target="_blank"  href="login"><button class="w3-button w3-white w3-hide-small"><i class="fa fa-photo w3-margin-right"></i>Login</button></a>
      
      <a class="btn btn-lg btn-primary" href="donate" role="button">Donate</a>
</nav>
</header>

  <div class="background">
  <div class="transbox">
    <p><div class="container">
    <h1>Thank you for registering! We look forward to seeing you.</h1>
	<br>
    <p>Please fill in this form to create an account.</p>
    <hr>
    <!-- SPRING FORM NOTATION TO REGISTER USER
    ================================================== -->
    <form:form action="register" method="Post" modelAttribute="user">
    <label for="fname"><b>First Name: </b></label>
    <form:input path="fName" />
    <label for="lname"><b>Last Name: </b></label>
    <form:input path="lName" />
    <label for="phone"><b>Phone Number: </b></label>
    <form:input path="phone" />
    <br>
    <label for="email"><b>Email</b></label>
    <form:input path="email" />
    
     <label for="password"><b>Password</b></label>
    <form:input path="password" />
   

    <hr>

    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
    <p>Already have an account? <a href="login">Sign in</a>.</p>
    <button type="submit" class="registerbtn">Register</button>
    </form:form> 
  </div>
  </div>
</div>


</body>
</html>