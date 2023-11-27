<%@page
	import="org.springframework.web.bind.annotation.SessionAttribute"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View User Details</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="Style/home.css">

</head>
<body>
<%
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
response.setHeader("pragma", "no-cache");
response.setDateHeader("Expires", 0);

if(session.getAttribute("loggedUser")==null){
	response.sendRedirect("/UserLogin") ;
}

%>
	<header class="header">

		<a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Clinic.
		</a>

		<nav class="navbar">

			<a href="/welcomeUser"><i class="fa fa-sign-in"
				aria-hidden="true"></i> Back</a>
		</nav>

		<div id="menu-btn" class="fas fa-bars"></div>

	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="Doctor" id="Doctor">

		<div class="row">
			<form method="post">
				<h3>View User Details</h3>


				<%
				if (request.getAttribute("error") != null) {
				%><div
					style="font-size: 25px; color: red">${error}</div>
				<%
				} else {
				%>


				<table style="font-size: 15px"
					class="table table-striped table-bordered box">
					<thead>
						<tr>
							<th>First name</th>
							<th>Last name</th>
							<th>Age</th>
							<th>Gender</th>
							<th>password</th>
							<th>Address</th>
							<th>Phone number</th>
							<th>Email</th>
							<th>user name</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>${up.firstname}</th>
							<th>${up.lastname}</th>
							<th>${up.age}</th>
							<th>${up.gender}</th>
							<th>${up.password}</th>
							<th>${up.address}</th>
							<th>${up.phoneno}</th>
							<th>${up.email}</th>
							<th>${up.username}</th>
						</tr>
					</tbody>
				</table>
				<%
				}
				%>

			</form>

		</div>

	</section>

</body>
</html>