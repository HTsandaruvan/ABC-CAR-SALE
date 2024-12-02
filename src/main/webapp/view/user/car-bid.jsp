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
				<div class="image-holder">
					<img src="/images/car/car-bid.jpg" alt="">
				</div>
				<form:form action="postCarBidding" method="POST"
					modelAttribute="carBidding">
					<h3 class="holder">Place Bid</h3>
					
					<div class="form-row">
						<c:if test="${highestBidding == 0}">
							<p class="text-secondary fs-5 m-0">STARTING PRICE:</p>
							<p class="fs-5 m-0">$${car.price}</p>
						</c:if>
					</div>
					<div class="form-row">
					<c:if test="${highestBidding != 0}">
						<p class="text-secondary fs-5 m-0 text-uppercase">Highest Bid:</p>
						<p class="fs-5 m-0">$${highestBidding}</p>
					</c:if>
					</div>
					<p class="error">${message}</p>
					<form:hidden path="user" value="${user.idUser}" />

					<form:hidden path="car" value="${car.idCar}" />

					<input type="hidden" name="highestBidding"
						value="${highestBidding}" />


					<div class="form-row">

						<form:input type="number" path="bidPrice"
							cssErrorClass="error-border" class="form1-control"
							placeholder="Bid Price" />
					</div>
					<small><form:errors path="bidPrice" cssClass="error" /></small>


					<button type="submit" style="margin-left: 170px;">
						Place Bid <i class="zmdi zmdi-long-arrow-down"></i>
					</button>


				</form:form>

			</div>
		</div>
	</main>

	<!-- Footer -->
	<%@ include file="../components/footer.jsp"%>
</body>
</html>
