<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
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
    <h2 class="noDisplay">REPORT</h2>
    <article class="left_article">
	<div class="container">
	  <form action="action_page.php">

		<label for="fname">First Name</label>
		<input type="text" id="fname" name="firstname" placeholder="Your name..">

		<label for="lname">Last Name</label>
		<input type="text" id="lname" name="lastname" placeholder="Your last name..">
		<label for="subject">Subject</label>
		<textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

		<input type="submit" value="Submit">

	  </form>
	</div>
  </article>
  </section>
  <div class="row blockDisplay">
    <div class="column_half left_half">
      <h2 class="column_title">DATE</h2>
    </div>
    <div class="column_half right_half">
      <h2 class="column_title">TIME</h2>
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
