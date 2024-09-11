<%@page import="com.net.DAO.settingsUpdateDAO" %>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin Panel- Settings</title>
    <%@ include file="../admin/links.jsp" %>
</head>

<body class="bg-light">
    <%@ include file="../admin/settings_common/header.jsp" %>
    <div class="container-fluid" id="main-content">
        <div class="row">
            <div class="col-lg-10 ms-auto p-4 overflow-hidden">
                <h3 class="mb-4">SETTINGS</h3>

                <!-- General Settings -->
                <%@page import="com.net.DAO.settingsUpdateDAO" %>
                <%
                    ResultSet rs = settingsUpdateDAO.ShowSetting();
                    rs.next();
                    String site_title = rs.getString(1);
                    String site_about = rs.getString(2);
                %>
                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h5 class="card-title m-0">General Settings</h5>
                            <button type="button" class="btn btn-dark shadow-none btn-sm" data-bs-toggle="modal"
                                data-bs-target="#general-settings">
                                <i class="bi bi-pencil-square"></i> Edit
                            </button>
                        </div>
                        <h6 class="card-subtitle mb-1 fw-bold">Site Title</h6>
                        <p class="card-text"><%= site_title %></p>
                        <h6 class="card-subtitle mb-1 fw-bold">About Us</h6>
                        <p class="card-text"><%= site_about %></p>
                    </div>
                </div>

                <!-- General Settings Modal -->
                <div class="modal fade" id="general-settings" data-bs-backdrop="static" data-bs-keyboard="true"
                    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <form action="settingsupdate.jsp" method="post">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">General Settings</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="mb-3">
                                        <label class="form-label" for="site_title">Site Title</label>
                                        <input type="text" class="form-control shadow-none" name="site_title"
                                            value="<%= site_title %>">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="site_about">About Us</label>
                                        <textarea class="form-control shadow-none" rows="6"
                                            name="site_about"><%= site_about %></textarea>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn text-secondary shadow-none"
                                        data-bs-dismiss="modal">Cancel</button>
                                    <button type="submit"
                                        class="btn custom-bg text-white shadow-none">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- Contacts Details -->
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
                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h5 class="card-title m-0">Contacts Settings</h5>
                            <button type="button" class="btn btn-dark shadow-none btn-sm" data-bs-toggle="modal"
                                data-bs-target="#contacts-settings">
                                <i class="bi bi-pencil-square"></i> Edit
                            </button>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="mb-4">
                                    <h6 class="card-subtitle mb-1 fw-bold">Address</h6>
                                    <p class="card-text"><%= address %></p>
                                </div>
                                <div class="mb-4">
                                    <h6 class="card-subtitle mb-1 fw-bold">Google Maps</h6>
                                    <p class="card-text"><%= gmap %></p>
                                </div>
                                <div class="mb-4">
                                    <h6 class="card-subtitle mb-1 fw-bold">Phone Numbers</h6>
                                    <p class="card-text mb-1">
                                        <i class="bi bi-telephone-fill"></i> <%= pn1 %>
                                        <span id="pn1"></span>
                                    </p>
                                    <p class="card-text">
                                        <i class="bi bi-telephone-fill"></i> <%= pn2 %>
                                        <span id="pn2"></span>
                                    </p>
                                </div>
                                <div class="mb-4">
                                    <h6 class="card-subtitle mb-1 fw-bold">E-mails</h6>
                                    <p class="card-text"><%= email %></p>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="mb-4">
                                    <h6 class="card-subtitle mb-1 fw-bold">Social Media</h6>
                                    <p class="card-text mb-1">
                                        <i class="bi bi-twitter-x me-1"></i> <%= tw %>
                                        <span id="tw"></span>
                                    </p>
                                    <p class="card-text mb-1">
                                        <i class="bi bi-instagram me-1"></i> <%= insta %>
                                        <span id="insta"></span>
                                    </p>
                                    <p class="card-text mb-1">
                                        <i class="bi bi-facebook me-1"></i> <%= fb %>
                                        <span id="fb"></span>
                                    </p>
                                    <p class="card-text mb-1">
                                        <i class="bi bi-snapchat me-1"></i> <%= snap %>
                                        <span id="snap"></span>
                                    </p>
                                </div>
                                <div class="mb-4">
                                    <h6 class="card-subtitle mb-1 fw-bold">iFrame</h6>
                                    <iframe src="<%= iframe %>" id="iframe" class="border p-2 w-100"
                                        loading="lazy"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Contacts Modal -->
                <div class="modal fade" id="contacts-settings" data-bs-backdrop="static" data-bs-keyboard="true"
                    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <form action="contactsupdate.jsp" method="post">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Contacts Settings</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="container-fluid p-0">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="address">Address</label>
                                                    <input type="text" class="form-control shadow-none" name="address"
                                                        value="<%= address %>">
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="site_title">Google Maps Link</label>
                                                    <input type="text" class="form-control shadow-none" name="gmap"
                                                        value="<%= gmap %>">
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="site_title">Phone Numbers</label>
                                                    <div class="input-group mb-3 fw-bold">
                                                        <span class="input-group-text"><i
                                                                class="bi bi-telephone-fill"></i></span>
                                                        <input type="text" class="form-control shadow-none" name="pn1"
                                                            value="<%= pn1 %>">
                                                    </div>
                                                    <div class="input-group mb-3 fw-bold">
                                                        <span class="input-group-text"><i
                                                                class="bi bi-telephone-fill"></i></span>
                                                        <input type="text" class="form-control shadow-none" name="pn2"
                                                            value="<%= pn2 %>">
                                                    </div>
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="site_title">Email</label>
                                                    <input type="text" class="form-control shadow-none" name="email"
                                                        value="<%= email %>">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="tw">Twitter</label>
                                                    <div class="input-group mb-3 fw-bold">
                                                        <span class="input-group-text"><i
                                                                class="bi bi-twitter"></i></span>
                                                        <input type="text" class="form-control shadow-none" name="tw"
                                                            value="<%= tw %>">
                                                    </div>
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="insta">Instagram</label>
                                                    <div class="input-group mb-3 fw-bold">
                                                        <span class="input-group-text"><i
                                                                class="bi bi-instagram"></i></span>
                                                        <input type="text" class="form-control shadow-none" name="insta"
                                                            value="<%= insta %>">
                                                    </div>
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="fb">Facebook</label>
                                                    <div class="input-group mb-3 fw-bold">
                                                        <span class="input-group-text"><i
                                                                class="bi bi-facebook"></i></span>
                                                        <input type="text" class="form-control shadow-none" name="fb"
                                                            value="<%= fb %>">
                                                    </div>
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="snap">Snapchat</label>
                                                    <div class="input-group mb-3 fw-bold">
                                                        <span class="input-group-text"><i
                                                                class="bi bi-snapchat"></i></span>
                                                        <input type="text" class="form-control shadow-none" name="snap"
                                                            value="<%= snap %>">
                                                    </div>
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="iframe">iFrame</label>
                                                    <input type="text" class="form-control shadow-none" name="iframe"
                                                        value="<%= iframe %>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn text-secondary shadow-none"
                                        data-bs-dismiss="modal">Cancel</button>
                                    <button type="submit"
                                        class="btn custom-bg text-white shadow-none">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- Management Team Details -->
        
                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h5 class="card-title m-0">Management Team</h5>
                            <button type="button" class="btn btn-dark shadow-none btn-sm" data-bs-toggle="modal"
                                data-bs-target="#management-settings">
                                <i class="bi bi-plus-square"></i> Add
                            </button>
                        </div>
                        <div class="d-flex align-items-center justify-content-end mb-3">
                            <button type="button" class="btn btn-dark shadow-none btn-sm" data-bs-toggle="modal"
                                data-bs-target="#managementedit-settings">
                                <i class="bi bi-pencil-square"></i> Edit
                            </button>
                        </div>
                        <!-- Management Team content here -->
                        <%@page import="com.net.DAO.ManagementDAO" %>
                        <div class="row" id="team-data">
	                        <%
			                	ResultSet rs3= ManagementDAO.ShowMember();
			                    while(rs3.next()){
			                    String name= rs3.getString(1);
			                    String designation= rs3.getString(2);
			                    String contact= rs3.getString(3);
			                    String email2= rs3.getString(4);
			                    String photo= rs3.getString(5);
			                    String bio= rs3.getString(6);	
			                %>
                        	<div class="col-md-2 mb-3">
                        		<div class="card text-white bg-dark">
								  <img src="<%= photo %>" class="card-img">
								  <div class="card-img-overlay text-end">
								  	<button type="button" class="btn btn-danger btn-sm shadow-none"><i class="bi bi-trash3"></i> Delete</button>
								  </div>
								  <p class="card-text text-center px-3 py-1"><%= name %></p>
								</div>
                        	</div>
                        	<%
			                    }
                        	%>
                        </div>
                    </div>
                </div>

                <!-- Management Add Modal -->
                <div class="modal fade" id="management-settings" data-bs-backdrop="static" data-bs-keyboard="true"
                    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <form action="managementadd.jsp" method="post">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Add Members</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="container-fluid p-0">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_name">Name</label>
                                                    <input type="text" class="form-control shadow-none"
                                                        name="name">
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_designation">Designation</label>
                                                    <input type="text" class="form-control shadow-none"
                                                        name="designation">
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_contact">Contact</label>
                                                    <input type="text" class="form-control shadow-none"
                                                        name="contact">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_email">Email</label>
                                                    <input type="text" class="form-control shadow-none"
                                                        name="email">
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_photo">Photo</label>
                                                    <input type="file" class="form-control shadow-none"
                                                        name="photo" accept=".jpg, .jpeg, .png, .webp, .svg">
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_bio">Bio</label>
                                                    <textarea class="form-control shadow-none" rows="6"
                                                        name="bio"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn text-secondary shadow-none"
                                        data-bs-dismiss="modal">Cancel</button>
                                    <button type="submit"
                                        class="btn custom-bg text-white shadow-none">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                
                <!-- Management Edit Modal -->
                <div class="modal fade" id="managementedit-settings" data-bs-backdrop="static" data-bs-keyboard="true"
                    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <form action="managementupdate.jsp" method="post">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Update Members</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="container-fluid p-0">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_name">Name</label>
                                                    <input type="text" class="form-control shadow-none"
                                                        name="name">
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_designation">Designation</label>
                                                    <input type="text" class="form-control shadow-none"
                                                        name="designation">
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_contact">Contact</label>
                                                    <input type="text" class="form-control shadow-none"
                                                        name="contact">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_email">Email</label>
                                                    <input type="text" class="form-control shadow-none"
                                                        name="email">
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_photo">Photo</label>
                                                    <input type="file" class="form-control shadow-none"
                                                        name="photo" accept=".jpg, .jpeg, .png, .webp, .svg">
                                                </div>
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_bio">Bio</label>
                                                    <textarea class="form-control shadow-none" rows="6"
                                                        name="bio"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn text-secondary shadow-none"
                                        data-bs-dismiss="modal">Cancel</button>
                                    <button type="submit"
                                        class="btn custom-bg text-white shadow-none">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</body>
</html>
