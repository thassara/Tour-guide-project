<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" >
     <link rel="stylesheet" href="css/style.css">
</head>

<body>
<section class="header">
    <a href="home1.jsp" class="logo"> Mytravel.</a>
    <div class="search-box">
        <button class="btn-search" onclick="search()"><i class="fas fa-search"></i></button>
        <input id="searchText" type="text" class="input-search" placeholder="Type to Search...">
    </div> 
    
    <nav class="navbar">
        <a href="home1.jsp">Home</a>
         <a href="Package.jsp">Package</a>
        <a href="guide.html">Guides</a>
        <a href="about.html">About</a>
        <a href="review.html">Review</a>
        <a href="adminControl.html">Admin</a>
        <button class="button"><a href="#"></a>Sign in</button>
    </nav>

    <div id="menu-btn" class="fas fa-bars"></div>

</section>

<section class="home">
    <div class="swiper home-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide slide" > <video autoplay muted loop id="video-background">
                <source src="video/vid.mp4" type="video/mp4">
    
            </video>
                <div class="content">
                    <span>explore,discover,travel</span>
                    <h3>travel arround the sri lanka</h3>
                     <form action="Package_readServlet" method="post"><button type="submit" class="btn">discover more</button></form>
                </div>

            </div>

            <div class="swiper-slide slide" style="background: url(images/img5.jpg) no-repeat">
                <div class="content">
                    <span>explore,discover,travel</span>
                    <h3>discover the new places</h3>
                    <form action="Package_readServlet" method="post"><button type="submit" class="btn">discover more</button></form>
                </div>

            </div>
            
            <div class="swiper-slide slide" style="background: url(images/img4.jpg) no-repeat">
                <div class="content">
                    <span>explore,discover,travel</span>
                    <h3>make your tour</h3>
                    <form action="Package_readServlet" method="post"><button type="submit" class="btn">discover more</button></form>
                </div>

            </div>
        </div>
        <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    </div>
</section>

<section class="services">
    <h1 class="heading-title">our services</h1>
    <div class="box-container">
        <div class="box">
            <img src="images/icon1.png" alt="" width="90" height="100">
            <h3>adventure</h3>
        </div>
        <div class="box">
            <img src="images/icon2.jpeg" alt=""width="90" height="100">
            <h3>tour guide</h3>
        </div>
        <div class="box">
            <img src="images/icon3.png" alt=""width="90" height="100">
            <h3>trekking</h3>
        </div>
        <div class="box">
            <img src="images/8371386.png" alt=""width="90" height="100">
            <h3>camping</h3>
        </div>
        <div class="box">
            <img src="images/icon4.png" alt=""width="90" height="100">
            <h3>off road</h3>
        </div>
    </div>
</section>

<section class="home-about">
    <div class="image">
        <img src="images/img7.jpg">
    </div>
    <div class="content">
        <h3>about us</h3>
        <p>Mytravel is a full integrated travel company that offers comprehensive solutions for all the business and leisure travelers across the world. This prestigious travel company in Chennai mainly aims to satisfy the client’s requirements with ultimate transparency and cost-effectiveness. We assure to offer round the clock support and assistance at any point of your travel.</p>
   <a href="about.html" class="btn">Read More</a>
    </div>
</section>

<section class="home-package">
    <h1 class="heading-title">our packages</h1>
    <div class="box-container">
        <div class="box">
            <div class="image">
                <img src="images/img 8.jpg" alt="">
            </div>
            <div class="content">
                <h3>down south tour</h3>
                <p>this stunning location than discovering places to visit down south Sri Lanka The main tourist cities in southern Sri Lanka are Galle, Weligama.</p>
            <a href="book.html" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/img9.jpg" alt="">
            </div>
            <div class="content">
                <h3>up country tour</h3>
                <p> The Sri Lanka's Hill-Country offers the most scenic, mist-wrapped sceneries of dramatic mountain peaks and rolling hillsides.</p>
            <a href="book.html" class="btn">book now</a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="images/img10.jpg" alt="">
            </div>
            <div class="content">
                <h3>north tour</h3>
                <p> jaffna is the one of the best South Asia’s destinations to visit. There are many historical and archaeological places to see in Jaffna.</p>
            <a href="book.html" class="btn">book now</a>
            </div>
        </div>
    </div>
    <div class="load-more"> <form action="Package_readServlet" method="post"><button type="submit" class="btn">load more</button></form></div>
</section>



<section class="footer">
    <div class="box-container">
        <div class="box">
            <h3>Quick links</h3>
            <a href="home1.html"><i class="fas fa-angle-right"></i>Home</a>
            <a href="Packages.html"><i class="fas fa-angle-right"></i>Packages</a>
            <a href="guide.html"><i class="fas fa-angle-right"></i>Guides</a>
            <a href="about.html"><i class="fas fa-angle-right"></i>About</a>
            <a href="review.html"><i class="fas fa-angle-right"></i>Review</a>
        </div>

        <div class="box">
            <h3>extra links</h3>
            <a href="#"><i class="fas fa-angle-right"></i>ask</a>
            <a href="#"><i class="fas fa-angle-right"></i>about us</a>
            <a href="#"><i class="fas fa-angle-right"></i>privacy policy</a>
            <a href="#"><i class="fas fa-angle-right"></i>terms of travels</a>
            
        </div>
        <div class="box">
            <h3>contact information </h3>
            <a href="#"><i class="fas fa-phone"></i>0718995482</a>
            <a href="#"><i class="fas fa-phone"></i>0778351008</a>
            <a href="#"><i class="fas fa-envelope"></i>teamPisso@gmail.com</a>
            <a href="#"><i class="fas fa-map"></i>Sri lanka, Malabe</a>

        </div>
        <div class="box">
            <h3>follow us </h3>
            <a href=""><i class="fab fa-facebook-f"></i>facebook</a>
            <a href=""><i class="fab fa-twitter"></i>twitter</a>
            <a href=""><i class="fab fa-instagram"></i>instagram</a>
            <a href=""><i class="fab fa-linkedin"></i>linkedin</a>
            
        </div>
    </div>
    <div class="credit"> created by <span>Team Pisso </span> | all rigth reserved!</div>
</section>


    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="js/script.js"></script>
</body>

</html>

