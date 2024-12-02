<%@ include file="components/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="components/header.jsp"%>
<link rel="stylesheet" href="/css/home.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">

</head>

<body>
	<!-- Navbar -->
	<%@ include file="components/navbar.jsp"%>
	<!-- Main Content -->
	<main>
		<!-- Hero Banner -->
		<section id="hero">
			<div class="hero-container">

				<div id="heroCarousel" data-bs-interval="5000"
					class="carousel slide carousel-fade" data-bs-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<!-- Slide 1 -->
						<div class="carousel-item active"
							style="background-image: url(/images/car/car3.jpg);">

							<div class="carousel-container">

								<div class="carousel-content">

									<h2 class="animate__animated animate__fadeInDown"
										data-aos="fade-up">YOUR TRUSTED PARTNER</h2>
									<h3 class="animate__animated animate__fadeInDown"
										data-aos="fade-up">In vehicle Selling and Buying</h3>
									<p class="animate__animated animate__fadeInUp"
										data-aos="fade-up">Each ABC vehicle is a unique
										composition. Dynamics, elegance and performance form a perfect
										unit. Here you will find our "Cars for Sale" - vehicles that
										are immediately available for you. Find your suitable unique
										piece!</p>

									<form action="cars" data-aos="fade-up">
										<input type="text" class="textbox" name="keyword" required
											placeholder="Search by Make, Model, or Year">

									</form>
									<div>
										<a href="#about"
											
											data-aos="fade-up"><button style="margin-left: 680px;"> View More<i class="zmdi zmdi-long-arrow-right"></i></button></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>
		<div class="container mt-4 p-3" data-aos="fade-down">
			<div class="d-flex justify-content-between">
				<h2 class="fw-bolder">Pre Owned Cars</h2>
				<a class="fw-bold text-white text-decoration-none"
					href="<%=request.getContextPath()%>/cars">See all cars<i class="text-info zmdi zmdi-long-arrow-right"></i></a>
			</div>
			<div class="wrapper row">
				<c:forEach items="${listCar}" var="car">
					<div class="col-3 col-md-3 col-lg-3 mb-4">
						<div class="card">
							<img class="card-img-top"
								src="data:${car.carPicture.fileType};base64,${car.carPicture.image}"
								alt="${car.make}" />
							<div class="card-body">
								<p class="car-details fw-bold">${car.make} ${car.model}
									${car.year}</p>
								<p class="car-price">$${car.price}</p>
								<a
									href="<%= request.getContextPath() %>/cars/${car.make}/${car.model}/${car.year}/${car.idCar}">
									<button class="btn11-get-started scrollto">Car Details</button>
								</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- End Hero -->
	</main>



	<!-- Footer -->
	<%@ include file="components/footer.jsp"%>
	<script src="/vendor/aos/aos.js"></script>


	<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="/vendor/waypoints/noframework.waypoints.js"></script>
	<script src="/vendor/php-email-form/validate.js"></script>
</body>
</html>
