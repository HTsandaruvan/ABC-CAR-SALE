<%@ include file="components/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="components/header.jsp"%>
<link rel="stylesheet" href="/css/contact-us.css" />
 <link rel="stylesheet" href="/css/about-us.css" />
</head>
<body>
	<!-- Navbar -->
	<%@ include file="components/navbar.jsp"%>

	<!-- Main -->
	<main>
		<!-- Hero banner -->
		<div class="container-fluid jumbotron">
			<div class="container ">
				<h2 class=" fw-bolder">Contact Us</h2>
			</div>
		</div>

		<!-- Contact -->
		<section class="ftco-section">
			<div class="container">
				
				<div class="row justify-content-center">
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row mb-5">
								<div class="col-md-3">
									<div class="dbox w-100 text-center">
										<div
											class="icon d-flex align-items-center justify-content-center">
											<span class="fa fa-map-marker"></span>
										</div>
										<div class="text">
											<p>
												<span>Address:</span> 198 West 21th Street, Suite 721 New
												York NY 10016
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="dbox w-100 text-center">
										<div
											class="icon d-flex align-items-center justify-content-center">
											<span class="fa fa-phone"></span>
										</div>
										<div class="text">
											<p>
												<span>Phone:</span> <a href="tel://1234567920" class="text-white" >+ 1235
													2355 98</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="dbox w-100 text-center">
										<div
											class="icon d-flex align-items-center justify-content-center">
											<span class="fa fa-paper-plane"></span>
										</div>
										<div class="text">
											<p>
												<span>Email:</span> <a href="mailto:info@yoursite.com" class="text-white">info@yabccar.com</a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-3">
									<div class="dbox w-100 text-center">
										<div
											class="icon d-flex align-items-center justify-content-center">
											<span class="fa fa-globe"></span>
										</div>
										<div class="text">
											<p>
												<span>Website</span> <a href="#" class="text-white">www.abccar.com</a>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="row no-gutters">
								<div class="col-md-7">
									<div class="contact-wrap w-100 p-md-5 p-4">
										<h3 class="mb-4">Let's get started!</h3>
										<div id="form-message-warning" class="mb-4"></div>
										<div id="form-message-success" class="mb-4">Your message
											was sent, thank you!</div>
										<form method="POST" id="contactForm" name="contactForm"
											class="contactForm">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="name">Full Name</label> <input
															type="text" class="form-control" name="name" id="name"
															placeholder="Name">
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<label class="label" for="email">Email Address</label> <input
															type="email" class="form-control" name="email" id="email"
															placeholder="Email">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label class="label" for="subject">Subject</label> <input
															type="text" class="form-control" name="subject"
															id="subject" placeholder="Subject">
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label class="label" for="#">Message</label>
														<textarea name="message" class="form-control" id="message"
															cols="30" rows="4" placeholder="Message"></textarea>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="submit" value="Send Message"
															class="btn btn-primary">
														<div class="submitting"></div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="col-md-5 d-flex align-items-stretch">
									<div class="info-wrap w-100 p-5 img"
										style="background-image: url(/images/background/contact-us.png);"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>

	<!-- Footer -->
	<%@ include file="components/footer.jsp"%>
</body>
</html>
