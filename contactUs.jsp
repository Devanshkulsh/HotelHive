<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Hive- Contact</title>
    <%@ include file="links.jsp" %>
    <%@ include file="../admin/dynamic.jsp" %>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link
        href="https://fonts.googleapis.com/css2?family=Merienda:wght@300..900&family=Poppins:wght@400;500;600&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="common.css">
</head>

<body class="bg-light">
    <%@ include file="header.jsp" %>
    <!-- Our Facilities -->
    <div class="my-5 px-4">
        <h2 class="fw-bold h-font text-center">CONTACT US</h2>
        <div class="h-line bg-dark"></div>
        <p class="text-center mt-3 ">Lorem ipsum dolor sit amet consectetur adipisicing elit.Autem fugiat assumenda eius
            non cumque quia voluptas <br>
            distinctio eveniet maiores, aliquam voluptates nisi ea asperiores eaque!</p>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 mb-5 px-4">
                <div class="bg-white rounded shadow p-4">
                    <iframe class="w-100 rounded mb-4"
                        src="<%= iframe %>"
                        height="320px" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <h5>Address</h5>

                    <a href="https://maps.app.goo.gl/cchaXxBzWN5BD2TQ7" target="_blank"
                        class="d-inline-block text-decoration-none text-dark mb-2">
                        <i class="bi bi-geo-alt-fill"></i> <%= address %>
                    </a>

                    <h5 class="mt-4">Call Us</h5>
                    <a href="tel: +9112233445" class="d-inline-block mb-2 text-decoration-none text-dark"> <i
                            class="bi bi-telephone-fill"></i> <%= pn1 %></a>
                    <br>
                    <a href="tel: +9112233445" class="d-inline-block text-decoration-none text-dark"> <i
                            class="bi bi-telephone-fill"></i> <%= pn2 %></a>

                    <h5 class="mt-4">Email</h5>
                    <a href="mailto: devansh2021csai051@abesit.edu.in"
                        class="d-inline-block text-decoration-none text-dark">
                        <i class="bi bi-envelope-fill"></i> <%= email %>
                    </a>

                    <h5 class="mt-4 ">Follow Us</h5>
                    <a href="#" class="d-inline-block text-dark fs-5 me-2">
                        <i class="bi bi-twitter-x me-1"></i> <%= tw %>
                    </a>
                    <a href="#" class="d-inline-block text-dark fs-5 me-2">
                        <i class="bi bi-instagram me-1"></i> <%= insta %>
                    </a>
                    <a href="#" class="d-inline-block text-dark fs-5 me-2">
                        <i class="bi bi-facebook me-1"></i> <%= fb %>
                    </a>
                    <a href="#" class="d-inline-block text-dark fs-5 me-2">
                        <i class="bi bi-snapchat"></i> <%= snap %>
                    </a>
                </div>
            </div>
            
            
            
            
            
            
            
            <div class="col-lg-6 col-md-6 px-4">
                <div class="bg-white rounded shadow p-4">
                    <form action="contsub.jsp" method="post">
                        <h5>Send a message</h5>
                        <div class="mt-3">
                            <label for="exampleInputEmail1" class="form-label" style="font-weight: 500;">Name</label>
                            <input type="text" class="form-control  shadow-none" name="name">
                        </div>
                        <div class="mt-3">
                            <label for="exampleInputEmail1" class="form-label" style="font-weight: 500;">Email</label>
                            <input type="email" class="form-control  shadow-none" name="email">
                        </div>
                        <div class="mt-3">
                            <label for="exampleInputEmail1" class="form-label" style="font-weight: 500;">Subject</label>
                            <input type="text" class="form-control  shadow-none" name="subject">
                        </div>
                        <div class="mt-3">
                            <label for="exampleInputEmail1" class="form-label" style="font-weight: 500;">Message</label>
                            <textarea class="form-control shadow-none" rows="5" name="message" style="resize: none;"></textarea>
                        </div>
                        <button type="submit" class="btn text-white custom-bg mt-4">Send</button>

                    </form>
                    
                </div>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>

</html>