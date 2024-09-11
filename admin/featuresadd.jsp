<%@page import="com.net.DAO.FeaturesDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="com.net.Bean.FeaturesBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	<%
		int addStatus= FeaturesDAO.AddFeatures(obj);
		if(addStatus==1){
			out.print("<script> window.open('features_facilities.jsp','_self');</script>");
		}
		else if(addStatus==0){
			out.print("<script> alert('Features Addition Failed..');"  
			+ "window.open('features_facilities.jsp','_self');</script>");
		}
		
	%>
</body>
</html>