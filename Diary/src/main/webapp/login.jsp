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



<div class="containera">
<div class="nav">
<div class="head" align="center">Login</div>
<%
if(s!=null){
%>

<div class="alert" style="text-align: center;">
    <strong>Error! Wrong Credentials</strong>
</div>
<br><br>
<%
}
%>
<div class="form">
<form action="check.jsp" method="post">
        <div>E-Mail Id : 
            <input type="email" class="form-control" name="email" placeholder="abc@example.com" required style="font-size: 20px;">
        </div>
        <br>
        <div>Password : 
            <input type="password" class="form-control" name="password" placeholder="Password" required style="font-size: 20px;">
        </div>
        <br>
    <div style="text-align:center;">
            <button type="submit" class="btn">Login</button>
    </div>
</form>
</div>
</div>
</div>
</body>
</html>