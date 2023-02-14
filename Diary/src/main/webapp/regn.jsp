<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.Connect" %>
<%
	Connect c1 = new Connect();
%>
<%
	String r = request.getParameter("email");
	String n = request.getParameter("name");
	String v = request.getParameter("mob");
	String c = request.getParameter("password");
	boolean b = c1.saveRegn(r, n, v, c);
	response.sendRedirect("index.jsp?result="+b);
%>