<%@page import="com.net.DAO.contactsdetailsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.net.Bean.contactsdetailsBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	<% 
		int updateStatus= contactsdetailsDAO.Update(obj);
		if(updateStatus==1){
			out.print("<script> window.open('settings.jsp','_self');</script>");
			
		}
		else if(updateStatus==0){
			out.print("<script> alert('Record Update fail..');"  
			+ "window.open('settings.jsp','_self');</script>");
			
		}
	%>
</body>
</html>