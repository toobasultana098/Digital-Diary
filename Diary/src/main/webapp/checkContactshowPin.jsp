<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.Connect" %>
<%@ page import= "p1.getset" %>
<%@ page import= "java.util.ArrayList" %>

<%
	Connect c1 = new Connect();
%>
<%
HttpSession sess = request.getSession();
String name=(String)sess.getAttribute("uname");
String uid=(String)sess.getAttribute("uid");
%>
<%
	String pin = request.getParameter("pin");
	String c = "contact";
	boolean b = c1.checkContShowPin(uid,c,pin);
	if(b==true){
		response.sendRedirect("showContact.jsp?result="+b);
	}
	else{
		response.sendRedirect("contShowPin.jsp?result="+b);
	}
	
%>