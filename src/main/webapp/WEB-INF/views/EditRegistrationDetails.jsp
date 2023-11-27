<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User Registration</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

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

    <a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Clinic. </a>

    <nav class="navbar">
        
        <a href="/welcomeUser"><i class="fa fa-sign-in" aria-hidden="true"></i>
        Back</a>
    </nav>

    <div id="menu-btn" class="fas fa-bars"></div>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="Doctor" id="Doctor">

    <div class="row">
        <form:form method="post" modelAttribute="user">
            <h3>Edit User Registration</h3>
            <form:input type="text"  path="Firstname" name="Firstname" class="box"></form:input>
            <form:input type="text"  path="Lastname" name="Lastname" class="box"></form:input>
            <form:input type="number" path="Age" name="Age" class="box"></form:input>
            <form:input type="text" path="Gender" name="Gender" class="box"></form:input>
            <form:input type="password"  path="password" name="password" class="box"></form:input>
            <form:input type="text"  path="Address" name="Address" class="box"></form:input>
            <form:input type="number"  path="Phoneno" name="Phoneno" class="box"></form:input>
            <form:input type="email" path="Email" name="Email" class="box"></form:input>
            <form:input type="text"  path="username" name="username" class="box"></form:input>
            
        <input type="submit"  class="btn">
        </form:form>

    </div>

</section>
</body>
</html>