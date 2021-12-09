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
      <h2>About the streaming services offered on this site:</h2>
      	<h3>YouTube TV</h3>
		<p>YouTube TV is a great all-around cable replacement service with an impressive range of sports, news, and entertainment channels. Aside from the typical broadcast networks (ABC, CBS, FOX, and NBC), the service includes popular news channels (BBC World News CNN, CNBC, FOX News, and MSNBC) and top sports networks (ESPN, Golf Channel, MLB Network, NBA TV, NBC Sports Network, and NFL Network). YouTube TV also features mainstream channels from the Discovery Network and ViacomCBS, plus local PBS channels. HBO Max, NBA League Pass, Showtime, and Starz, among other services, are available as subscription add-ons.</p>
		<p>With YouTube TV, you can record an unlimited amount of content to DVR storage and keep recordings for up to nine months. The service also supports up to three simultaneous device streams per account. A new 4K Plus add-on unlocks 4K streaming for live channels and on-demand content; support for an unlimited number of simultaneous streams on your home network; and the ability to download DVR content for offline viewing on mobile platforms. The YouTube TV app is no longer available on the Roku Channel Store, but Roku users who already had the YouTube TV app installed can continue to use it and YouTube TV has made the live TV experience accessible from the main YouTube app.</p>
		<h3>fuboTV</h3>
		<p>Although fuboTV may be associated with sports coverage, its 90-channel lineup also delivers lots of news and entertainment channels. Dedicated sports channels include beIN network, ESPN, NFL Network, NBA TV, and Univision. FuboTV offers all the local broadcast networks (ABC, CBS, FOX, and NBC) too, but it no longer has Turner channels, including CNN. Channels from ViacomCBS and the Discovery Network are the latest additions to fuboTV&apos;s entertainment lineup. Aside from the live programming on these channels, fuboTV offers a ton of on-demand shows and movies too.</p>
		<p>You can supplement fuboTV&apos;s lineup collection with add-ons, such as the Sports Plus with NFL RedZone ($10.99 per month) and Adventure Plus ($4.99 per month) options. Fubo Extra, which offers an additional 35 channels of content, adds $4.99 more to your monthly bill.</p>
		<p>FuboTV offers good DVR capabilities (the base plan includes 250 hours) and solid streaming performance in our tests. It also includes useful capabilities such as Lookback, which lets you watch anything you may have missed up to 72 hours after it first aired, and Startover, which enables viewers to watch currently airing events from the beginning no matter when they tune in.</p>
		<h3>Philo</h3>
		<p>Philo is an entertainment-focused streaming service and an excellent value. A subscription lets you stream 60 channels, including AMC, Animal Planet, BBC America, BET, Cooking Chanel, Comedy Central, Discovery Channel, Food Network, HGTV, and the Travel Channel. Philo offers few news channels and no sports coverage, so it&apos;s best for users who don&apos;t care about either genre.</p>
		<p>Philo&apos;s DVR capabilities work differently than other services; it allows users to save the entire available catalog of a show for on-demand (but not offline) viewing, instead of just a single episode. Philo keeps saved content for up to a year and does not impose any storage limits. Philo supports up to three concurrent streams and performed well across all platforms in testing. The service recently added Starz and Epix channel add-ons.</p>
		<h3>Sling TV</h3>
		<p>Sling TV distributes channels across its Orange and Blue plans. You should subscribe to the combined $50-per-month Sling Orange &amp; Blue plan for the best selection of channels. That tier supports four simultaneous streams. Sling Orange and Blue&apos;s 50-channel lineup includes AMC, CNN, Disney Channel, ESPN, Food Network, FOX News, NFL Network, TNT, Travel Channel, and Syfy. Note, however, that Sling TV is not the best option for getting local affiliate channels; if you want to watch ABC, you need to install an antenna. CBS affiliates are not available at all. NBC and FOX local channels are available only in select markets.</p>
		<p>Sling&apos;s channel add-ons start at $6 per month. For instance, the Kids Extra add-on includes Disney XD, Nicktoons, and Boomerang, while the Sports Extra add-on features ESPN U, NBA TV, NHL Network, and PAC 12 Network. Sling TV allows you to record up to 50 hours to DVR storage, but you can expand that space to 200 hours with a $5-per-month add-on. Sling TV is available on mobile phones, streaming devices, the Xbox console (but not PlayStation), and via the web.</p>
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