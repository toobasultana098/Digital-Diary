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
	String m = request.getParameter("menu");
	String s = request.getParameter("show");
	String e = request.getParameter("edit");
	String d = request.getParameter("delete");
	boolean b = c1.changePin(uid,m,s,e,d);
	response.sendRedirect("home.jsp?result="+b);
%>