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

@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}

</style>
<meta charset="ISO-8859-1">
<title>Welcome to OMO</title>
</head>
<body>

<div class="header">
<h1>Enter your location</h1>
</div>

<div class="box">
      <div class="inner_box"><form action="/OMO/UserValidation?action=location_form" method="post" name="location_form">
      <div align="center">
      	<input type="text" placeholder="e.g ZJNU, BeiMen" size="100%" name="location">
      	<input type="submit" value="search">
      </div>
      </form></div>
    </div>

</body>
</html>