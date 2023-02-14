<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">

</head>
<body>
<%
HttpSession sess = request.getSession();
String name=(String)sess.getAttribute("uname");
%>
</head>
<body>
<div class="container">
    <div class="nested">
    <nav class="nbar">
    	<div class="container">
        	<a href="addContact.jsp" class="left">Add New</a>
        </div>
        <div class="container" >
        	<a href="contShowPin.jsp" class="left">Show All</a>
        </div>
    </nav>
    	<div class="head" align="center">Welcome <%=name %></div>
    	<div>
    		<p class="desc"></p>
    	</div>
    </div>
    <div class="nested">
    <br>
    	<div class="abc" align="center"><a href="contact.jsp" class="left">Contact Details</a></div>
    	<br>
    	<div class="abc" align="center"><a href="card.jsp" class="left">Card Details</a></div>
    	<br>
    	<div class="abc" align="center"><a href="setting.jsp" class="left">Setting</a></div>
	</div>
</div>
</body>
</html>