<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Hive- Facilities</title>
    <%@ include file="links.jsp"%>
    <%@ include file="../admin/dynamic.jsp" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link
        href="https://fonts.googleapis.com/css2?family=Merienda:wght@300..900&family=Poppins:wght@400;500;600&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
    <style>
        .pop:hover{
            border-top-color: var(--teal) !important;
            transform: scale(1.03);
            transition: all 0.3s;
        } 
    </style>
</head>

<body class="bg-light">
    <%@page import="com.net.DAO.FacilitiesDAO" %>
    <%
        ResultSet rs4 = FacilitiesDAO.ShowFacilities();
    %>
    <%@ include file="header.jsp" %>

    <!-- Our Facilities -->
    <div class="my-5 px-4">
        <h2 class="fw-bold h-font text-center">OUR FACILITIES</h2>
        <div class="h-line bg-dark"></div>
        <p class="text-center mt-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem fugiat assumenda eius
            non cumque quia voluptas distinctio eveniet maiores, aliquam voluptates nisi ea asperiores eaque!</p>
    </div>

    <div class="container">
        <div class="row">
            <%
                while (rs4.next()) {
                    String icon = rs4.getString(1);
                    String name2 = rs4.getString(2);
                    String description = rs4.getString(3);
            %>
            <div class="col-lg-4 col-md-6 mb-5 px-4">
                <div class="bg-white rounded shadow p-4 border-top border-4 border-dark pop">
                    <div class="d-flex align-items-center mb-2">
                        <img src="images/facilities/<%= icon %>" width="40px">
                        <h5 class="m-0 ms-3"><%= name2 %></h5>
                    </div>
                    <p><%= description %></p>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>

</html>
