<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
  <div class="row">  
    <div align="center">
        <h2>If choices are correct please press continue, if choices are not correct press back to return to form.</h2>
        <span>Full name: </span><span>${user.name}</span><br/>
        <span>E-mail: </span><span>${user.email}</span><br/>
        <span>Cable Provider: </span><span>${user.provider}</span><br/>
        <span>TV Package: </span><span>${user.channels}</span><br/>
        <%-- ${user} --%>
        
        <table>
        <tr>
        <form:form action="results" method="post" modelAttribute="user">
        	<input type="Submit" value="Continue">
        </form:form>
        
        <form:form action="back" method="post" modelAttribute="user">
   			<form:input type="hidden" path="id" value="${user.id}"/>
        	<input type="Submit" value="Back"> 
        </form:form>
        </tr>
        </table>
    </div>
    </article>
    <aside class="right_article"><img src="images/CutTheCord_V2.jpg" alt="" width="400" height="200" class="placeholder"/> </aside>
  </section>
  <div class="row">  

<div class="row blockDisplay">
    <div class="column_half left_half">
      <h2 class="column_title"><%= new SimpleDateFormat("E, MMMM dd yyyy").format(new java.util.Date())%></h2>
    </div>
    <div class="column_half right_half">
      <h2 class="column_title"><%= new SimpleDateFormat("HH:mm:ss, z").format(new java.util.Date())%></h2>
    </div>
  </div>
  <div class="social">
    <p class="social_icon"><img src="images/youtube.jpg" width="100" alt="" class="thumbnail"/></p>
    <p class="social_icon"><img src="images/fubo.png" width="100" alt="" class="thumbnail"/></p>
    <p class="social_icon"><img src="images/Sling.png" width="100" alt="" class="thumbnail"/></p>
    <p class="social_icon"><img src="images/Philo.jpg" width="100" alt="" class="thumbnail"/></p>
  </div>
  <footer class="secondary_header footer">
    <div class="copyright">&copy;2021 - <strong>AWESOME PROJECT</strong></div>
  </footer>
</div>
</body>
</html>