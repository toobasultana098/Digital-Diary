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
	String c = "card";
	boolean b = c1.checkCardShowPin(uid, c, pin);
	if(b==true){
		response.sendRedirect("showCard.jsp?result="+b);
	}
	else{
		response.sendRedirect("cardShowPin.jsp?result="+b);
	}
	
%>