<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>packages</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" >
     <link rel="stylesheet" href="css/style.css">
	 <link rel="stylesheet" href="css/registration.css">
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

<br>
<br>
<br>
<br>
	
<div class = "registration_form">

	<div class="r_form"><h1>Add Tour Guide Details</h1></div><br><br>
	 
	 <form  method="post" action="GuideInsertServelet" onsubmit="return validateForm()">

	
	<label for = "city">Explore City</label><br>
	<input class = "inputfield" type="text" placeholder="Which city would you like to explore? Ex:Colombo" name="city"  ><br><br>
	 
	<label for = "name">Name</label><br>
	<input class = "inputfield" type="text" placeholder="Name" name="name"  ><br><br>

	<label for = "price">Price</label><br>
	<input class = "inputfield" type="text"  placeholder="Hourly Price $:" name="cost"  ><br><br>

	<label for = "languages">Languages</label><br>
	<input class = "inputfield" type="text" placeholder="Languages Ex:English,Russian" name="lng"  ><br><br>

	<label for = "Gender">Gender</label><br><br>
	 <input type="radio" class="male" name="gender" value="Male"><label for="male">Male</label>
	 <input type="radio" class="female" name="gender" value="Female"><label for="female">Female</label><br><br>

	 <label for = "activities">Activities</label><br><br>
	 <textarea class="act2" name="act" rows="4" cols="50" placeholder="activities you can do Ex: Translation & Interpretation,Shopping,Food & Restaurants,History & Culture" ></textarea><br><br>

	 <label for = "emailaddress">E-mail Address</label><br>
	 <input class = "inputfield" type="mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Please Enter Valid E-mail Address" placeholder="E-mailAddress" name="emailaddress"  ><br><br>

	 <label for = "mobilenumber">Mobile Number</label><br>
	 <input class = "inputfield" type="text"  title="Please Enter Valid Mobile Number" placeholder="MobileNumber" name="mobilenumber"  ><br><br>
	 
	 <label for="pwd">Password</label><br>
	 <input class = "inputfield" type="password" id="pwd"  title="Must contain at least one number and one uppercase" placeholder="Password" name="passwords"  ><br><br>
	 
	 <label for="rpwd">Re Enter Password</label><br>
	 <input class = "inputfield" type="password" id="rpwd" placeholder="Password" name="repasswords"><br><br>
	 
	 <label for = "image">Add a image</label><br>
	 <input  type="file" name="img"  ><br><br>
	 
	 <input type="checkbox" id="checb" onclick="enableButton()" value="checkbox">
	 <label for="checb">Accept Privacy Policy & Terms</label><br><br>
	 
	 <input type = "submit"  class="submitbtn">
	 
	 </form>
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




</body>
</html>
