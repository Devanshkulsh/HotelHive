<nav class="navbar navbar-expand-lg navbar-light bg-white px-lg-3 py-lg-2 shadow-sm sticky-top">
    <div class="container-fluid">
        <a class="navbar-brand me-5 fw-bold fs-3 h-font" href="home.jsp"> <%= site_title %></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active me-2" aria-current="page" href="home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link me-2" href="rooms.jsp">Rooms</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link me-2" href="facilities.jsp">Facilities</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link me-2" href="contactUs.jsp">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="aboutUs.jsp">About</a>
                </li>
            </ul>
            <div class="d-flex">
                <button type="button" class="btn btn-outline-dark shadow-none me-lg-3 me-2" data-bs-toggle="modal"
                    data-bs-target="#loginModal">
                    Login
                </button>
                <button type="button" class="btn btn-outline-dark shadow-none" data-bs-toggle="modal"
                    data-bs-target="#registerModal">
                    Register
                </button>

            </div>
        </div>
    </div>
</nav>


<div class="modal fade" id="loginModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="guestlogin.jsp" method="post">
                <div class="modal-header">
                    <h5 class="modal-title d-flex align-items-center">
                        <i class="bi bi-person-circle fs-3 me-2"></i> Customer Login
                    </h5>
                    <button type="reset" class="btn-close shadow-none" data-bs-dismiss="modal"
                        aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email address</label>
                        <input type="email" class="form-control  shadow-none" name="email">
                    </div>
                    <div class="mb-4">
                        <label for="pass" class="form-label">Password</label>
                        <input type="password" class="form-control  shadow-none" name="pass">
                    </div>
                    <div class="d-flex align-items-center justify-content-between mb-2">
                        <button type="submit" class="btn btn-dark shadow-none">Login</button>
                        <a href="javascript: void(0)" class="text-secondary text-decoration-none">Forgot
                            Password?</a>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>


<div class="modal fade" id="registerModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <form action="guestreg.jsp" method="post">
                <div class="modal-header">
                    <h5 class="modal-title d-flex align-items-center">
                        <i class="bi bi-person-lines-fill  fs-3 me-2"></i> Customer Registration
                    </h5>
                    <button type="reset" class="btn-close shadow-none" data-bs-dismiss="modal"
                        aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <span class="badge rounded-pill bg-light text-dark mb-3 text-wrap lh-base">
                        Note: Your details must match with your ID (Aadhaar Card, Passport, Driving License, etc.)
                        that will be required during check-in.
                    </span>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 ps-0 mb-3">
                                <label class="form-label" for="name">Name</label>
                                <input type="text" class="form-control  shadow-none" name="name">
                            </div>
                            <div class="col-md-6 p-0 mb-3">
                                <label class="form-label" for="name">Email</label>
                                <input type="email" class="form-control  shadow-none" name="email">
                            </div>
                            <div class="col-md-6 ps-0 mb-3">
                                <label class="form-label" for="phone">Phone Number</label>
                                <input type="number" class="form-control  shadow-none" name="phone">
                            </div>
                            <div class="col-md-6 p-0 mb-3">
                                <label class="form-label">Upload Profile Photo</label>
                                <input type="file" class="form-control  shadow-none">
                            </div>
                            <div class="col-md-12 p-0 mb-3">
                                <label class="form-label" for="address">Address</label>
                                <textarea class="form-control shadow-none" rows="1" name="address"></textarea>
                            </div>
                            <div class="col-md-6 ps-0 mb-3">
                                <label class="form-label" for="pincode">PinCode</label>
                                <input type="number" class="form-control  shadow-none" name="pincode">
                            </div>
                            <div class="col-md-6 p-0 mb-3">
                                <label class="form-label" for="dob">Date of Birth</label>
                                <input type="date" class="form-control  shadow-none" name="dob">
                            </div>
                            <div class="col-md-6 ps-0 mb-3">
                                <label class="form-label" for="pass">Password</label>
                                <input type="password" class="form-control  shadow-none" name="pass">
                            </div>
                            <div class="col-md-6 p-0 mb-3">
                                <label class="form-label" for="cpass">Confirm Password</label>
                                <input type="password" class="form-control  shadow-none" name="cpass">
                            </div>
                        </div>
                    </div>
                    <div class="text-center my-1">
                        <button type="submit" class="btn btn-dark shadow-none">Register</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>