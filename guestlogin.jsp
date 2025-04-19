<%@page import="com.net.DAO.GuestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guest- Login</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.net.Bean.GuestBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	<%
		int status=GuestDAO.Login(obj);
		if(status==1){
			session.setAttribute("email",obj.getEmail());
			out.print("<script> alert('Login Success...');" +
			"window.open('rooms.jsp','_self')</script>");
		}
		else if(status==0){
			out.print("<script> alert('Login Failed...');" +
			"window.open('home.jsp','_self')</script>");
		}
	%>
</body>
</html>