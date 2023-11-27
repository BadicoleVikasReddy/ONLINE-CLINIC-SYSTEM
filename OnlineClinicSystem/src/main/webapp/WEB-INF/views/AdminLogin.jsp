<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
   <link rel="stylesheet" href="Style/home.css">

</head>
<body>
<header class="header">

    <a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Clinic. </a>

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
            <h3>Admin Login</h3>
            <input type="text" required="required" placeholder="Username" name="Adminname" class="box">
            <input type="password" required="required" placeholder="Password" name="Adminpass" class="box">
            
        <a href="/AdminLogin"  ><input type="submit"  class="btn"></a>
        
        </form>

    </div>

</section>
</body>
</html>