<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CMSC495 Team Two - Cord Cutter WebApp</title>
<link href="css/multiColumnTemplate.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="container">
  <header>
    <div class="primary_header">
      <h1 class="title"> CORD CUTTER PROJECT&nbsp;</h1>
    </div>
	<center>
    <nav class="secondary_header" id="menu">
      <ul>
		<a href="index"><li>HOME</li></a> 
		<a href="about"><li>ABOUT</li></a> 
		<a href="userguide"><li>USER GUIDE</li></a> 
		<a href="contact"><li>CONTACT</li></a>  
      </ul>
    </nav>
	</center>
  </header>
  <section>
    <h2 class="noDisplay">Main Content</h2>
    <article class="left_article">
      <h3>CabLE TV is ON ITS WAY OUT</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>    
    </article>
    <aside class="right_article"><img src="images/placeholder.jpg" alt="" width="400" height="200" class="placeholder"/> </aside>
  </section>
  <div class="row">  
      <div class="columns">
        <h2>Your Info</h2>
        <form:form action="submit" method="post" modelAttribute="user">
            <form:label path="name">First name:</form:label>
            <form:errors path="name" cssClass="error" />
            <form:input path="name"/><br/>
            
             
            <form:label path="email">E-mail:</form:label>
            <form:errors path="email" cssClass="error" />
            <form:input path="email"/><br/>
            

            <form:label path="provider">Cable Provider:</form:label>
            <form:select path="provider">
              <form:option value="fios" label="FiOS"/>
              <form:option value="cox" label="Cox"/>
              <form:option value="comcast" label="Comcast"/>
            </form:select>

            
            <form:label path="channels">Channel Package:</form:label>
            <form:select path="channels">
              <form:option value="FIOS1" label="The Most FiOS TV"/>
              <form:option value="FIOS2" label="More FiOS TV"/>
              <form:option value="cox1" label="Contour TV Starter"/>
              <form:option value="cox2" label="Contour TV Preferred"/>
              <form:option value="cox3" label="Contour TV Preferred Plus"/>
              <form:option value="cox4" label="Contour TV Ultimate"/>
              <form:option value="comcast1" label="STANDARD+"/>
              <form:option value="comcast2" label="SELECT+"/>
              <form:option value="comcast3" label="SIGNATURE+"/>
              <form:option value="comcast4" label="SUPER+"/>
            </form:select>
            
            <input type="Submit" value="Submit">                 
			<input type="reset" value="Reset">
        </form:form>
    </div>
<div class="row blockDisplay">
    <div class="column_half left_half">
      <h2 class="column_title"><%= new SimpleDateFormat("E, MMMM dd yyyy").format(new java.util.Date())%></h2>
    </div>
    <div class="column_half right_half">
      <h2 class="column_title"><%= new SimpleDateFormat("HH:mm:ss, z").format(new java.util.Date())%></h2>
    </div>
  </div>
  <div class="social">
    <p class="social_icon"><img src="images/bkg_06.jpg" width="100" alt="" class="thumbnail"/></p>
    <p class="social_icon"><img src="images/bkg_06.jpg" width="100" alt="" class="thumbnail"/></p>
    <p class="social_icon"><img src="images/bkg_06.jpg" width="100" alt="" class="thumbnail"/></p>
    <p class="social_icon"><img src="images/bkg_06.jpg" width="100" alt="" class="thumbnail"/></p>
  </div>
  <footer class="secondary_header footer">
    <div class="copyright">&copy;2021 - <strong>AWESOME PROJECT</strong></div>
  </footer>
</div>
</body>
</html>