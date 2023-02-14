<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.Connect" %>
<%
	Connect c1 = new Connect();
%>
<%
HttpSession sess = request.getSession();
String name=(String)sess.getAttribute("uname");
String uid=(String)sess.getAttribute("uid");
%>
<%
	String t = request.getParameter("type");
	String bn = request.getParameter("bname");
	String br = request.getParameter("branch");
	String an = request.getParameter("accno");
	String ed = request.getParameter("expdate");
	String cvv = request.getParameter("cvv");
	String pin = request.getParameter("pin");
	boolean b = c1.saveCard(uid,t,bn,br,an,ed,cvv,pin);
	response.sendRedirect("addCard.jsp?result="+b);
%>