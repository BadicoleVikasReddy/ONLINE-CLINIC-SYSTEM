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
<title>View Doctor Details</title>
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

if(session.getAttribute("adminlogged")==null){
	response.sendRedirect("/AdminLogin") ;
}
%>
	<header class="header">

		<a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Clinic.
		</a>

		<nav class="navbar">

			<a href="/welcomeAdmin"><i class="fa fa-sign-in"
				aria-hidden="true"></i> Back</a>
		</nav>

		<div id="menu-btn" class="fas fa-bars"></div>

	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="Doctor" id="Doctor">

		<div class="row">
			<form method="post">
				<h3>View Doctor Details</h3>
				<input type="number" placeholder="Doctor ID " required="required" name="DoctorId"
					class="box"> <a href="/DeleteDoctorDetails"> <input
					type="submit" class="btn">
				</a> <br />
				<br />
				<br />
				<br />


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
							<th>DoctorId</th>
							<th>Doctor Name</th>
							<th>Date-Of-Birth</th>
							<th>Date-Of-Joining</th>
							<th>Gender</th>
							<th>Mobile</th>
							<th>Qualification</th>
							<th>Specification</th>
							<th>Years Of Experience</th>
							<th>Address</th>
							<th>Doctor Status</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>${dp.doctorId}</th>
							<th>${dp.doctorName}</th>
							<th>${dp.DOB}</th>
							<th>${dp.DOJ}</th>
							<th>${dp.gender}</th>
							<th>${dp.number}</th>
							<th>${dp.qualification}</th>
							<th>${dp.doctorSpecification}</th>
							<th>${dp.yearsOfExperience}</th>
							<th>${dp.address}</th>
							<th>${dp.doctorStatus}</th>
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