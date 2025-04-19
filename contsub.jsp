<%@page import="com.net.DAO.ContactDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.net.Bean.ContactBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	<%
		int addstatus= ContactDAO.AddContact(obj);
		if(addstatus==1){
			out.print("<script> alert('Your enquiry has been successfully registered...');"
			+ "window.open('contactUs.jsp','_self');</script>");
		}
		else if(addstatus==0){
			out.print("<script> alert('Enquiry registraion has failed...');"
			+ "window.open('contactUs.jsp','_self');</script>");
			
		}
	%>
</body>
</html>