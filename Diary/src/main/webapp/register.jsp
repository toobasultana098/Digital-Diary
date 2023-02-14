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
<div class="head" align="center">Register</div>
<div class="form">
<form action="regn.jsp" method="post">
	<div>
        <div>E-Mail Id : &nbsp;&nbsp;
            <input type="email" class="form-control" name="email" placeholder="abc@example.com" style="font-size: 20px;">
        </div>
        <br>
        <div>Name :   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
            <input type="text" class="form-control" name="name" placeholder="Name" style="font-size: 20px;">
        </div>
        <br>
        <div>Mobile No. :
            <input type="text" class="form-control" name="mob" placeholder="xxxxxx9875" style="font-size: 20px;">
        </div>
        <br>
        <div>Password : &nbsp;&nbsp;
            <input type="password" class="form-control" name="password" placeholder="Password"  style="font-size: 20px;">
        </div>
        <br>
    <br>
            <div>
                    <input class="form-check-input" type="checkbox" id="checkRemember">
                    <label class="form-check-label" for="checkRemember">Remember me</label>
            </div>
    </div>
        <div style="text-align:center;">
            <button type="submit" class="btn">Register</button>
        </div>
</form>
</div>
</div>
</div>

<% 
if(s!=null){
	if(s.equals("true")){
%>
<div class="alert alert-success alert-dismissible fade show">
    <strong>Success!</strong>Your data has been registered successfully.
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
</div>
<%
	}else{
%>
<div class="alert alert-danger alert-dismissible fade show">
    <strong>Error!</strong> Problem in data saving...
    <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
</div>
<%
	}
}
%>
</body>
</html>