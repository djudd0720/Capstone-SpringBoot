<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- use these 4 taglilbs when using forms -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- LOGIN PAGE -->
<title>Login</title>
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
<link href="./styles/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<body>

<!-- SPRING FORM FOR LOGIN -->		
  
    <form:form action="login" method="post" modelAttribute="user">
		<div class="background">
		
  <div class="transbox">
    <p><div class="container">
    
    <p><h1>Welcome Volunteers and Contributors!</h1></p>
	<h3>Please sign in:</h3>
    <hr>

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <label for="password2"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="password2" required>
    <hr>

    <b>By creating an account you agree to our</b> <a href="#">Terms & Privacy</a>.
    <p><button type="submit" class="registerbtn">Sign In</button></p>
  </div></p>
  </div>
</div>
	
	
	</form:form>
    
  </body>
  
</html>