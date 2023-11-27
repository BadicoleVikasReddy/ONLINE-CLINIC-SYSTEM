<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

       <link rel="stylesheet" href="Style/home.css">
    
</head>
<body>

<header class="header">

    <a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Clinic. </a>

    <nav class="navbar">
        
        <a href="/"><i class="fa fa-sign-in" aria-hidden="true"></i>
        Logout</a>
    </nav>

    <div id="menu-btn" class="fas fa-bars"></div>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="Doctor" id="Doctor">

    <div class="row">
        <form method="post">
            <h3>User Registration</h3>
            <input type="text" placeholder="First Name" required="required" name="Firstname" class="box">
            <input type="text" placeholder="Last Name" required="required" name="Lastname" class="box">
            <input type="number" placeholder="Age" required="required" name="Age" class="box">
            <input type="text" placeholder="Gender" required="required" name="Gender" class="box">
            <input type="password" placeholder="Password" required="required" name="password" class="box">
            <input type="text" placeholder="Address" required="required" name="Address" class="box">
            <input type="number" placeholder="Phone number" required="required" name="Phoneno" class="box">
            <input type="email" placeholder="Email" required="required" name="Email" class="box">
            <input type="text" placeholder="Enter Firstname+Lastname" required="required" name="username" class="box">
            
        <a href="/registration"  ><input type="submit"  class="btn"></a>
        </form>

    </div>

</section>
</body>
</html>