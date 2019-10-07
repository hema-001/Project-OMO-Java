<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.OMO.JavaBeans.Meals" %>
    <%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

Meals meal = (Meals)session.getAttribute("mealinfo");

Blob image = meal.getImage();
byte[] imgBuffer = image.getBytes(1,(int)image.length());

response.setContentType("image/jpg");

OutputStream o = response.getOutputStream();

o.write(imgBuffer);
o.flush();
o.close();

%>

</body>
</html>