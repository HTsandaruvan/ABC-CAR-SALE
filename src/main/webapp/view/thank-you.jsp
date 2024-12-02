<%@ include file="components/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="components/header.jsp"%>
<link rel="stylesheet" href="/css/thank-you.css" />
<link rel="stylesheet" href="/css/form.css" />
</head>
<body>
	<!-- Navbar -->
	<%@ include file="components/navbar.jsp"%>

	<!-- Main -->
	<main>
		<div class="wrapper">
			<div class="inner">
				<div class="image-holder">
					<img src="/images/user/thank-yoi.jpg" alt="">
				</div>
				<form:form>
					<h3 class="holder" style="font-size: 50px;">Thanks for registering</h3>

					<p class="text-black" style="margin-left: 160px;">Your account has been created enjoy your
						next activities ... !</p>
					<div class="row">
						<div class="col-md-3">
							<a href="<%=request.getContextPath()%>/"
								class="text-decoration-none">
								<button type="button" style="margin-left: 170px;">
									HOME <i class="zmdi zmdi-home"></i>
								</button>

							</a>
						</div>
						<div class="col-md-3">
							<a href="<%=request.getContextPath()%>/login"
								class="text-decoration-none">
								<button type="button" style="margin-left: 170px; background-color: gray ">
									Login <i class="zmdi zmdi-login"></i>
								</button>

							</a>

						</div>
						<div class="col-md-6"></div>
					</div>

				</form:form>

			</div>
		</div>
	</main>

	<!-- Footer -->
	<%@ include file="components/footer.jsp"%>
</body>
</html>
