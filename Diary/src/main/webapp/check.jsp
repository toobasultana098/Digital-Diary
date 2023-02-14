<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import= "p1.Connect" %>
<%@ page import= "p1.getset" %>
<%@ page import= "java.util.ArrayList" %>

<%
	Connect c1 = new Connect();
%>
<%
	String r = request.getParameter("email");
	String c = request.getParameter("password");
	boolean b = c1.checklogin(r,c);
	if(b==false){
		response.sendRedirect("login.jsp?result="+b);
	}
	else{
		getset s1=null;
		s1=c1.getData(r);
		String name = s1.getname();
		HttpSession sess=request.getSession();
		sess.setAttribute("uid", r);
		sess.setAttribute("uname", name);
		response.sendRedirect("home.jsp");
	}
	
%>