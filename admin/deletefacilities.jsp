<%@page import="com.net.DAO.FacilitiesDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String un= request.getParameter("un");
		int delStatus= FacilitiesDAO.Delete(un);
		if(delStatus==1){
			out.print("<script> window.open('features_facilities.jsp','_self');</script>");
		}
		else if(delStatus==0){
			out.print("<script> alert('Facilities Delete Failed...');"
			+ "window.open('features_facilities','_self');</script>");
		}
	%>
</body>
</html>