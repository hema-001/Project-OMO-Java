<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.OMO.JavaBeans.Users" %>
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
  border: 0px solid #dbdbdb;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: center;
}

</style>
<meta charset="ISO-8859-1">
<title>account</title>
</head>
<body>

<div class="header">
	<h1><%= session.getAttribute("name") %>'s account</h1>
</div>

<% Users user = (Users)session.getAttribute("accInfo"); %>

<div class="box">
	<div class="inner_box" align="center">
		<table class="table">
			<tr>
			<td><p>Username:</p></td>
			<td><%= user.getName() %></td>
			</tr>
			<tr>
			<td><p>Phone:</p></td>
			<td><%= user.getPhone() %></td>
			</tr>
			<tr>
			<td><p>Address:</p></td>
			<td><%= user.getAddress() %></td>
			</tr>
			<tr>
			<td><p>E-mail:</p></td>
			<td><%= user.getEmail() %></td>
			</tr>
			<tr>
			<td><p>Role:</p></td>
			<%if(user.getRole()==null){ %>
			<td><p>Costumer</p></td>
			<%}else{ %>
			<td><%= user.getRole() %></td>
			<%} %>
			</tr>
		</table>
	</div>
	<a href="index.jsp">Back</a>
</div>



</body>
</html>