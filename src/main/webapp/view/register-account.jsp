<%@ include file="components/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>


<%@ include file="components/header.jsp"%>
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
					<img src="/images/car/hero01.jpg" alt="">
				</div>
				<form:form action="accountProcess" method="POST" modelAttribute="account">
					<h3 class="holder">Register</h3>
					
					<small><div class="mt-3 text-left"
							style="margin-left: 80px;">
							Have an account? <a href="<%=request.getContextPath()%>/register"
								class="text-decoration-none"> Login</a>
						</div></small>
					<div class="form-row">
						<form:input id="username" path="username" type="text"
							class="form1-control" placeholder="Email"  cssErrorClass="form-control error-border"/>

					</div>
					<small><form:errors style="margin-left: 80px;" path="username" cssClass="error" /></small>

					<div class="form-row">

						<form:input id="password" path="password" type="Password"
							class="form1-control" placeholder="Password"  cssErrorClass="form-control error-border" />
							
					</div>
					<small><form:errors style="margin-left: 80px;" path="password" cssClass="error" /></small>

					<button type="submit" style="margin-left: 170px;">
						Register <i class="zmdi zmdi-long-arrow-right"></i>
					</button>
					

				</form:form>

			</div>
		</div>
	</main>

	<!-- Footer -->
	<%@ include file="components/footer.jsp"%>
</body>
</html>
