<%@page import="com.net.DAO.FacilitiesDAO"%>
<%@page import="com.net.DAO.FeaturesDAO"%>
<%@page import="com.net.DAO.CarouselDAO"%>
<%@page import="com.net.DAO.settingsUpdateDAO" %>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin Panel- Features & Facilities</title>
    <%@ include file="../admin/links.jsp" %>
</head>

<body class="bg-light">
    <%@ include file="../admin/settings_common/header.jsp" %>
    <div class="container-fluid" id="main-content">
        <div class="row">
            <div class="col-lg-10 ms-auto p-4 overflow-hidden">
                <h3 class="mb-4">FEATURES & FACILITIES</h3>
                
                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h5 class="card-title m-0">Features</h5>
                            <button type="button" class="btn btn-dark shadow-none btn-sm" data-bs-toggle="modal"
                                data-bs-target="#features">
                                <i class="bi bi-plus-square"></i> Add
                            </button>
                        </div>
                    	<div class="table-responsive-md" style="height: 300px; overflow-y: scroll;">
                    		<table class="table table-hover border">
							  <thead style="position: sticky; top: 0; background-color: black; color: white; z-index: 1;">
							    <tr>
							      <th scope="col">S.No</th>
							      <th scope="col">Name</th>
							      <th scope="col">Action</th>
							    </tr>
							  </thead>
							  <tbody>
							  	<%
							  		ResultSet rs= FeaturesDAO.ShowFeatures();
							  		int id=1;
							  		while(rs.next()){
							  			String name= rs.getString(1);
							  			
							  			out.print(
							  		          "<tr> " + 
							  		                " <th scope='row'> " +  id+ "</th> " +
							  		                " <td>"+ name +"</td> " +
							  		                " <td> "+
								  		            " <button class='btn btn-danger mt-2'><a href='deletefeatures.jsp?un="+ name +"' class='text-light fw-bold text-decoration-none'> Delete </a></button> " + 
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
                
                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h5 class="card-title m-0">Facilities</h5>
                            <button type="button" class="btn btn-dark shadow-none btn-sm" data-bs-toggle="modal"
                                data-bs-target="#facilities">
                                <i class="bi bi-plus-square"></i> Add
                            </button>
                        </div>
                    	<div class="table-responsive-md" style="height: 300px; overflow-y: scroll;">
                    		<table class="table table-hover border">
							  <thead class="sticky-top">
							    <tr>
							      <th scope="col">S.No</th>
							      <th scope="col">Icon</th>
							      <th scope="col">Name</th>
							      <th scope="col">Description</th>
							      <th scope="col">Action</th>
							    </tr>
							  </thead>
							  <tbody>
							  	<%
							  		ResultSet rs2= FacilitiesDAO.ShowFacilities();
							  		int id2=1;
							  		while(rs2.next()){
							  			String icon= rs2.getString(1);
							  			String name2= rs2.getString(2);
							  			String description= rs2.getString(3);
							  			
							  			out.print(
							  		          "<tr> " + 
							  		                " <th scope='row'> " +  id2+ "</th> " +
							  		                " <td> <img src='images/facilities/" + icon + "' style='width: 50px; height: 50px;'></td>" +
							  		                " <td>"+ name2 +"</td> "+
							  		                " <td>"+ description +"</td> "+
							  		                " <td> "+
								  		            " <button class='btn btn-danger mt-2'><a href='deletefacilities.jsp?un="+ name2 +"' class='text-light fw-bold text-decoration-none'> Delete </a></button> " + 
								  		            " </td> " +
						  		              "</tr> "
							  		               );
							  			id2++;
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
    
    
    
    <!-- Features Modal -->
    <div class="modal fade" id="features" data-bs-backdrop="static" data-bs-keyboard="true"
        tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <form action="featuresadd.jsp" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Add Features</h5>
                    </div>
                    <div class="modal-body">
	                    <div class="mb-3 fw-bold">
	                        <label class="form-label" for="name">Name</label>
	                        <input type="text" class="form-control shadow-none"
	                            name="name">
	                    </div>   
                    </div>
                    <div class="modal-footer">
                        <button type="reset" class="btn text-secondary shadow-none"
                            data-bs-dismiss="modal">Cancel</button>
                        <button type="submit"
                            class="btn custom-bg text-white shadow-none">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    
    
    <!-- Facilities Modal -->
	<div class="modal fade" id="facilities" data-bs-backdrop="static" data-bs-keyboard="true"
	    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	    <div class="modal-dialog modal-lg">
	        <form action="facilitiesadd.jsp" method="post">
	            <div class="modal-content">
	                <div class="modal-header">
	                    <h5 class="modal-title">Add Facilities</h5>
	                </div>
	                <div class="modal-body">
	                    <div class="mb-3 fw-bold">
	                        <label class="form-label" for="name">Name</label>
	                        <input type="text" class="form-control shadow-none"
	                            name="name">
	                    </div>
	                    <div class="mb-3 fw-bold">
	                        <label class="form-label" for="icon">Icon</label>
	                        <input type="file" class="form-control shadow-none"
	                            name="icon" accept=".svg">
	                    </div>
	                    <div class="mb-3 fw-bold">
	                        <label class="form-label" for="desc">Description</label>
	                        <textarea class="form-control shadow-none" rows="3"
	                            name="description"></textarea>
	                    </div>
	                </div>
	                <div class="modal-footer">
	                    <button type="reset" class="btn text-secondary shadow-none"
	                        data-bs-dismiss="modal">Cancel</button>
	                    <button type="submit"
	                        class="btn custom-bg text-white shadow-none">Save</button>
	                </div>
	            </div>
	        </form>
	    </div>
	</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</body>

</html>
