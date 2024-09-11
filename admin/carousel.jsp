<%@page import="com.net.DAO.CarouselDAO"%>
<%@page import="com.net.DAO.settingsUpdateDAO" %>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin Panel- Carousel</title>
    <%@ include file="../admin/links.jsp" %>
</head>

<body class="bg-light">
    <%@ include file="../admin/settings_common/header.jsp" %>
    <div class="container-fluid" id="main-content">
        <div class="row">
            <div class="col-lg-10 ms-auto p-4 overflow-hidden">
                <h3 class="mb-4">CAROUSEL</h3>

                <!-- Carousel -->
                <div class="card border-0 shadow-sm mb-4">
                    <div class="card-body">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <h5 class="card-title m-0">Photo</h5>
                            <button type="button" class="btn btn-dark shadow-none btn-sm" data-bs-toggle="modal"
                                data-bs-target="#carousel-settings">
                                <i class="bi bi-plus-square"></i> Add
                            </button>
                        </div>
                        <div class="d-flex align-items-center justify-content-end mb-3">
                            <button type="button" class="btn btn-dark shadow-none btn-sm" data-bs-toggle="modal"
                                data-bs-target="#managementedit-settings">
                                <i class="bi bi-pencil-square"></i> Edit
                            </button>
                        </div>

                        <!-- Carousel content here -->
                        <div class="row" id="team-data">
                            <% 
                                ResultSet rs = CarouselDAO.ShowPhoto();
                                while (rs.next()) {
                                    String photo = rs.getString(1);
                            %>
                            <div class="col-md-3 mb-3">
                                <div class="card text-white bg-dark">
                                    <img src="images/carousel/<%= photo %>" class="card-img">
                                    <div class="card-img-overlay text-end">
                                        <button type="button" class="btn btn-danger btn-sm shadow-none">
                                            <i class="bi bi-trash3"></i> Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <% 
                                } 
                            %>
                        </div>
                    </div>
                </div>

                <!-- Carousel Add Modal -->
                <div class="modal fade" id="carousel-settings" data-bs-backdrop="static" data-bs-keyboard="true"
                    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <form action="carouseladd.jsp" method="post">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Add Image</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="container-fluid p-0">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="management_photo">Photo</label>
                                                    <input type="file" class="form-control shadow-none" name="photo"
                                                        accept=".jpg, .jpeg, .png, .webp, .svg">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn text-secondary shadow-none"
                                        data-bs-dismiss="modal">Cancel</button>
                                    <button type="submit" class="btn custom-bg text-white shadow-none">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- Carousel Edit Modal -->
                <div class="modal fade" id="managementedit-settings" data-bs-backdrop="static" data-bs-keyboard="true"
                    tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <form action="carouselupdate.jsp" method="post">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Edit Image</h5>
                                </div>
                                <div class="modal-body">
                                    <div class="container-fluid p-0">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-3 fw-bold">
                                                    <label class="form-label" for="carousel-sno">S_no</label>
                                                    <input type="text" class="form-control shadow-none" name="s_no">
                                                    <label class="form-label" for="carousel_photo">Photo</label>
                                                    <input type="file" class="form-control shadow-none" name="photo"
                                                        accept=".jpg, .jpeg, .png, .webp, .svg">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn text-secondary shadow-none"
                                        data-bs-dismiss="modal">Cancel</button>
                                    <button type="submit" class="btn custom-bg text-white shadow-none">Save</button>
                                </div>
                            </div>
                        </form>
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
