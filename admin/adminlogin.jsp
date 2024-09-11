<%@page import="com.net.DAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin- Login</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.net.Bean.AdminBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	<%
		int status=AdminDAO.Login(obj);
		if(status==1){
			session.setAttribute("username",obj.getA_username());
			out.print("<script> alert('Login Success...');" + 
			"window.open('admindashboard.jsp','_self')</script>");
		}
		else if(status==0){
			out.print("<script> alert('Login Failed...');" + 
			"window.open('index.jsp','_self')</script>");
		}
	 %>
</body>
</html>