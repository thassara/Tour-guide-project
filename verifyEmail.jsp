<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>packagelogin</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" >
     <link rel="stylesheet" href="css/login.css">
</head>

<body>
<section class="header">
    <a href="home1.html" class="logo"> Mytravel.</a>
    <div class="search-box">
        <button class="btn-search" onclick="search()"><i class="fas fa-search"></i></button>
        <input id="searchText" type="text" class="input-search" placeholder="Type to Search...">
    </div> 
    
    <nav class="navbar">
        <a href="home1.html">Home</a>
        <a href="Packages.html">Packages</a>
        <a href="guide.html">Guides</a>
        <a href="about.html">About</a>
        <a href="review.html">Review</a>
        <button class="button"><a href="#"></a>Log in</button>
    </nav>

    <div id="menu-btn" class="fas fa-bars"></div>

</section>
<section style=" display: flex;
justify-content: center;
align-items: center;
min-height: 100vh;
background: url(images/img40.jpg) no-repeat;
background-size: cover;
background-position: center;">
<div class="wrapper5" >
    <form action="VerifyEmailServelet" method ="post">
      <h1>Verify your E-mail</h1>
      <div class="input-box5">
        <input type="email" name="email" placeholder="E-mail" required>
        <i class='bx bxs-user'></i>
      </div>
      
      <div class="remember-forgot">
        <label><input type="checkbox">Remember Me</label>
        <a href="#">Forgot E-mail</a>
      </div>
      <input type="submit" name="submit" value="Verify E-mail" class="btn5"> 
    </form>
  </div>
</section>



    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="js/guideScript.js"></script>
</body>

</html>