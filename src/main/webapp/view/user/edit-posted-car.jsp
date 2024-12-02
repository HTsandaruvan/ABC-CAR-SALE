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
		<br>
		<br>
		<br>
		<div class="wrapper">
			<div class="inner">
				<div class="image-holder">
					<img src="/images/background/edit-car.jpg" alt="" style="height:600px;width: 400px;">
				</div>
				<form:form action="editCarProcess" method="POST"
					modelAttribute="car">
					<form:hidden path="idCar" />
					<h3 class="holder">Edit Posted Car</h3>

					<div class="form-row">
						<form:input path="make" type="text" class="form1-control"
							placeholder="Make" cssErrorClass="form-control error-border" />

					</div>
					<small><form:errors style="margin-left: 80px;" path="make"
							cssClass="error" /></small>

					<div class="form-row">
						<form:input path="model" type="text" class="form1-control"
							placeholder="Model" cssErrorClass="form-control error-border" />

					</div>
					<small><form:errors style="margin-left: 80px;" path="model"
							cssClass="error" /></small>

					<div class="form-row">
						<form:input path="year" type="text" class="form1-control"
							placeholder="Year" cssErrorClass="form-control error-border" />

					</div>
					<small><form:errors style="margin-left: 80px;" path="year"
							cssClass="error" /></small>
					<label class="form-label " style="margin-left: 80px;">Price
						($)</label>

					<div class="form-row">
						<form:input path="price" type="number" class="form1-control"
							placeholder="Price ($)" cssErrorClass="form-control error-border" />

					</div>
					<small><form:errors style="margin-left: 80px;" path="price"
							cssClass="error" /></small>
					<label class="form-label " style="margin-left: 80px;">Car
						Picture</label>
					<div class="form-row">
						<input type="file" class="form1-control" name="imageFile"
							placeholder="Car Picture" />

					</div>
					<small><div>
							<span class="error">${fileError}</span>
						</div></small>






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
