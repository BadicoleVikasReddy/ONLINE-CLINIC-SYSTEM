<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Reporter Password</title>
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
				<h3>Change Reporter Password</h3>
				<input type="password" placeholder="Enter Old Password"
					name="oldpass" class="box" required="required"> <input type="password"
					placeholder="Enter new Password" name="newpass" class="box" required="required">

				<input type="password" placeholder="Conform new Password"
					name="confpass" class="box" required="required"> <a href="/ChangePassword"><input
					type="submit" class="btn"></a>

			</form>

		</div>

	</section>
</body>
</html>