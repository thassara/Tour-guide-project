<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Customer profile</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">


<link rel="stylesheet" href="css/customerprofile.css">
</head>

<body>

	<section class="header">
		<a href="home1.html" class="logo"> Mytravel.</a>
		<div class="search-box">
			<button class="btn-search">
				<i class="fas fa-search"></i>
			</button>
			<input type="text" class="input-search"
				placeholder="Type to Search...">
		</div>

		<nav class="navbar">
			<a href="home1.html">Home</a> <a href="Packages.html">Packages</a> <a
				href="guide.html">Guides</a> <a href="about.html">About</a> <a
				href="review.html">Review</a>
			<button class="button">
				<a href="Customerlogin.jsp"></a>Log in
			</button>
		</nav>

		<div id="menu-btn" class="fas fa-bars"></div>

	</section>



	<!-- foreach very usefull for get value from data base  (values assign for items  -->
	<c:forEach var="cus" items="${cus}">

		    <<c:set var="cid" value="${cus.cid}" />
			<<c:set var="name" value="${cus.name}" />
			<<c:set var="age" value="${cus.age}" />
			<<c:set var="email" value="${cus.email}" />
			<<c:set var="address" value="${cus.address}" />
			<<c:set var="gender" value="${cus.gender}" />
			<<c:set var="image" value="${cus.images}" />








		<!-- Sidenav -->
		<div class="sidenav">
			<div class="profile">
				<img src="pictures/${cus.images}" alt="" width="100" height="100">

			</div>

			<div class="sidenav-url">
				<div class="url">
					<a href="customer profile.jsp" class="active">Profile</a>
					<hr align="center">
				</div>
				<div class="url">

					<a href="${cusupdate}"> <input type="submit" value="Update"></a>
					<hr align="center">
				</div>
				<div class="url">
					<a href="#" onclick="myFunction2()">Delete</a>
					<hr align="center">
				</div>
				<div class="url">
					<form action="BookingReadservlet" method="post"><input type="submit" value="My Bookings"></form>
					<hr align="center">
				</div>
			</div>
		</div>
		<!-- End -->

		<!-- Main -->
		<div class="main">
			<h2>Customer Details</h2>
			<form action="" method="post">

				<div class="card">
					<div class="card-body">

						<table>

							<tbody>
								<tr>
									<td>Name</td>
									<td>:</td>
									<td>${cus.name}</td>

								</tr>
								<tr>
									<td>age</td>
									<td>:</td>
									<td>${cus.age}</td>
								</tr>
								<tr>
									<td>email</td>
									<td>:</td>
									<td>${cus.email}</td>
								</tr>
								<tr>
									<td>address</td>
									<td>:</td>
									<td>${cus.address}</td>
								</tr>
								<tr>
									<td>Gender</td>
									<td>:</td>
									<td>${cus.gender}</td>
								</tr>


							</tbody>




						</table>

						<!--   values get from customerupdateserverlet ex:name="Cid"  and CUS.Cid get from customer.java -->

						<c:url value="UpdateCustomer.jsp" var="cusupdate">
							<c:param name="cid" value="${cid}" />
							<c:param name="name" value="${name}" />
							<c:param name="age" value="${age}" />
							<c:param name="email" value="${email}" />
							<c:param name="address" value="${address}" />
							<c:param name="gender" value="${gender}" />
							<c:param name="image" value="${image}" />
						</c:url>






					</div>
				</div>
			</form>
		</div>

	</c:forEach>


	




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
	<script src="js/customer profile.js"></script>

</body>

</html>