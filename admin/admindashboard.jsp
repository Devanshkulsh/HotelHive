<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel- Dashboard</title>
<%@ include file="../links.jsp" %>
</head>
<body class="bg-light">
	
	<%@ include file="../admin/settings_common/header.jsp" %>
	
	<div class="container-fluid" id="main-content">
		<div class="row">
			<div class="col-lg-10 ms-auto p-4 overflow-hidden">
				<div class="d-flex align-items-center justify-content-between mb-4">
					<h3>DASHBOARD</h3>
				</div>
				<div class="row mb-4">
					<div class="col-md-3 mb-4">
						<a href="features_facilities.jsp" class="text-decoration-none">
							<div class="card text-center p-3 text-success">
								<h6>Features & Facilities</h6>	
							</div>
						</a>
					</div>
					<div class="col-md-3 mb-4">
						<a href="queries.jsp" class="text-decoration-none">
							<div class="card text-center p-3 text-danger">
								<h6>User Queries</h6>	
							</div>
						</a>
					</div>
					<div class="col-md-3 mb-4">
						<a href="carousel.jsp" class="text-decoration-none">
							<div class="card text-center p-3 text-warning">
								<h6>Carousel</h6>	
							</div>
						</a>
					</div>
					<div class="col-md-3 mb-4">
						<a href="settings.jsp" class="text-decoration-none">
							<div class="card text-center p-3 text-secondary">
								<h6>Settings</h6>	
							</div>
						</a>
					</div>	
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>