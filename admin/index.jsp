<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin- Login</title>
<%@ include file="../links.jsp" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<style>
        div.login-form{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 400px;
        }
</style>
</head>
<body class="bg-light">
	<div class="login-form text-center rounded bg-white shadow overflow-hidden">
        <form action="adminlogin.jsp" method="post">
            <h4 class="bg-dark text-white py-3">ADMIN LOGIN PANEL</h4>
            <div class="p-4">
                <div class="mb-3">
                    <input type="text" required name= "a_username" class="form-control  shadow-none text-center" placeholder="User Name">
                </div>
                <div class="mb-4">
                    <input type="password" required name="a_password" class="form-control  shadow-none text-center" placeholder="Password">
                </div>
                <button type="submit" name="login" class="btn text-white custom-bg shadow-none">Login</button>
            </div>
        </form>
    </div>
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
	
</body>
</html>