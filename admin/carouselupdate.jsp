<%@page import="com.net.DAO.CarouselDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.net.Bean.CarouselBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	<%
		int updateStatus= CarouselDAO.Update(obj);
		if(updateStatus==1){
			out.print("<script> window.open('carousel.jsp','_self');</script>");
		}
		else if(updateStatus==0){
			out.print("<script> alert('Photo Updation Failed..');"  
			+ "window.open('carousel.jsp','_self');</script>");
			
		}
	%>
</body>
</html>