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
    	<div class="headb" align="center">Add Card Details</div>
		<% 
		if(s!=null){
			if(s.equals("true")){
		%>
		<div class="alert" style="text-align: center;">
		    <strong>Details Saved!!</strong>
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
		    <form action="saveCard.jsp" method="post">
		        <div>Type :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		        	<select name="type" style="font-size: 20px; color: #000040">
		        		<option value="debit">Debit</option>
		        		<option value="credit">Credit</option>
		        	</select>
		        </div>
		        <br>
		        <div>Bank Name :&nbsp;
		            <input type="text" name="bname" style="font-size: 20px;">
		        </div>
		        <br>
		        <div>Branch : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <input type="text" name="branch" style="font-size: 20px;">
		        </div>
				<br>
		        <div>Account No :&nbsp;
		            <input type="text" name="accno" style="font-size: 20px;">
		        </div>
				<br>
		        <div>Exp Date : &nbsp;&nbsp;&nbsp;&nbsp;
		            <input type="date" name="expdate" style="font-size: 20px;">
		        </div>
		        <br>
		        <div>CVV No. : &nbsp;&nbsp;&nbsp;&nbsp;
		            <input type="text" name="cvv" style="font-size: 20px;">
		        </div>
		        <br>
		        <div>Pin Code : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		            <input type="text" name="pin" style="font-size: 20px;">
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
</div></body>
</html>