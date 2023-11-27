<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Admin Password</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

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

    <a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Clinic. </a>

    <nav class="navbar">
        
        <a href="/welcomeAdmin"><i class="fa fa-sign-in" aria-hidden="true"></i>
        Back</a>
    </nav>

    <div id="menu-btn" class="fas fa-bars"></div>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="Doctor" id="Doctor">

    <div class="row">
        <form method="post">
            <h3>Change Admin Password</h3>
           <input type="password" required="required"  placeholder="Enter Old Password" name="oldpass" class="box">
          <input type="password" required="required" placeholder="Enter new Password" name="newpass" class="box">
          
          <input type="password"  required="required" placeholder="Conform new Password" name="confpass" class="box">
            
        <a href="/ChangeAdminPassword"  ><input type="submit"  class="btn"></a>
        
        </form>

    </div>

</section>
</body>
</html>