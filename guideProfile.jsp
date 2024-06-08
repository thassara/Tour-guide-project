<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>packages</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="css/profile.css">

     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" > 
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>


<body>

<c:forEach var="gui" items="${gui}">


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

<div class="heading" style="background:url(images/pic5.jpg) no-repeat">

    <div class="slides">
          
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <!--  <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            
          </ol>
           -->
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="images/${gui.image}" style="width:100%;">
            </div>

             

          </div>
      
          <!-- Left and right controls -->
          <!--  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
          </a>-->
        </div>
      </div>
      <h4 style="color:white; text-align: center;">"EARTH IS WHAT WE ALL HAVE IN COMMON! LET’S EXPLORE IT WITH LOVE"</h4>
</div>


<h1 class="heading-title">Explore ${gui.city}, Sri Lanka, with ${gui.gname}</h1>
<hr width="65%">


<h5 class="show"><b>I will show you</b> <span class="gap1"></span>The Best Of Everything This Paradise Has To Offer With Love.Make It Worthwhile!!</h5>                                                    
<hr width="65%">
                

<h5 class="about"><b>About me</b><span class="gap2"></span>Share life experiences , Explore the world & make new friends, have a </h5>
                                 <h5><span class="gap3"></span>good laugh and wanna make memories that will last forever!!</h5>
                                 <h5><span class="gap4"></span>knowing we are all human got our own stories , own journeys , own</h5>
                                 <h5><span class="gap5"></span>battles but we survived!! Despite everything, each and every one of</h5> 
                                 <h5><span class="gap6"></span>us is worthy of acceptance, love and belonging!!</h5>
                                 <h5><span class="gap7"></span>Let’s learn and grow from each other!!</h5>

<hr width="65%">


<h5 class="langu"><b>Languages</b><span class="gap8"></span>${gui.languages}</pre> </h5>
<hr width="65%">

<h5 class="langu"><b>Gender</b><span class="gap18"></span>${gui.gender}</pre> </h5>
<hr width="65%">


<h5 class="activ"><b>Activities</b><span class="gap9"></span>${gui.activities}</h5>
<hr width="65%">

<h5 class="langu"><b>E-mail Address</b><span class="gap19">${gui.email}</span></pre> </h5>
<hr width="65%">

<h5 class="langu"><b>Mobile Number</b><span class="gap20"></span>${gui.mobile}</pre> </h5>
<hr width="65%">

<h5 class="langu"><b>Price</b><span class="gap21"></span>${gui.price}</pre> </h5>
<hr width="65%">
                                                                                                  
                                                     
 <!-- Book this guide section starts here-->
 
 <div class="booknew">
    <div class="thenew">
        <h5><b>Book Guide</b></h5>
    </div>

    <div class="table" id="table">
        <div class="row">

            <div class="service_row halfx">
                <br>
                <p>Half Day Tour 
                    <span class="type_rate">
                                                </span>
                </p>
                
            </div>
            <div class="service_row fullx">
                <p>Full Day Tour 
                    <span class="type_rate">
                                                </span>
                </p>
            </div>
            <div class="service_row custx">
                <p>Multi Day Tour 
                    <span class="type_rate">
                        
                    </span>
                </p>
            </div>

   </div>

</div>



    <div class="book_guide">
    <button class="btn_cstm" type="button" name="" onclick="openform()">
    	<a>Request Quote</a>
    </button>
    </div>


</div>




<section>
<!--start calender-->
<div class="wrapper">
    <h5 class="mtcal"><b>My Tour Calender</b></h5>
    <header>
      <p class="current-date"></p>
      <div class="icons">
        <span id="prev" class="material-symbols-rounded">chevron_left</span>
        <span id="next" class="material-symbols-rounded">chevron_right</span>
      </div>
    </header>
    <div class="calendar">
      <ul class="weeks">
        <li>Sun</li>
        <li>Mon</li>
        <li>Tue</li>
        <li>Wed</li>
        <li>Thu</li>
        <li>Fri</li>
        <li>Sat</li>
      </ul>
      <ul class="days"></ul>
    </div>
  </div>                                                                                                
</section>


<c:url value="guideUpdate.jsp" var="Guiupdate">

		    <c:param name="gid" value="${gui.gid}" />
			<c:param name="gname" value="${gui.gname}" />
			<c:param name="mobile" value="${gui.mobile}" />
			<c:param name="email" value="${gui.email}" />
			<c:param name="gender" value="${gui.gender}" />
			<c:param name="price" value="${gui.price}" />			
			<c:param name="city" value="${gui.city}" />
			<c:param name="languages" value="${gui.languages}" />
			<c:param name="activities" value="${gui.activities}" />
			<c:param name="image" value="${gui.image}" />
			<c:param name="Password" value="${gui.password}" />
			
		</c:url>

   


<div >

   <a href="${Guiupdate}" class="btn" style="margin-left: 300px; padding: 1rem 3rem">Update</a>
   <form action="GuideDeleteServlet" method="post" onclick="return myFunction()">
   <input type="hidden" value="${gui.gid}" name="id" >
   <input type="submit" class="btn" value ="Delete" style="margin-left: 300px; padding: 1rem 3rem">
   </form>
   
    <script>
    function myFunction() {
        let text = "Do you want Delete.";
        if (confirm(text) == true) {
            return true; 
        } else {
            return false; 
        }
    }
</script>

</div>






<div class="sectionb hideform" id="booking">
  <div class="sectionb-center">
      <div class="booking-form">
          <div class="formb-header">
              <h1>Plan Your Trip</h1>
          </div>
          <form action="GquotationInsertServelet" method="post">
              <div class="elem-group">
                  <label for="name">Name</label>
                  <input type="text" name="cname" id="name" placeholder="Guest name" class="binput">
              </div>
              <div class="elem-group">
                  <label for="dnum">Number of Days</label>
                  <input type="number" name="dnum" id="dnum" placeholder="Days" class="binput">
              </div>
              <div class="elem-group">
                  <label for="gnum">Number of Guests</label>
                  <input type="number" name="gnum" id="gnum" placeholder="Total Guests Count" class="binput">
              </div>
              <div class="elem-group ">
                <label for="Atime">Arrival time:</label>
                <input type="time" id="atime" name="atime" class="binput">
            </div>
              <div class="elem-group">
                  <label for="email">E-mail</label>
                  <input type="mail" name="email" id="email" placeholder="Guest E-mail" class="binput">
              </div>
              
              <button class="btn">Show Amount</button>
              
          </form>
  
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
     <script src="js/guideScript.js"></script>
    
    </c:forEach>
</body>

</html>
