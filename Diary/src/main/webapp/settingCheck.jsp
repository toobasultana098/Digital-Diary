<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "p1.Connect" %>
<%@ page import= "p1.getset" %>
<%@ page import= "java.util.ArrayList" %>
<%
HttpSession sess = request.getSession();
String uid=(String)sess.getAttribute("uid");
Connect c1=new Connect();
boolean b=c1.checkPasswordExistCont(uid);
boolean bx=c1.checkPasswordExistCard(uid);
if(b==true && bx==true){
	response.sendRedirect("changeSetting.jsp");
}
else{
	response.sendRedirect("setSetting.jsp");
}
%>