<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer profile settings</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
     <link rel="stylesheet" href="css/customerprofile.css">
	  
</head>

<body>
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
        <button class="button"><a href="Customerlogin.jsp"></a>Log in</button>
    </nav>

    <div id="menu-btn" class="fas fa-bars"></div>

</section>

  


<%
String cid = request.getParameter("cid");
String name = request.getParameter("name");
String age = request.getParameter("age");
String email = request.getParameter("email");
String address = request.getParameter("address");
String gender = request.getParameter("gender");
String image = request.getParameter("image");
%>
   


    <!-- Sidenav -->
    <div class="sidenav" style="top:-40px; ">
        <div class="profile">
           <img src="pictures/<%= image %>" alt="" width="100" height="100">


        </div>

        <div class="sidenav-url">
            <div class="url">
                <a href="customer profile.jsp" class="active">Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="updatecustomer.jsp">Settings</a>
                <hr align="center">
            </div>
        </div>
    </div>
    <!-- End -->

    <!-- Main -->
    <div class="main">
        <h2>UPDATE CUSTOMER DETAILS  </h2>
        
        
         <form  action="CustomerUpdateservlet" method="post" >
        <div class="card">
            <div class="card-body">
                
                <table>

                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td>:</td>
                            <td><input type="text" placeholder="" name="name" value="<%= name %>"></td>
                            <input type="hidden" name="Cid" value="<%= cid %>">
                        </tr>
                        <tr>
                            <td>AGE</td>
                            <td>:</td>
                            <td><input type="text" placeholder="" name="age" value="<%= age %>"> </td>
                        </tr>
                        <tr>
                            <td>EMAIL</td>
                            <td>:</td>
                            <td><input type="text" placeholder="" name="email" value="<%= email %>"></td>
                        </tr>
                        <tr>
                            <td>ADDRESS</td>
                            <td>:</td>
                            <td><input type="text" placeholder="" name="address" value="<%= address %>"></td>
                        </tr>
                        <tr>
                            <td>GENDER</td>
                            <td>:</td>
                            <td><input type="text" placeholder="" name="gender" value="<%= gender %>"></td>
                        </tr>

                        <tr>
                            <td>image</td>
                            <td>:</td>
                            <td><input type="file" placeholder="" name="image" value="<%= image %>"></td>
                        </tr>
                      
                    </tbody>
                   
                </table>
             
            </div>
        </div>
        <input type="submit" class="btn"  name="update" value="register">
  
         </form>

       
    </div>

    <br><br>

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
    <script src="js/customer profile"></script>
</body>

</html>