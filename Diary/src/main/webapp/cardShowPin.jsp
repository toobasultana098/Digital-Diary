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
String uid=(String)sess.getAttribute("uid");
%>
<div class="container">
    <div class="nested">
    	<div class="head" align="center">Welcome <%=name %></div>
    	<div class="forma">
		    <form action="checkCardShowPin.jsp" method="post">
		    <br>
		        <div>Enter Your Pin :&nbsp;
		            <input type="text" name="pin" style="font-size: 20px;">
		        </div>
		        <br>
		        <div style="text-align:center;">
		            <button type="submit" class="btn">Submit</button>
		        </div>
		        <br>
			</form>
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