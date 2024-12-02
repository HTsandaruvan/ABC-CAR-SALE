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
				<img src="/images/car/car5.jpg" alt="">
			</div>
			<form:form action="loginUser" method="POST" modelAttribute="user">
				<h3 class="holder">Login</h3>
				<c:if test="${param.error != null}">
					<div class="login-error">
						<p>Invalid Username or Password</p>
					</div>
				</c:if>
				<c:if test="${param.logout != null}">
					<div class="login-logout">
						<p>You have been successfully logged out</p>
					</div>
				</c:if>
				<small><div class="mt-3 text-left" style="margin-left: 80px;">Need an account?
					<a href="<%=request.getContextPath()%>/register"
						class="text-decoration-none"> Register</a>
				</div></small>
				<div class="form-row">
					<form:input id="username" path="username" type="text"
						class="form1-control" placeholder="Email" />

				</div>

				<div class="form-row">

					<form:input id="password" path="password" type="Password"
						class="form1-control" placeholder="Password" />
				</div>


				<button type="submit" style="margin-left: 170px;">
					Login <i class="zmdi zmdi-long-arrow-right"></i>
				</button>

				
			</form:form>

		</div>
	</div>
</main>

	<!-- Footer -->
	<%@ include file="components/footer.jsp"%>
</body>
</html>
