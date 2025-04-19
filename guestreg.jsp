<%@page import="com.net.DAO.GuestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guest- Registration</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.net.Bean.GuestBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	<%
		out.print("Hello in Bean Page");
	%>
	<br> Name: <jsp:getProperty property="name" name="obj"/>
	<br> Email: <jsp:getProperty property="email" name="obj"/>
	<br> Phone: <jsp:getProperty property="phone" name="obj"/>
	<br> Address: <jsp:getProperty property="address" name="obj"/>
	<br> Pincode: <jsp:getProperty property="pincode" name="obj"/>
	<br> DOB: <jsp:getProperty property="dob" name="obj"/>
	<br> Password: <jsp:getProperty property="pass" name="obj"/>
	<%
		int status=GuestDAO.Register(obj);
		if(status>0){
			out.print("<script> alert('Registration Success...'); "+
			"window.open('home.jsp','_self')</script>");
		}
		else{
			out.print("<script> alert('Registration Failed...'); "+
			"window.open('home.jsp','_self')</script>");
		}
	%>
</body>
</html>