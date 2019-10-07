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
<title>Create Account</title>
</head>
<body>

<div class="header">
<h1>Sign-up now </h1>
</div>

<div class="box">
	<div class="inner_box" align="center">
		<form action="/OMO/UserValidation?action=create" method="post" name="createaccount">
			<table class="table">
				<tr>
				<td><p>Name</p></td>
				<td><input type="text" name="c_name" size="50"></td>
				
				</tr>
				<tr>
				<td><p>Password</p></td>
				<td><input type="password" name="c_password" size="50"></td>
				</tr>
				<tr>
				<td><p>Re-type Password</p></td>
				<td><input type="password" name="c_check_password" size="50"><br><p><font color="red"> ${passfailed }</font></p> </td>
				</tr>
				<tr>
				<td><p>Address</p></td>
				<td><input type="text" name="c_address" size="50"></td>
				</tr>
				<tr>
				<td><p>Phone</p></td>
				<td><input type="text" name="c_phone" size="50"></td>
				</tr>
				<tr>
				<td><p>E-mail</p></td>
				<td><input type="text" name="c_email" size="50"></td>
				</tr>
				<tr>
				<td><input type="submit" value="Create" class="butn"></td>
				<td><a href="login.jsp">I have an account!</a></td>
				</tr>
			</table>
			<p><font color="red"> ${c_alert }</font></p>
		</form>
	</div>
</div>

</body>
</html>