<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Login</title>
</head>
<body>

<div class="header">
<h1>Login now to enjoy the delicious meals around you!</h1>
</div>

<div class="box">
	<div class="inner_box" align="center">
	<p><font color="red"> ${alert }</font></p>
		<form action="/OMO/UserValidation?action=login" method="post" name="login">
		<table class="table">
		<tr>
		<td><p>Username</p></td> 
		<td><input type="text" name="log_name" size="50"></td>
		</tr>
		<tr>
		<td><p>Password</p></td> 
		<td><input type="password" name="log_password" size="50" placeholder=">8, and contains at least one character"></td>
		</tr>
		<tr>
		<td><input type="submit" value="Login" class="butn"></td>
		<td><a href="createAccount.jsp">Or create an account!</a></td></tr>
			</table>
		</form>
	</div>
</div>

</body>
</html>