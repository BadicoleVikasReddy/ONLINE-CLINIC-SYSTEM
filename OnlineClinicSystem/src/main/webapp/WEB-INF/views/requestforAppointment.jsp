<%@page
	import="org.springframework.web.bind.annotation.SessionAttribute"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Details</title>
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
				aria-hidden="true"></i> back</a>
		</nav>

		<div id="menu-btn" class="fas fa-bars"></div>

	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="Doctor" id="Doctor">

		<div class="row">
			<form method="post">

				<br />
				<br />
				<br />
				<br />


				<h3>Appointment Details</h3>

				<table style="font-size: 15px"
					class="table table-striped table-bordered box">
					<thead>
						<tr>
							<th>DoctorId</th>
							<th>Doctor Name</th>
							<th>Qualification</th>
							<th>Specification</th>
							<th>Years Of Experience</th>
							<th>Doctor Status</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="dp" items="${doctors}">
							<tr>
								<th>${dp.doctorId}</th>
								<th>${dp.doctorName}</th>
								<th>${dp.qualification}</th>
								<th>${dp.doctorSpecification}</th>
								<th>${dp.yearsOfExperience}</th>
								<th>${dp.doctorStatus}</th>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<input type="number" name="doctorId" class="box"
					placeholder="Enter Doctor Id from table" required="required"> <input
					type="date" name="appointmentDate" class="box" required="required"> <input
					type="submit" class="box">
			</form>

		</div>

	</section>

</body>
</html>