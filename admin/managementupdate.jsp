<%@page import="com.net.DAO.ManagementDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="obj" class="com.net.Bean.managementBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	<%
		int updateStatus= ManagementDAO.Update(obj);
		if(updateStatus>0)
		{
			out.print("<script> window.open('settings.jsp','_self');</script>");
			
		}
		else if(updateStatus==0){
			out.print("<script> alert('Record Update fail..');"  
			+ "window.open('settings.jsp','_self');</script>");
			
		}
	%>
</body>
</html>