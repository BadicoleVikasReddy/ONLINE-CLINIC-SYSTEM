<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Clinic system</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   <link rel="stylesheet" href="Style/home.css">
</head>
<body>
    
<!-- header section starts  -->

<header class="header">

    <a href="#" class="logo"> <i class="fas fa-heartbeat"></i> Clinic. </a>

    <nav class="navbar">
        <a href="#home"><i class="fa fa-home fa-fw" aria-hidden="true"></i>home</a>
        <a href="#services"><i class="fa fa-hospital" aria-hidden="true"></i>
        services</a>
        <a href="#about"><i class="fa fa-user" aria-hidden="true"></i>
        about</a>
        <a href="#login"><i class="fa fa-book" aria-hidden="true"></i>
        book</a>
        <a href="#login"><i class="fa fa-user" aria-hidden="true"></i>
        login</a>
    </nav>

    <div id="menu-btn" class="fas fa-bars"></div>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

    <div class="image">
<img src="/Images/home-img.svg">
    </div>

    <div class="content">
        <h3>stay safe, stay healthy</h3>
        <p>A good doctor cures the disease, but a great doctor cures the cause!</p>
    </div>

</section>



<!-- services section starts  -->

<section class="services" id="services">

    <h1 class="heading"> our <span>services</span> </h1>

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

    <h1 class="heading"> <span>about</span> us </h1>

    <div class="row">

        <div class="image">
            <img src="/Images/about-img.svg">
            
        </div>

        <div class="content">
            <h3>we take care of your healthy life</h3>
            <p>A clinic (or outpatient clinic or ambulatory care clinic) is a health facility that is primarily focused on the care of outpatients. Clinics can be privately operated or publicly managed and funded. They typically cover the primary care needs of populations in local communities, in contrast to larger hospitals which offer more specialised treatments and admit inpatients for overnight stays.</p>
            <a href="#" class="btn"> learn more <span class="fas fa-chevron-right"></span> </a>
        </div>

    </div>

</section>

<!-- about section ends -->



<!-- booking section starts   -->

<section class="book" id="book">

    <h1 class="heading"> <span>book</span> now </h1>    

    <div class="row">

        <div class="image">
            <img src="Images/book-img.svg" alt="">
        </div>

        <form action="">
            <h3>book appointment</h3>
            <input type="text" placeholder="your name" class="box">
            <input type="number" placeholder="your number" class="box">
            <input type="email" placeholder="your email" class="box">
            <input type="date" class="box">
            <input type="submit" value="book now" class="btn">
        </form>

    </div>

</section>

<!-- booking section ends -->
<section class="login" id="login">


    <div class="content">
    
<a href="/AdminLogin" class="btn">  Admin <span class="fas fa-chevron-right"></span> </a>
<a href="/repoLogin" class="btn">  Reporter <span class="fas fa-chevron-right"></span> </a>
<a href="/UserLogin" class="btn">  User <span class="fas fa-chevron-right"></span> </a>


			
		 
    </div>


</section>

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>quick links</h3>
            <a href="#"> <i class="fas fa-chevron-right"></i> home </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> services </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> about </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> book </a>
        </div>

        <div class="box">
            <h3>our services</h3>
            <a href="#"> <i class="fas fa-chevron-right"></i> Skin care </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> General checkup </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> orthopedic   </a>
            <a href="#"> <i class="fas fa-chevron-right"></i> Ent</a>
            <a href="#"> <i class="fas fa-chevron-right"></i> ambulance service </a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +91 6352417895 </a>
            <a href="#"> <i class="fas fa-phone"></i> +91 9987788551 </a>
            <a href="#"> <i class="fas fa-envelope"></i> clinic@gmail.com </a>
            <a href="#"> <i class="fas fa-envelope"></i> clinicadmin@gmail.com </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> Hyderabd, india </a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
          
            <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
           
        </div>

    </div>

    
</section>
</body>
</html>