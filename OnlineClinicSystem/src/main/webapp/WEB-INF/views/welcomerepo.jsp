<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reporter</title>
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
	<!-- header section starts  -->

	<header class="header">

		<a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Clinic.
		</a>

		<nav class="navbar">
			<a href="#home"><i class="fa fa-home fa-fw" aria-hidden="true"></i>Reporter</a>
			<a href="#services"><i class="fa fa-hospital-o"
				aria-hidden="true"></i> services</a> <a href="#about"><i
				class="fa fa-user" aria-hidden="true"></i> about</a> <a href="/repologout"><i
				class="fa fa-sign-in" aria-hidden="true"></i> Logout</a>
		</nav>

		<div id="menu-btn" class="fas fa-bars"></div>

	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="home" id="home">


		<div class="content">

			<a href="/ChangePassword" class="btn"> Change Password
				&nbsp;&nbsp; <span class="fas fa-chevron-right"></span>
			</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="/UpdateDoctorStatus" class="btn"> Update doctor Status <span
				class="fas fa-chevron-right"></span>
			</a>
		</div>

	</section>



	<!-- services section starts  -->

	<section class="services" id="services">

		<h1 class="heading">
			our <span>services</span>
		</h1>

		<div class="box-container">

			<div class="box">
				<i class="fas fa-notes-medical"></i>
				<h3>free checkups</h3>
			</div>

			<div class="box">
				<i class="fas fa-ambulance"></i>
				<h3>24/7 ambulance</h3>
			</div>

			<div class="box">
				<i class="fas fa-user-md"></i>
				<h3>expert doctors</h3>
			</div>

			<div class="box">
				<i class="fas fa-pills"></i>
				<h3>medicines</h3>
			</div>

			<div class="box">
				<i class="fas fa-procedures"></i>
				<h3>bed facility</h3>
			</div>

			<div class="box">
				<i class="fas fa-heartbeat"></i>
				<h3>total care</h3>
			</div>

		</div>

	</section>

	<!-- services section ends -->

	<!-- about section starts  -->

	<section class="about" id="about">

		<h1 class="heading">
			<span>about</span> us
		</h1>

		<div class="row">

			<div class="image">
				<img src="/Images/about-img.svg">

			</div>

			<div class="content">
				<h3>we take care of your healthy life</h3>
				<p>A clinic (or outpatient clinic or ambulatory care clinic) is
					a health facility that is primarily focused on the care of
					outpatients. Clinics can be privately operated or publicly managed
					and funded. They typically cover the primary care needs of
					populations in local communities, in contrast to larger hospitals
					which offer more specialised treatments and admit inpatients for
					overnight stays.</p>
				<a href="#" class="btn"> learn more <span
					class="fas fa-chevron-right"></span>
				</a>
			</div>

		</div>

	</section>

	<!-- about section ends -->



	<!-- footer section starts  -->

	<section class="footer">

		<div class="box-container">

			<div class="box">
				<h3>quick links</h3>
				<a href="#"> <i class="fas fa-chevron-right"></i> home
				</a> <a href="#"> <i class="fas fa-chevron-right"></i> services
				</a> <a href="#"> <i class="fas fa-chevron-right"></i> about
				</a> <a href="#"> <i class="fas fa-chevron-right"></i> book
				</a>
			</div>

			<div class="box">
				<h3>our services</h3>
				<a href="#"> <i class="fas fa-chevron-right"></i> Skin care
				</a> <a href="#"> <i class="fas fa-chevron-right"></i> General
					checkup
				</a> <a href="#"> <i class="fas fa-chevron-right"></i> orthopedic
				</a> <a href="#"> <i class="fas fa-chevron-right"></i> Ent
				</a> <a href="#"> <i class="fas fa-chevron-right"></i> ambulance
					service
				</a>
			</div>

			<div class="box">
				<h3>contact info</h3>
				<a href="#"> <i class="fas fa-phone"></i> +91 6352417895
				</a> <a href="#"> <i class="fas fa-phone"></i> +91 9987788551
				</a> <a href="#"> <i class="fas fa-envelope"></i> clinic@gmail.com
				</a> <a href="#"> <i class="fas fa-envelope"></i>
					clinicadmin@gmail.com
				</a> <a href="#"> <i class="fas fa-map-marker-alt"></i> Hyderabd,
					india
				</a>
			</div>

			<div class="box">
				<h3>follow us</h3>
				<a href="#"> <i class="fab fa-facebook-f"></i> facebook
				</a> <a href="#"> <i class="fab fa-twitter"></i> twitter
				</a> <a href="#"> <i class="fab fa-instagram"></i> instagram
				</a>

			</div>

		</div>

	</section>
</body>
</html>
