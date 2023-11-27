<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Doctor Details</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

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
				<h3>Modify Doctor Details</h3>
				<input type="number" required="required" placeholder="Doctor ID " name="DoctorId" class="box"> 
				<input type="text" required="required" placeholder="Doctor Name " name="DoctorName" class="box"> 
				<input type="date"	required="required" placeholder="Date OF Birth " name="DOB" class="box"> 
				<input type="date" required="required" placeholder="Date OF Joining " name="DOJ" class="box">
				<input type="text" required="required" placeholder="Gender " name="Gender" class="box">
				<input type="number" required="required" placeholder="Phone number " name="number" class="box"> 
				<input type="text" required="required" placeholder="Doctor Qualification " name="Qualification" class="box"> 
				<input type="text" required="required" placeholder="Doctor Specification " name="DoctorSpecification" class="box"> 
				<input type="number" required="required" placeholder="Doctor YearsOfExperience " name="YearsOfExperience" class="box">
				<input type="text" required="required" placeholder="Doctor Address " name="Address" class="box"> 
				<input type="text" required="required" placeholder="Doctor Status " name="DoctorStatus" class="box"> 
				<a href="/ModifyDoctorDetails"> <input type="submit" class="btn">
				</a>
			</form>

		</div>

	</section>
</body>
</html>