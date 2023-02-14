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
<div class="containera">
    <div class="nested">
    	<div class="heada" align="center">Welcome <%=name %></div>
    	<div class="headb" align="center">Your Login Password</div>
		<br><br>
		<div class="forma">
		    <form action="checkLoginPwdChange.jsp" method="post">
		    <br>
		        <div>Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        	<input type="password" name="pwd" style="font-size: 20px;">
		        </div>
		        <br>
		        <br>
		     	<div style="text-align:center;">
		            <button type="submit" class="btn">Enter</button>
		        </div>
			</form>
		</div>
		<div class="desc">
				<a href="forgotPwd.jsp">Forgot Password</a>
		</div>
	</div>
</div>
</body>
</html>