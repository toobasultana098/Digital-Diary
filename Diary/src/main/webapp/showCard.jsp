<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.Connect" %>
<%@ page import= "p1.getset" %>
<%@ page import= "java.util.ArrayList" %>
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
</head>
<body>
<%
Connect c1=new Connect();
ArrayList<getset> arr=c1.getCard(uid);
%>
<div class="container">
    <div class="nested">
    	<div class="heada" align="center">Welcome <%=name %></div>
    	<div class="headb" align="center">Your Contacts</div>
    	<br>
    	<br>
		<table>
			<thead>
				<tr>
					<th>Type</th>
					<th>Bank Name</th>
					<th>Branch</th>
					<th>Account No</th>
					<th>Exp date</th>
					<th>CVV No</th>
					<th>Pin</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
	<%
    	for(int i=0;i<arr.size();i++){
    		getset s1=(getset)arr.get(i);
			String t = s1.gettype();
			String bn = s1.getbname();
			String b=s1.getbranch();
			String acc=s1.getaccno();
			String ed=s1.getexpdate();
			String cvv=s1.getcvv();
			String pin=s1.getpin();
    %>
        <tr>
            <td><%=t %></td>
            <td><%=bn %></td>
            <td><%=b %></td>
            <td><%=acc %></td>
            <td><%=ed %></td>
            <td><%=cvv %></td>
            <td><%=pin %></td>
           
            <td><div class="abcd" align="center"><a href="contact.jsp" class="left">edit</a></div></td>
            <td><div class="abd" align="center"><a href="contact.jsp" class="left">delete</a></div></td>
        </tr>
    <%
    	}
    %>
			</tbody>
			
		</table>
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