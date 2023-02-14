<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="p1.Connect" %>
<%@ page import= "p1.getset" %>
<%@ page import= "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">

</head>
<%
String s = request.getParameter("result");
%>
<body>

<div class="container">
    <div class="nested">
    	<div class="head" align="center">Digital Diary</div>
    	<div>
    		<p class="desc">A digital diary is a place where you can record personal events and experiences online. Rather than keeping a traditional diary or notebook to express your thoughts and feelings, you can create a diary and make it available anywhere and everywhere, as long as you have access to the internet. The lock and key you once had on your teenage diary to keep out the unwanted eyes of your siblings and parents have now been replaced by a login and password. Digital diaries offer the mobility you need and the privacy you want.</p>
    	</div>
    </div>
    <div class="nested">
    <br>
    	<div class="abc" align="center"><a href="register.jsp" class="left">Register</a></div>
    	<br>
    	<div class="abc"  align="center"><a href="login.jsp"  class="left">login</a></div>
    	<br>
    	<div class="abc"  align="center"><a href="#" class="left">Contact us</a></div>
	</div>
</div>

</body>
</html>