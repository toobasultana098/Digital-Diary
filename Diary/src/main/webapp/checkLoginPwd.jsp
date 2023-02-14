<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.Connect" %>
<%@ page import= "p1.getset" %>
<%@ page import= "java.util.ArrayList" %>
<%
HttpSession sess = request.getSession();
String uid=(String)sess.getAttribute("uid");
Connect c1=new Connect();
String pwd = request.getParameter("pwd");
boolean b=c1.checklogin(uid,pwd);
System.out.print(pwd);
if(b==true){
	response.sendRedirect("setting.jsp");
}
else{
	response.sendRedirect("home.jsp");
}
%>