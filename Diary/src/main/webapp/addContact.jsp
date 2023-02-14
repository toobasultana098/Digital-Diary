<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">
<%
String s = request.getParameter("result");
%>
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
    	<div class="heada" align="center">Welcome <%=name %></div>
    	<div class="headb" align="center">Add Contact</div>
		<% 
		if(s!=null){
			if(s.equals("true")){
		%>
		<div class="alert" style="text-align: center;">
		    <strong>Contact Saved!!</strong>
		</div>
		<br><br>
		<%
			}else{
		%>
		<div class="alert" style="text-align: center;">
		    <strong>Error! Problem in data saving...</strong>
		</div>
		<br><br>
		<%
			}
		}
		%>
		<div class="forma">
		    <form action="save.jsp" method="post">
		        <div>Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <input type="text" name="name" style="font-size: 20px;">
		        </div>
		        <br>
		        <div>Alias :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <input type="text" name="alias" style="font-size: 20px;">
		        </div>
		        <br>
		        <div>Contact : &nbsp;&nbsp;
		                    <input type="text" name="cont" style="font-size: 20px;">
		        </div>
				<br>
		        <div>Address :&nbsp;&nbsp;
		            <input type="text" name="address" style="font-size: 20px;">
		        </div>
				<br>
		        <div>Email : &nbsp;&nbsp;&nbsp;&nbsp;
		            <input type="text" name="email" style="font-size: 20px;">
		        </div>
		        <br>
		     	<div style="text-align:center;">
		            <button type="submit" class="btn">Add</button>
		        </div>
			</form>
		</div>
	</div>
	<div class="nested">
    	<br>
   		<div class="abc" align="center"><a href="contact.jsp" class="left">Contact Details</a></div>
   		<br>
    	<div class="abc" align="center"><a href="card.jsp" class="left">Card Details</a></div>
	</div>
</div>
</body>
</html>