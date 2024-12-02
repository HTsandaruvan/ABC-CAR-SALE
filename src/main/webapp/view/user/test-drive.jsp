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
		<div class="wrapper">
			<div class="inner">

			

				<!-- FORM -->


				<div class="image-holder">
					<img class="img-thumbnail"
						src="data:${car.carPicture.fileType};base64,${car.carPicture.image}"
						alt="${car.make}" />
				</div>
				<form:form action="testDriveProcess" method="POST"
					modelAttribute="testDrive">
					<h3 class="holder">Schedule Test Drive</h3>


					<p class="fw-bold fs-5 " style="margin-left: 170px;">${car.make} ${car.model} 
						${car.year}</p>

					<div class="form-row">

						<form:input type="date" path="date" id="inputDate"
							cssErrorClass="error-border" class="form1-control"
							placeholder="Date" />
					</div>

					<form:hidden path="user" value="${user.idUser}" />
					<form:hidden path="car" value="${car.idCar}" />

					<button type="submit" style="margin-left: 170px;">
						Test Drive <i class="zmdi zmdi-car"></i>
					</button>


				</form:form>
			</div>
		</div>
	</main>

	<!-- Footer -->
	<%@ include file="../components/footer.jsp"%>
	<script src="/js/test-drive.js"></script>
</body>
</html>
