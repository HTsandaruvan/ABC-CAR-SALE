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
		<div class="inner" style="width:100px; margin-top:80px;">
			
			<form action="uploadCarPicture" method="POST" enctype="multipart/form-data">
				<h3 class="holder">Upload Picture</h3>

				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				
					<div class="form-row">
						<input type="file" class="form1-control" name="imageFile"
							placeholder="Car Picture" />

					</div>
					<p class="text-secondary"  style="margin-left: 80px;">Image support : .jpg .jpeg .png</p>
					<small><div>
							<span class="error">${fileError}</span>
						</div></small>

				<button type="submit" style="margin-left: 170px;">
					Save <i class="zmdi zmdi-long-arrow-down"></i>
				</button>


			</form>

		</div>
		
	</main>

	<!-- Footer -->
	<%@ include file="../components/footer.jsp"%>
</body>
</html>
