<%@ include file="../components/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../components/header.jsp"%>
<link rel="stylesheet" href="/css/form.css" />
</head>
<body>
	<!-- Navbar -->
	<%@ include file="../components/navbar.jsp"%>

	<!-- Main -->
	<main>
		<div class="wrapper" style="margin-top: 20px;">
			<div class="inner">
				<div class="image-holder">
					<img src="/images/background/edit-profile.jpg" style="height: 500px;" alt="">
				</div>
				<form:form action="editProfileProcess" method="POST"
					modelAttribute="profile">
					<form:hidden path="idProfile" />
					<h3 class="holder">Edit Profile</h3>


					<div class="form-row">
						<form:input id="username" path="firstName" type="text"
							class="form1-control" placeholder="First Name"
							cssErrorClass="form-control error-border" />

					</div>
					<small><form:errors style="margin-left: 80px;"
							path="firstName" cssClass="error" /></small>

					<div class="form-row">
						<form:input id="username" path="lastName" type="text"
							class="form1-control" placeholder="Last Name"
							cssErrorClass="form-control error-border" />

					</div>
					<small><form:errors style="margin-left: 80px;"
							path="lastName" cssClass="error" /></small>

					<div class="form-row">
						<form:input id="username" path="phoneNumber" type="text"
							class="form1-control" placeholder="Phone Number"
							cssErrorClass="form-control error-border" />

					</div>
					<small><form:errors style="margin-left: 80px;"
							path="phoneNumber" cssClass="error" /></small>

					<div class="form-row">
						<form:input id="username" path="address" type="text"
							class="form1-control" placeholder="Address"
							cssErrorClass="form-control error-border" />

					</div>
					<small><form:errors style="margin-left: 80px;"
							path="address" cssClass="error" /></small>

					<div class="form-row">
						<form:input id="username" path="about" type="text"
							class="form1-control" placeholder="About"
							cssErrorClass="form-control error-border" />

					</div>


					<button type="submit" style="margin-left: 170px;">
						Save <i class="zmdi zmdi-long-arrow-right"></i>
					</button>


				</form:form>

			</div>
		</div>
	</main>
	<!-- Footer -->
	<%@ include file="../components/footer.jsp"%>
</body>
</html>
