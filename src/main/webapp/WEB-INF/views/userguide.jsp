<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.text.SimpleDateFormat" %>   
<!DOCTYPE html>
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
        <h2>Cord Cutter Web App User Guide</h2>
		<h3>1.1 Prerequisites to Using a Streaming Service</h3>
		<p>Users must be aware that before switching from cable television to a streaming service there are multiple prerequisite purchases that must be made. This application will not include these costs, but if you populate the table below with the items of your choosing and cost you will have a good estimate of these costs.</p>
		<h3>1.1.1 Internet</h3>
		<p>If you have an internet service great if you don&rsquo;t then you will need one. The recommended internet speed for high-definition television is 25 Mbps. If you are unsure of your internets connection speed please go to the following URL and check your speed, <a href="https://www.speedtest.net/">https://www.speedtest.net/</a>. If you currently have faster that 25Mbps great, if you do not have any internet or it is lower than 25Mbps you will need to acquire/upgrade internet services. The current average internet plan for 25Mbps is $35.00 per month.</p>
		<h3>1.1.2 Streaming Device</h3>
		<p>There are many options for streaming devices, ranging in costs from a few dollars to thousands of dollars. If you have a smart TV, you may not have the full options offered by this web application as some smart televisions do not offer all streaming services. The most compatible devices you can get for streaming television is one of the four following devices: FireTV, AppleTV, Chromecast or RoKU. Each of these devices can be googled and each offers a wide variety of technology the minimal option of each will produce a comparable image to your current cable box. Estimated costs for the most common &lsquo;stick style&rsquo; streaming device is currently valued at $50.00.</p>
		<h3>1.1.3 Assumptions About Your Home</h3>
		<p>Besides the previous prerequisites this guide will assume the following about your household television set-up.</p>
		<p>It is assumed that:</p>
		<ul>
		<li>Your television has an HDMI port</li>
		<li>You have cable TV (This app only compares streaming vs cable TV)</li>
		<li>You have an available 110v outlet or USB to power your streaming device.</li>
		</ul>
		<h3>1.1.4 Cost Estimate Table</h3>
		<p>Use the table below to help estimate your costs. These costs can be added to your comparison report produced from the app to produce a more realistic cost comparison. Below you can enter your new cost followed by old cost then calculate the difference and record the number. After each row has been accomplished you can then take the sum for all your costs for the result or total.</p>
		<table style="border-color: black; background-color: white; margin-left: auto; margin-right: auto;" border="1">
		<tbody>
		<tr style="border-color: black; height: 35.0312px;">
		<td style="border-color: black; width: 161px; height: 35.0312px;" width="161">&nbsp;</td>
		<td style="border-color: black; width: 161px; height: 35.0312px;" width="161">
		<p>New cost</p>
		</td>
		<td style="border-color: black; width: 161px; height: 35.0312px;" width="161">
		<p>Old Cost</p>
		</td>
		<td style="border-color: black; width: 161px; height: 35.0312px;" width="161">
		<p>New Minus Old Cost</p>
		</td>
		</tr>
		<tr style="border-color: black; height: 35px;">
		<td style="border-color: black; width: 161px; height: 35px;" width="161">
		<p>Internet</p>
		</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		</tr>
		<tr style="border-color: black; height: 35px;">
		<td style="border-color: black; width: 161px; height: 35px;" width="161">
		<p>Streaming device</p>
		</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		</tr>
		<tr style="border-color: black; height: 35px;">
		<td style="border-color: black; width: 161px; height: 35px;" width="161">
		<p>Other</p>
		</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		</tr>
		<tr style="border-color: black; height: 35px;">
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">
		<p>Total</p>
		</td>
		<td style="border-color: black; width: 161px; height: 35px;" width="161">&nbsp;</td>
		</tr>
		</tbody>
		</table>
		<h3>1.2 Using the Cord Cutter Web App</h3>
		<h3>1.2.1 Navigate to the website</h3>
		<p>First you need to navigate to the cord cutter web application (<a href="https://cmsc495t2.pages.dev/">https://cmsc495t2.pages.dev/</a>) using your default web browser as seen below.</p>
		<h3>1.2.2 Enter your details</h3>
		<p>First you will tell us your first name, email and zip code:</p>
		<h3>1.2.3 Select your TV Provider</h3>
		<p>Now you must choose your cable provider currently we only compare FiOS, Cox and Comcast.</p>
		<h3>1.2.4 Select your Channel Package</h3>
		<p>Based on which provider you chose you will now be presented with the package options that provider offers. Please note this information only uses the newest package offerings, if your package is not listed choose the option that is closest to your current package subscription. Below is an example if FiOS is your Cable Provider.</p>
		<h3>1.2.5 Confirm and Submit</h3>
		<p>Here you can ensure all your entries are correct and if so click &lsquo;Submit&rsquo; if you wish you may also &lsquo;Reset&rsquo; all fields.</p>
		<h3>1.2.6 Analyze and Print/Save your Report</h3>
		<p>This final step you will be redirected to your cost/channel comparison report. This report will show you any savings you will see if switching to streaming services and also if you will have all your current programming options.</p>
		<p>* Note most streaming services offer live tv options but this comparison will not show weather or not this is offered.</p>
		<h3>1.3 Submit A Help Ticket</h3>
		<p>From the web applications navigation menu select the &lsquo;Contact&rsquo; option. This will take you to the contact form as show below:</p>
    </article>
    <aside class="right_article"><img src="images/placeholder.jpg" alt="" width="400" height="200" class="placeholder"/> </aside>
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