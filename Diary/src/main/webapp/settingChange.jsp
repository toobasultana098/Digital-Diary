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
<div class="containera">
    <div class="nested">
    	<div class="head" align="center">Welcome <%=name %></div>
    	<div class="heada" align="center">Change Your Pin</div>
    	<div class="forma">
		    <form action="changePin.jsp" method="post">
		        <div>Menu :&nbsp;&nbsp;
		        	<select name="menu" style="font-size: 20px; color: #000040">
		        		<option value="contact">Contact</option>
		        		<option value="card">Card</option>
		        	</select>
		        </div>
		        <br>
		        <div>Show :&nbsp;&nbsp;
		            <input type="text" name="show" style="font-size: 20px;" placeholder="XXXX">
		        </div>
		        <br>
		        <div>Edit : &nbsp;&nbsp;&nbsp;&nbsp;
		            <input type="text" name="edit" style="font-size: 20px;" placeholder="XXXX">
		        </div>
				<br>
		        <div>Delete :&nbsp;
		            <input type="text" name="delete" style="font-size: 20px;" placeholder="XXXX">
		        </div>
		        <br>
		        <br>
		     	<div style="text-align:center;">
		            <button type="submit" class="btn">Enter</button>
		        </div>
			</form>
		</div>
	</div>
</div>
</body>
</html>