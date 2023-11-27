<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Doctor Status</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="Style/home.css">

</head>
<body>
  <%
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
response.setHeader("pragma", "no-cache");
response.setDateHeader("Expires", 0);

if(session.getAttribute("repologged")==null){
	response.sendRedirect("/repoLogin") ;
}
%>
	<header class="header">

		<a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Clinic.
		</a>

		<nav class="navbar">

			<a href="/welcomerepo"><i class="fa fa-sign-in"
				aria-hidden="true"></i> Back</a>
		</nav>

		<div id="menu-btn" class="fas fa-bars"></div>

	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="Doctor" id="Doctor">

		<div class="row">
			<form method="post">
				<h3>Update Doctor Status</h3>
				<input type="text" class="box" required="required" placeholder="Enter Doctor ID"
					name="DoctorId"> <input type="text" class="box"
					placeholder="Enter Doctor Status" name="DoctorStatus" required="required"> <a
					href="/UpdateDoctorStatus"> <input type="submit" class="btn"
					name="submit">
				</a>

			</form>

		</div>

	</section>
</body>
</html>