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
	String r = request.getParameter("name");
	String n = request.getParameter("alias");
	String c = request.getParameter("cont");
	String m = request.getParameter("address");
	String a = request.getParameter("email");
	System.out.print(r+n+c+m+a+uid);
	boolean b = c1.saveContact(r, n, c, m, a, uid);
	System.out.print(r+n+c+m+a+uid);
	response.sendRedirect("addContact.jsp?result="+b);
%>