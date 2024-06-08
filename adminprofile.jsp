<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin profile</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" >
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
     <link rel="stylesheet" href="css/stylea.css">
	  <link rel="stylesheet" href="css/adminprofile.css">
</head>

<body>
<c:forEach var="ad" items="${ad}">
<section class="header">
    <a href="home1.html" class="logo"> Mytravel.</a>
    <div class="search-box">
        <button class="btn-search"><i class="fas fa-search"></i></button>
        <input type="text" class="input-search" placeholder="Type to Search...">
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

  
</head>
<body>
   
       <!--  <ul>
            <li>
                <a href="#message">
                    <span class="icon-count">29</span>
                    <i class="fa fa-envelope fa-2x"></i>
                </a>
            </li>
            <li>
                <a href="#notification">
                    <span class="icon-count">59</span>
                    <i class="fa fa-bell fa-2x"></i>
                </a>
            </li>
            <li>
                <a href="#sign-out">
                    <i class="fa fa-sign-out-alt fa-2x"></i>
                </a>
            </li>
        </ul> -->
        <!-- End -->
    </div>
    <!-- End -->
    <c:url value="adminup_de.jsp" var="adminupdate">
		    <c:param name="id" value="${ad.id}" />
			<c:param name="Name" value="${ad.name}" />
			<c:param name="email" value="${ad.email}" />
			<c:param name="address" value="${ad.address}" />
			<c:param name="password" value="${ad.password}" />
			<c:param name="job" value="${ad.job}" />
			<c:param name="skills" value="${ad.skills}"/>
			<c:param name="images" value="${ad.images}"/>
			
		</c:url>
    

    <!-- Sidenav -->
    <div class="sidenav">
        <div class="profile">
            <img src="images/${ad.images }" alt="" width="100" height="100">

            <div class="name">
                ${ad.name }
            </div>
            <div class="job">
                ${ad.job }
            </div>
        </div>

        <div class="sidenav-url">
            <div class="url">
                <a href="adminprofile.jsp" class="active">Profile</a>
                <hr align="center">
            </div>
            <div class="url">
               <a href="${adminupdate}"> <input type="submit" value="Update"></a>
                <a href="reviewread.jsp"> <input type="submit" value="View reciews"></a>
                <hr align="center">
            </div>
            <div class="url">
                <form action="Admindeleteservlet" method="post"><input type="hidden" value="${ad.id}" name="aid"> <input type="submit" value="Delete"></form>
                <hr align="center">
            </div>
        </div>
    </div>
    <!-- End -->

    <!-- Main -->
    <div class="main">
        <h2> Admin profile</h2>
        <div class="card">
            <div class="card-body">
                
                <table>
				
                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td>:</td>
                            <td>${ad.name }</td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>:</td>
                            <td>${ad.email }</td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>:</td>
                            <td>${ad.address }</td>
                        </tr>
                        <tr>
                            <td>password</td>
                            <td>:</td>
                            <td>${ad.password }</td>
                        </tr>
                        <tr>
                            <td>Job</td>
                            <td>:</td>
                            <td>${ad.job }</td>
                        </tr>
                        <tr>
                            <td>Skill</td>
                            <td>:</td>
                            <td>${ad.skills }</td>
                        </tr>
                        
                         <tr>
                            <td>Image</td>
                            <td>:</td>
                            <td>${ad.images }</td>
                        </tr>
                        
                       
                    </tbody>
                </table>
            </div>
        </div>

       
    </div>









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
    <script src="js/adminscript.js"></script>
   </c:forEach>
</body>

</html>