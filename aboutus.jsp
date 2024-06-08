<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About us</title>
<link rel="stylesheet" href="css/style11.css">
<link rel="stylesheet" href="css/styles33.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="stylesheet" href="css/stylea.css">
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

	<section class="home">
		<div class="swiper home-slider">
			<div class="swiper-wrapper">
				<div class="swiper-slide slide">
					<video autoplay muted loop id="video-background">
						<source src="video/aboutus.mp4" type="video/mp4">

					</video>
					<div class="content">

						<h3>Your Gateway to Sri Lanka's Rich Heritage and Stunning
							Landscapes</h3>

					</div>

				</div>
	</section>



	<section class="home-about">
		<div class="image">
			<img src="images/img2.jpg">
		</div>
		<div class="content">
			<h3>about us</h3>
			<p>MyTravel, a fully integrated travel company based in Chennai,
				stands as a beacon of comprehensive solutions for both business and
				leisure travelers worldwide. With a commitment to excellence and a
				focus on client satisfaction, MyTravel has carved a niche for itself
				in the competitive travel industry. At MyTravel, the primary aim is
				to cater to the diverse needs of travelers with unparalleled
				transparency and cost-effectiveness. Whether it's arranging
				corporate travel itineraries or planning dream vacations, every
				aspect is meticulously handled to ensure a seamless experience for
				clients. With a team of seasoned professionals who are passionate
				about travel, MyTravel goes above and beyond to deliver personalized
				service tailored to each client's preferences. From booking flights
				and accommodations to organizing transportation and activities,
				every detail is thoughtfully considered to create unforgettable
				journeys. One of the hallmarks of MyTravel is its unwavering
				commitment to customer support. Understanding that travel can be
				unpredictable, the company offers round-the-clock assistance to
				address any concerns or emergencies that may arise during the
				journey. Clients can rest assured knowing that they have a dedicated
				team available to assist them at any point in their travels.

				Transparency is at the core of MyTravel's operations. Clients can
				expect clear and concise communication throughout the booking
				process, ensuring that they are fully informed about every aspect of
				their trip. From pricing breakdowns to itinerary details, MyTravel
				believes in fostering trust and confidence in its services. In
				addition to its commitment to transparency, MyTravel also
				prioritizes cost-effectiveness. By leveraging its extensive network
				of partners and suppliers, the company is able to negotiate
				competitive rates and pass on the savings to its clients. This
				dedication to affordability ensures that travelers can enjoy
				exceptional experiences without breaking the bank. Beyond offering
				traditional travel services, MyTravel also prides itself on staying
				ahead of the curve in terms of innovation and technology. With a
				user-friendly website and seamless booking platform, clients can
				easily plan and manage their trips online. The company also embraces
				emerging trends in the travel industry, constantly exploring new
				destinations and experiences to offer its clients. As a prestigious
				travel company, MyTravel is deeply rooted in its commitment to
				excellence. Whether it's exceeding expectations with personalized
				service or going the extra mile to ensure client satisfaction,
				MyTravel remains steadfast in its pursuit of perfection. With a
				strong emphasis on integrity, transparency, and reliability,
				MyTravel continues to set the standard for excellence in the travel
				industry.</p>

		</div>

	</section>

	<div class="testimonials">
		<div class="inner">
			<div class="header2">
				<p>TESTIMONIALS</p>
				<h1>What our clients say about us.</h1>
			</div>

			<div class="border"></div>

			<div class="row">
				<div class="col">
					<div class="testimonial">
						<img src="images/p1.png" alt="">
						<div class="name">Full name</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i>
						</div>

						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s,</p>
					</div>
				</div>

				<div class="col">
					<div class="testimonial">
						<img src="images/p2.png" alt="">
						<div class="name">Full name</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="far fa-star"></i> <i
								class="far fa-star"></i>
						</div>

						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s,</p>
					</div>
				</div>

				<div class="col">
					<div class="testimonial">
						<img src="images/p3.png" alt="">
						<div class="name">Full name</div>
						<div class="stars">
							<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="fas fa-star"></i> <i class="fas fa-star"></i> <i
								class="far fa-star"></i>
						</div>

						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s,</p>
					</div>
				</div>
			</div>
		</div>
		<div class="footer3">
			<h4>No two homes are alike!</h4>
			<p>Our Elite network, combined with your personal needs, allows
				us to create a home plan specifically tailored to you.</p>
			<!--  <button>GET A QUOTE</button> -->
		</div>
	</div>





	<div class="container">
		
			<section>
				<h1>Get in Touch</h1>
				<p>If you have any questions or inquiries, feel free to contact
					us using the form below:</p>
				<form action="Reviewinsertservlet" method="post" onsubmit="aboutvalidation()">
					<div style="font-family: Lucida Console, Courier New, monospace;">
						<label for="name">Name:</label> 
						<input type="text" id="name"name="name"> <label for="email">Email:</label> 
						<input type="email" id="email" name="email"> <label
							for="message">Message:</label>
						<textarea id="message" name="message" rows="4"></textarea>
						<Span>choose your image:</Span> <input type="file"
							placeholder="drop image" name="images"><br>
						<br> <input type="submit" name="submit">
					</div>
				</form>
				      
			</section>









			<section class="footer">
				<div class="box-container">
					<div class="box">
						<h3>Quick links</h3>
						<a href="home1.html"><i class="fas fa-angle-right"></i>Home</a> <a
							href="Packages.html"><i class="fas fa-angle-right"></i>Packages</a>
						<a href="guide.html"><i class="fas fa-angle-right"></i>Guides</a>
						<a href="about.html"><i class="fas fa-angle-right"></i>About</a> <a
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
						<a href=""><i class="fab fa-facebook-f"></i>facebook</a> <a
							href=""><i class="fab fa-twitter"></i>twitter</a> <a href=""><i
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
			<script src="js/adminscript.js"></script>
</body>

</html>

