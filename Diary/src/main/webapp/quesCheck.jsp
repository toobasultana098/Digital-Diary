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
	String m = request.getParameter("qone");
	String s = request.getParameter("qtwo");
	String e = request.getParameter("qthree");
	boolean b1 = c1.quesCheckOne(uid,m);
	boolean b2 = c1.quesCheckTwo(uid,s);
	boolean b3 = c1.quesCheckThree(uid,e);
	if(b1==true || b2==true || b3==true){
		response.sendRedirect("settingChange.jsp");
	}
	else{
		response.sendRedirect("home.jsp");
	}
	
%>