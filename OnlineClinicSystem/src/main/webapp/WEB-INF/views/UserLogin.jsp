<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

<link rel="stylesheet" href="Style/home.css">

</head>
<body>
	<header class="header">

		<a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Clinic.
		</a>

		<nav class="navbar">

			<a href="/"><i class="fa fa-sign-in" aria-hidden="true"></i>
				logout</a>
		</nav>

		<div id="menu-btn" class="fas fa-bars"></div>

	</header>

	<!-- header section ends -->

	<!-- home section starts  -->

	<section class="Doctor" id="Doctor">

		<div class="row">
			<form method="post">
				<h3>User Login</h3>
				<input type="text" placeholder="Username" name="username"
					class="box" required="required"> <input type="password" placeholder="Password"
					name="userpass" class="box" required="required"> <a href="/UserLogin"><input
					type="submit" class="btn" required="required"></a> <a href="/registration"><input
					type="button" value="register" class="btn" required="required"></a>
			</form>

		</div>

	</section>
</body>
</html>