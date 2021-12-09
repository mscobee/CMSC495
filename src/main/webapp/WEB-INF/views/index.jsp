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
      	<p>It&apos;s time to kick your cable box, and cable TV bill, to the curb. Thanks to streaming, you don&apos;t need cable or satellite service anymore to watch all of the TV shows, movies, news and sporting events live or on-demand. And if you&apos;re used to your cable box&apos;s DVR, live TV streaming services offer cloud DVRs of their own that work in the same way, no box required. All you need to cut the cord is a good internet connection and the apps built into your smart TV or running on an inexpensive streamer, such as a Roku or Amazon Fire TV.</p>
		<p>More Americans than ever are cutting the cable TV cord in favor of streaming services such as Netflix, Amazon Prime Video, Disney Plus, HBO Max and Hulu. There are thousands of TV shows and movies to stream on-demand, but that&apos;s just the beginning. Direct cable replacement services like Sling TV and YouTube TV start at $25 per month and can stream most of the live channels, sports and news available on your cable box with no contracts to sign, so you can cancel anytime. And if you don&apos;t want to pay at all, numerous other services stream free TV shows, free movies and even live news.</p>
		<p>Whether your favorite shows are on Netflix or NBC, Disney Plus or ESPN, Amazon Prime or your local ABC, Fox or PBS station, you can probably stream them without ever needing to use a cable or satellite TV box.</p>
		<p>Here's how to get started, start by entering your info below to compare your cable service to the top streaming services.</p>
		<p>Katzmaier, D. (2021, Oct 17). <em>You&apos;re paying way too much for cable TV. Here&apos;s exactly how to cut the cord in 2021</em>. Retrieved from https://www.cnet.com/tech/home-entertainment/how-to-cut-the-cord/</p>
	</article>
    <aside class="right_article"><img src="images/CutTheCord_V2.jpg" alt="" width="400" height="200" class="placeholder"/> </aside>
  </section>
  <div class="row">  
      <div class="split">
        <h2>Your Info</h2>
        <form:form action="submit" method="post" modelAttribute="user">
            <form:label path="name">First name:</form:label>
            <form:errors path="name" cssClass="error" />
            <form:input path="name"/>
            <br/>
            
             
            <form:label path="email">E-mail:</form:label>
            <form:errors path="email" cssClass="error" />
            <form:input path="email"/>
            <br/>
            

            <form:label path="provider">Cable Provider:</form:label>
            <form:select path="provider">
              <form:option value="fios" label="FiOS"/>
              <form:option value="cox" label="Cox"/>
              <form:option value="comcast" label="Comcast"/>
            </form:select>
            <br/>

            
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
            <br/>
            
            <input type="Submit" value="Submit">                 
			<input type="reset" value="Reset">
        </form:form>
     </div>
     <div class="split">
     </div>
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