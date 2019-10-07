<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.OMO.JavaBeans.Users" %>
    <%@ page import="com.OMO.JavaBeans.*" %>
    <%@ page import="java.util.Random" %>
    <%@ page import="java.util.Date" %>
    <%@ page import="java.text.SimpleDateFormat" %>
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

.header {
  padding: 30px;
  text-align: center;
  background: white;
}

.header h1 {
  font-size: 50px;
}

.box {
  background-color: white;
  padding: 100px;
  margin-top: 20px;
  
}

.inner_box {
  
  width: 100%;
  padding: 20px;
}

@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
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

table, th, td {
  border: 1px solid #dbdbdb;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: center;
}

</style>
<meta charset="ISO-8859-1">
<title>account</title>
</head>
<body>

<div class="header">
	<h1>Thank you for using OMO, visit us again.</h1>
</div>

<% 
Users user = (Users)session.getAttribute("checkout_user"); 

Meals meal = (Meals)session.getAttribute("Cartinfo");

Random rand = new Random();

int billno = rand.nextInt(1000000000)+1;
int deliveryTime = rand.nextInt(30)+1;

Date date = new Date();
SimpleDateFormat f = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
String Time = f.format(date);
session.setAttribute("ct", Time);

%>

<div class="box">
	<div class="inner_box" align="center">
		<p>your bill number is <%= billno %></p>
		<p>you'll receive your order in <%= deliveryTime %> minutes</p>
		<a href="index.jsp">Continue</a>
	</div>
	
</div>



</body>
</html>