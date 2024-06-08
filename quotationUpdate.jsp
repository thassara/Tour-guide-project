<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>packages</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link rel="stylesheet" href="css/profile.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>



<body>


	<section class="header">
		<a href="home1.html" class="logo"> Mytravel.</a>
		<div class="search-box">
			<button class="btn-search" onclick="search()">
				<i class="fas fa-search"></i>
			</button>
			<input id="searchText" type="text" class="input-search"
				placeholder="Type to Search...">
		</div>

		<nav class="navbar">
			<a href="home1.html">Home</a> <a href="Packages.html">Packages</a> <a
				href="guide.html">Guides</a> <a href="about.html">About</a> <a
				href="review.html">Review</a>
			<button class="button">
				<a href="#"></a>Log in
			</button>
		</nav>

		<div id="menu-btn" class="fas fa-bars"></div>

	</section>

	<%
	String qid = request.getParameter("qid");
	String Cname = request.getParameter("Cname");
	String Dnum = request.getParameter("Dnum");
	String Gnum = request.getParameter("Gnum");
	String Atime = request.getParameter("Atime");
	String Email = request.getParameter("Email");
	%>



	<section
		style="display: flex; justify-content: center; align-items: center; min-height: 100vh; background: url(images/img41.jpg) no-repeat; background-size: cover; background-position: center;">



		<section>
			<div class="booking-form">
				<div class="formb-header">
					<h1>Update Tour Quotation</h1>
				</div>
				<form action="QuotationUpdateServelet" method="post">
					<div class="elem-group">
						<label for="name">Name</label> <input type="text" name="cname"
							id="name" class="binput" value="<%=Cname%>">
					</div>
					<div class="elem-group">
						<label for="dnum">Number of Days</label> <input type="text"
							name="dnum" id="dnum" class="binput" value="<%=Dnum%>">
					</div>
					<div class="elem-group">
						<label for="gnum">Number of Guests</label> <input type="text"
							name="gnum" id="gnum" class="binput" value="<%=Gnum%>">
					</div>
					<div class="elem-group ">
						<label for="Atime">Arrival time:</label> <input type="text"
							id="Atime" name="atime" class="binput" value="<%=Atime%>">
					</div>
					<div class="elem-group">
						<label for="email">E-mail</label> <input type="hidden"
							name="qid" id="email" class="binput" value="<%=qid%>">
						<input type="text" name="email" id="email" class="binput"
							value="<%=Email%>" readonly>
					</div>

					<hr>


					<input class="btn1" type="submit" name="submit" value="Update">



				</form>

			</div>

		</section>


	</section>

	<section class="footer">
		<div class="box-container">
			<div class="box">
				<h3>Quick links</h3>
				<a href="home1.html"><i class="fas fa-angle-right"></i>Home</a> <a
					href="Packages.html"><i class="fas fa-angle-right"></i>Packages</a>
				<a href="guide.html"><i class="fas fa-angle-right"></i>Guides</a> <a
					href="about.html"><i class="fas fa-angle-right"></i>About</a> <a
					href="review.html"><i class="fas fa-angle-right"></i>Review</a>
			</div>

			<div class="box">
				<h3>extra links</h3>
				<a href="#"><i class="fas fa-angle-right"></i>ask</a> <a href="#"><i
					class="fas fa-angle-right"></i>about us</a> <a href="#"><i
					class="fas fa-angle-right"></i>privacy policy</a> <a href="#"><i
					class="fas fa-angle-right"></i>terms of travels</a>

			</div>
			<div class="box">
				<h3>contact information</h3>
				<a href="#"><i class="fas fa-phone"></i>0718995482</a> <a href="#"><i
					class="fas fa-phone"></i>0778351008</a> <a href="#"><i
					class="fas fa-envelope"></i>teamPisso@gmail.com</a> <a href="#"><i
					class="fas fa-map"></i>Sri lanka, Malabe</a>

			</div>
			<div class="box">
				<h3>follow us</h3>
				<a href=""><i class="fab fa-facebook-f"></i>facebook</a> <a href=""><i
					class="fab fa-twitter"></i>twitter</a> <a href=""><i
					class="fab fa-instagram"></i>instagram</a> <a href=""><i
					class="fab fa-linkedin"></i>linkedin</a>

			</div>
		</div>
		<div class="credit">
			created by <span>Team Pisso </span> | all rigth reserved!
		</div>
	</section>


	<script
		src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
  <script src="js/guideScript.js"></script>


</body>

</html>

