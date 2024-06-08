<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" >
     <link rel="stylesheet" href="css/customer register.css">
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

    </nav>

    <div id="menu-btn" class="fas fa-bars"></div>

</section>
<div class= "bg">
    <form action ="CustomerInsertServlet" method="post" onsubmit = "Customervalidation()">
        <div class="container">
            <h1>Enter customer details</h1>
            <p>Please fill this form to creat an account</p>
            <hr>
            <label for="name"><b>Name</b></label>
            <input type="text" placeholder="Enter Name ex:bumal sathsara" name="name" required>

            <label for="age"><b>Age</b></label>
            <input type="text" placeholder="Enter you age ex:41" name="age" required>   

            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter email ex:bumalmathara@gmail.com" name="email" required>

            <label for="email"><b>Address</b></label>
            <input type="text" placeholder="Enter address ex:matharapara " name="address" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password ex:123#" name="psw" required>


            <label for="psw-repeat"><b>Re-enter the password</b></label>
            <input type="password" placeholder="repeat password" name="psw-repeat" required>
  
            <label><b>upload your photo:</b></lable><br><br>
            <input type="file" placeholder="drop image" name="images" required>
            
            <br>
            <br>

            <label for="gender"><b>Gender</b></label>
            
               
                <input type="radio" name="gender" value="Male"><lable for="male">Male</lable>
                <input type="radio"  name="gender"value="Female"><lable for="female">Female</lable>
               
                <br></br>

            

            <label>
                <input type="checkbox" checked name="remember" style="margin-bottom:15px">Remember me
            </label>

            <p>By creating an account you agreed to our terms and conditions<a href="#" style="color:dodgerblue">Terms & privacy</a>.</p>

            <div class="clearfix">
                <button type="button" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn" value="submit"> Sign Up </button>
            </div>
        </div>
    </form>
<!--enter code between here-->


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
    <script src="js/Customerlogin.js"></script>




</div>
</body>
</html>


    