<%@page import="com.net.DAO.ContactDAO"%>
<%@page import="com.net.DAO.CarouselDAO"%>
<%@page import="com.net.DAO.settingsUpdateDAO" %>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin Panel- User Queries</title>
    <%@ include file="../admin/links.jsp" %>
</head>

<body class="bg-light">
    <%@ include file="../admin/settings_common/header.jsp" %>
    <div class="container-fluid" id="main-content">
        <div class="row">
            <div class="col-lg-10 ms-auto p-4 overflow-hidden">
                <h3 class="mb-4">USER QUERIES</h3>

                
                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-body">
                    	<div class="table-responsive-md" style="height: 400px; overflow-y: scroll;">
                    		<table class="table table-hover border">
							  <thead class="sticky-top">
							    <tr>
							      <th scope="col">S.No</th>
							      <th scope="col">Name</th>
							      <th scope="col">E-mail</th>
							      <th scope="col" width="20%">Subject</th>
							      <th scope="col" width="30%">Message</th>
							      <th scope="col">Action</th>
							    </tr>
							  </thead>
							  <tbody>
							  	<%
							  		ResultSet rs= ContactDAO.ShowContact();
							  		int id=1;
							  		while(rs.next()){
							  			String name= rs.getString(1);
							  			String email= rs.getString(2);
							  			String subject= rs.getString(3);
							  			String message= rs.getString(4);
							  			
							  			out.print(
							  		          "<tr> " + 
							  		                " <th scope='row'> " +  id+ "</th> " +
							  		                " <td>"+ name +"</td> " +
							  		                " <td>"+ email +"</td> " +
							  		                " <td>"+ subject +"</td> " +
							  		                " <td>"+ message +"</td> " +
							  		                " <td> "+
							  		              	" <td> "+ 
								  		            	" <button class='btn btn-primary'><a href="+ name +"' class='text-light fw-bold text-decoration-none'> Mark as read </a></button> " +
								  		            	" <button class='btn btn-danger mt-2'><a href='deleteenquiry.jsp?un="+ name +"' class='text-light fw-bold text-decoration-none'> Delete </a></button> " + 
								  		            " </td> " +
						  		              "</tr> "
							  		               );
							  			id++;
							  		}		
							  	%>	
							  </tbody>
							</table>
                    	</div>
                        
                    </div>
                </div>

                

        

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</body>

</html>
