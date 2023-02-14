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
    	<div class="heada" align="center">Security Question</div>
    	<div class="forma">
		    <form action="quesCheck.jsp" method="post">
		        <br>
		        <div>Answer any one</div>
		        <br>
		        <div>What is the name of your favorite childhood friend?
		            <br><input type="text" name="qone" style="font-size: 20px;">
		        </div>
		        <br>
		        <div>What school did you attend for sixth grade?
		            <br><input type="text" name="qtwo" style="font-size: 20px;">
		        </div>
		        <br>
		        <div>What is the name of a college you applied to but didn't attend?
		            <br><input type="text" name="qthree" style="font-size: 20px;">
		        </div>
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