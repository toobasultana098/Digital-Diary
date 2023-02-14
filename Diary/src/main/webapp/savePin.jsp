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
	String x = request.getParameter("qone");
	String y = request.getParameter("qtwo");
	String z = request.getParameter("qthree");
	boolean b = c1.savePin(uid,m,s,e,d,x,y,z);
	response.sendRedirect("home.jsp?result="+b);
%>