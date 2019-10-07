<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.OMO.JavaBeans.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  padding: 10px;
  background: #f1f1f1;
}

/* Header/Blog Title */
.header {
  padding: 30px;
  text-align: center;
  background: white;
}

.header h1 {
  font-size: 50px;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 75%;
}

/* Right column */
.rightcolumn {
  float: left;
  width: 25%;
  background-color: #f1f1f1;
  padding-left: 20px;
}

/* Fake image */
.image {
  border-style: solid;
  border-width:thin;
  width: 50%;
  padding: 20px;
}

/* Add a card effect for articles */
.card {
  background-color: white;
  padding: 20px;
  margin-top: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
  margin-top: 20px;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}

.butn {
   font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  background: #404040;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}

.butn:hover {
  background: #dbdbdb;
  text-decoration: none;
}
</style>
<meta charset="ISO-8859-1">
<title>OMO-Online Meal Ordering</title>
</head>
<body>

<%
String Meal1 = "BigMac";
String Meal2 = "TripleTreatBox";

double price1 = 50;
double price2 = 99.9;

String des1 = "double cheese burger with french fries and soda";
String des2 = "Celebrations are incomplete without the family so enjoy with your loved ones by ordering the delicious pizza hut family meals";

String location = (String)session.getAttribute("location");

Meals meal = (Meals)session.getAttribute("mealinfo");
%>

<div class="header">
<div align="left">
 <img alt="head" src="Materials/Header2.png" width="75%" height="250px">
 <img alt="" src="Materials/Logo.png" width="20%" height="250px">
</div>
</div>

<p><% if(!session.isNew() || session.getAttribute("name")!=null){
	session.getAttribute("name");
}
	%></p>
<div class="topnav">
  <a href="maincourse.jsp">Main Course</a>
  <a href="appetizers.jsp">Appetizers</a>
  <a href="sweets.jsp">Sweets</a>
  <a href="beverages.jsp">Beverages</a>
  <div style="padding-left: 80%;">
  <a href="cart.jsp">Cart</a></div>
  
  <%if(session.isNew() || session.getAttribute("name")==null){ %>
  
  <a href="login.jsp">Login</a>
  
  <%}else if(!session.isNew()||session.getAttribute("name")!=null){ %>
  <div style="padding-left: 10%;">
  <a href="/OMO/UserValidation?action=account">Account</a></div>
  <div style="padding-left: 75%;">
  <a href="/OMO/UserValidation?action=logout">Logout</a></div>
  <%} %>
</div>


<div class="row">
  <div class="leftcolumn">
    <div class="card">
      <h2><%= meal.getName() %></h2>
      
      <div class="image" align="center"><img alt="" src="showimg.jsp" width="50%"></div>
      <p><%= meal.getPrice() %>¥</p>
      <p><%= meal.getDescription() %></p>
      <p>Rating:<%= meal.getRating() %>/5</p>
      <form action="/OMO/CartServlet?action=add" method="post" name="add">
      	<input type="hidden" name="id" value="<%= meal.getId() %>">
      	<input type="submit" value="Add to Cart" class="butn">
      </form>
    </div>
 
  </div>
  <div class="rightcolumn">
    <div class="card">
      <h2>About Us</h2>
      <div class="image"><img alt="" src="Materials/Logo.png" width="100%"></div>
      <p>Online Meals Ordering(OMO) website, is a training project developed by IBRAHIM a third year undergraduate software engineering student from ZJNU, MC college, in Jinhua city, Zhejiang province.</p>
    </div>
    <div class="card">
      <h3>Popular Meals</h3>
            <div class="image"><a href="/OMO/MealsServlet?id=1&action=maincourse">BigMac</a></div>
      <div class="image"><a href="/OMO/MealsServlet?id=1&action=appetizers">Nuggets</a></div>
      <div class="image"><a href="/OMO/MealsServlet?id=1&action=sweets">ApplePie</a></div>
    </div>
    <div class="card">
      <h3>Follow Us</h3>
      <p>WeChat..</p>
      <p>QQ..</p>
    </div>
  </div>
</div>

<div class="footer">
  <p>All Rights Reserved. IBRAHIM M.I. ISMAIL 2019. </p>
  <p>Contact Us: 1525200991@qq.com</p>
</div>

</body>
</html>
