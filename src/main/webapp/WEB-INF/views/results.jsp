<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <h3>Your comparison</h3>
	<%
	Integer fubo =  (Integer)application.getAttribute("fubo");
	fubo = null;
	Integer sling =  (Integer)application.getAttribute("sling");
	sling = null;
	Integer philo =  (Integer)application.getAttribute("philo");
	philo = null;
	Integer youtube =  (Integer)application.getAttribute("youtube");
	youtube = null;
	Integer provider =  (Integer)application.getAttribute("provider");
	provider = null;
	%>
        <table class="con-table">
            <thead>
                <tr>
                    <th>Channel Name</th>
                    <th>Current Subscription</th>
                    <th>Fubo</th>
                    <th>Philo</th>
                    <th>Sling</th>
                    <th>YouTube</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${all}" var="all">
                <c:choose>
	            <c:when test="${userNum.channels == 'FIOS1'}">
	            	<c:set value="${all.FIOS1}" var="userpick" />
	            </c:when>
	            <c:when test="${userNum.channels == 'FIOS2'}">
	            	<c:set value="${all.FIOS2}" var="userpick" />
	            </c:when>
	            <c:when test="${userNum.channels == 'cox1'}">
	            	<c:set value="${all.cox1}" var="userpick" />
	            </c:when>
	            <c:when test="${userNum.channels == 'cox2'}">
	            	<c:set value="${all.cox2}" var="userpick" />
	            </c:when>
	            <c:when test="${userNum.channels == 'cox3'}">
	            	<c:set value="${all.cox3}" var="userpick" />
	            </c:when>
	            <c:when test="${userNum.channels == 'cox4'}">
	            	<c:set value="${all.cox4}" var="userpick" />
	            </c:when>
	            <c:when test="${userNum.channels == 'comcast1'}">
	            	<c:set value="${all.comcast1}" var="userpick" />
	            </c:when>
	            <c:when test="${userNum.channels == 'comcast2'}">
	            	<c:set value="${all.comcast2}" var="userpick" />
	            </c:when>
	            <c:when test="${userNum.channels == 'comcast3'}">
	            	<c:set value="${all.comcast3}" var="userpick" />
	            </c:when>
	            <c:otherwise>
	            	<c:set value="${all.comcast4}" var="userpick" />
	            </c:otherwise>
	            </c:choose>
	            <%--Prices --%>
				<c:forEach items="${cost}" var="cost">
					<c:choose>
						<c:when test="${userNum.channels == cost.package_Name}">
						<c:set value="${cost}" var="cursub" />
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				<c:set value="${cost[10]}" var="fuboprice" />
				<c:set value="${cost[11]}" var="philoprice" />
				<c:set value="${cost[12]}" var="slingprice" />
				<c:set value="${cost[13]}" var="youtubeprice" />
	            
				<c:if test="${userpick == true}">
				<%	if( provider ==null || provider == 0 ) {
					provider = 1;
				} else {
					provider += 1;
				}
				application.setAttribute("provider", provider); %>
				</c:if>
				<c:if test="${all.fubo == true}">
				<%	if( fubo ==null || fubo == 0 ) {
					fubo = 1;
				} else {
					fubo += 1;
				}
				application.setAttribute("fubo", fubo); %>
				</c:if>
				<c:if test="${all.philo == true}">
				<%	if( philo ==null || philo == 0 ) {
					philo = 1;
				} else {
					philo += 1;
				}
				application.setAttribute("philo", philo); %>
				</c:if>
				<c:if test="${all.sling == true}">
				<%	if( sling ==null || sling == 0 ) {
					sling = 1;
				} else {
					sling += 1;
				}
				application.setAttribute("sling", sling); %>
				</c:if>
				<c:if test="${all.youTube == true}">
				<%	if( youtube ==null || youtube == 0 ) {
					youtube = 1;
				} else {
					youtube += 1;
				}
				application.setAttribute("youtube", youtube); %>
				</c:if>
                    <tr>
                        <%-- Channel Name Column --%>
                        <td>
                        	${all.channel_Name}
                        </td>
                        <%-- Users Channels Column --%>
                        <td>  
							<c:out value="${userpick}"/>
                        </td>
                        <%-- Streaming Service Column--%>
                        <td>
                        	${all.fubo}
                        </td> 
                        <%-- Streaming Service Column--%>
                        <td>
                        	${all.philo}
                        </td> 
                        <%-- Streaming Service Column--%>
                        <td>
                        	${all.sling}
                        </td> 
                        <%-- Streaming Service Column--%>
                        <td>
                        	${all.youTube}
                        </td> 

                    </tr>
                </c:forEach>
				<tr>
				<th>Monthly Cost Comparison</th>
				<th>
				$${cursub}
				</th>
				<th>
				$${fuboprice}
				</th>
				<th>
				$${philoprice}
				</th>
				<th>
				$${slingprice}
				</th>
				<th>
				$${youtubeprice}
				</th>
				</tr>
				<tr>
				<th>Channel Count Comparison</th>
				<th>
				<%= provider%>
				</th>
				<th>
                <%= fubo%>
				</th>
				<th>
                <%= philo%>
				</th>
				<th>
                <%= sling%>
				</th>
				<th>
                <%= youtube%>
				</th>
				</tr>
            </tbody>
        </table>
        <h3>Savings</h3>
        <table class="con-table">
	        <thead>
				<tr>
					<th>Streaming Provider</th>
					<th>Monthly Savings</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Fubo </td>
					<td>
					<fmt:parseNumber var="h" type="number" integerOnly="true" value="${cursub}" />
					<fmt:parseNumber var="i" type="number" integerOnly="true" value="${fuboprice}" />
					<c:out value="$${h-i}" />
					</td>
				</tr>
				<tr>
					<td>Philo </td>
					<td> 
					<fmt:parseNumber var="h" type="number" integerOnly="true" value="${cursub}" />
					<fmt:parseNumber var="i" type="number" integerOnly="true" value="${philoprice}" />
					<c:out value="$${h-i}" />
					</td>
				</tr>
				<tr>
					<td>Sling </td>
					<td> 
					<fmt:parseNumber var="h" type="number" integerOnly="true" value="${cursub}" />
					<fmt:parseNumber var="i" type="number" integerOnly="true" value="${slingprice}" />
					<c:out value="$${h-i}" />
					</td>
				</tr>
				<tr>
					<td>Youtube </td>
					<td> 
					<fmt:parseNumber var="h" type="number" integerOnly="true" value="${cursub}" />
					<fmt:parseNumber var="i" type="number" integerOnly="true" value="${youtubeprice}" />
					<c:out value="$${h-i}" />
					</td>
				</tr>
				<tr>
					<td> </td>
					<td> </td>
				</tr>
			</tbody>
		</table>
		<p class="print-align-right">
		   <a href="#" onclick="javascript:window.print();" ><input type="submit" value="Print Page"></a>
</p>
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