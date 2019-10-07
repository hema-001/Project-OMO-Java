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
	<h1>Check Out</h1>
</div>

<% 
Users user = (Users)session.getAttribute("checkout_user"); 

Meals meal = (Meals)session.getAttribute("Cartinfo");

Random rand = new Random();

int ordernumber = rand.nextInt(100000)+1;

Date date = new Date();
SimpleDateFormat f = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
String Time = f.format(date);
session.setAttribute("ct", Time);

%>

<div class="box">
	<div class="inner_box" align="center">
		<table class="table">
			<tr>
			<td>Delivers To</td>
			<td><%= user.getName() %></td>
			</tr>
			<tr>
			<td>Phone</td>
			<td><%= user.getPhone() %></td>
			</tr>
			<tr>
			<td>Address</td>
			<td><%= user.getAddress() %></td>
			</tr>
			<tr>
			<td>Location</td>
			<td><%= session.getAttribute("location") %></td>
			</tr>
			<tr>
			<td>Meal</td>
			<td><%= meal.getName() %>
			</tr>
			<tr>
			<td>Order#</td>
			<td><%= ordernumber %></td>
			</tr>
			<tr>
			<td>Time</td>
			<td><%= Time %></td>
			</tr>
			<tfoot>
			<tr>
			<td>Total</td>
			<td><%= meal.getPrice() %>¥</td>
			</tr>
			</tfoot>
		</table>
		<form action="Payment.jsp" method="post">
			<input type="submit" value="Pay" class="butn">
			</form>
	<a href="index.jsp">Back</a>
	</div>
	
</div>



</body>
</html>