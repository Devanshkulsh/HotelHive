<%@page import="com.net.DAO.settingsUpdateDAO" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="com.net.DAO.settingsUpdateDAO" %>
	<%
	    ResultSet rs = settingsUpdateDAO.ShowSetting();
	    rs.next();
	    String site_title = rs.getString(1);
	    String site_about = rs.getString(2);
	%>
	
<%@page import="com.net.DAO.contactsdetailsDAO" %>
	<%
	    ResultSet rs2 = contactsdetailsDAO.ShowContacts();
	    rs2.next();
	    String address = rs2.getString(1);
	    String gmap = rs2.getString(2);
	    String pn1 = rs2.getString(3);
	    String pn2 = rs2.getString(4);
	    String email = rs2.getString(5);
	    String tw = rs2.getString(6);
	    String insta = rs2.getString(7);
	    String fb = rs2.getString(8);
	    String snap = rs2.getString(9);
	    String iframe = rs2.getString(10);
	%>
	
<%@page import= "com.net.DAO.ManagementDAO" %>
	<%
		ResultSet rs3= ManagementDAO.ShowMember();
	    rs3.next();
	    String name= rs3.getString(1);
	    String designation= rs3.getString(2);
	    String contact= rs3.getString(3);
	    String email2= rs3.getString(4);
	    String photo= rs3.getString(5);
	    String bio= rs3.getString(6);	
	%>