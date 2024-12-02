
<link rel="stylesheet" href="/css/navbar.css" />

<!-- Vendor CSS Files -->
<link href="/vendor/aos/aos.css" rel="stylesheet">
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
<link href="/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<!-- ======= Header ======= -->
<header id="header" class="fixed-top ">
	<div class="container d-flex align-items-center">

		<h1 class="logo me-auto">
			ABC Car</a>
		</h1>
		<!-- Uncomment below if you prefer to use an image logo -->
		<!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

		<nav id="navbar" class="navbar">
		<i class="bi bi-list mobile-nav-toggle"></i>
			<ul>
				<li><a class="nav-link scrollto "
					href="<%=request.getContextPath()%>/">Home</a></li>
				<li><a class="nav-link scrollto"
					href="<%=request.getContextPath()%>/cars">Cars</a></li>
				<li><a class="nav-link scrollto"
					href="<%=request.getContextPath()%>/user/post-car">Sell a Car</a></li>

				<!-- Login & Logout -->
				<security:authorize access="!isAuthenticated()">
					<li><a class="getstarted1 scrollto"
						href="<%=request.getContextPath()%>/login">Login</a></li>
					<li><a class="getstarted scrollto active"
						href="<%=request.getContextPath()%>/register">Register</a></li>
				</security:authorize>

				<!-- User Menu -->
				<security:authorize access="isAuthenticated()">
					<li class="dropdown"><a href="#">
							<div class="nav-account me-2" >
								<!-- Profile Picture -->
								<c:if test="${profileLog.profilePicture == null}">
									<img src="/images/user/user-default.png" alt="Profile Picture"/>
								</c:if>
								<c:if test="${profileLog.profilePicture != null}">
									<img
										src="data:${profileLog.profilePicture.fileType};base64,${profileLog.profilePicture.image}"
										alt="Profile Picture" />
								</c:if>
							</div> ${profileLog.firstName} <i class="bi bi-chevron-down"></i>

					</a>
						<ul>
							<li><a href="<%=request.getContextPath()%>/user">Profile</a></li>

							<li><a
								href="<%=request.getContextPath()%>/user/my-posted-car">My
									Posted Car</a></li>
							<li><a href="<%=request.getContextPath()%>/user/test-drive">Appoinment</a></li>

							<security:authorize access="hasRole('ADMIN')">
								<li><a href="<%=request.getContextPath()%>/admin/dashboard"> Dashboard </a></li>
							</security:authorize>
							<li><a href="<%=request.getContextPath()%>/logout">
									<button class="nav-logout btn btn-info">Logout</button>
							</a></li>
						</ul></li>
			</ul>
			</security:authorize>
			
		</nav>
		<!-- .navbar -->

	</div>
	<script src="/js/main.js"></script>
	<script type="text/javascript">
	

	(function() {
	  "use strict";

	  /**
	   * Easy selector helper function
	   */
	  const select = (el, all = false) => {
	    el = el.trim()
	    if (all) {
	      return [...document.querySelectorAll(el)]
	    } else {
	      return document.querySelector(el)
	    }
	  }

	  /**
	   * Easy event listener function
	   */
	  const on = (type, el, listener, all = false) => {
	    let selectEl = select(el, all)
	    if (selectEl) {
	      if (all) {
	        selectEl.forEach(e => e.addEventListener(type, listener))
	      } else {
	        selectEl.addEventListener(type, listener)
	      }
	    }
	  }

	  /**
	   * Easy on scroll event listener 
	   */
	  const onscroll = (el, listener) => {
	    el.addEventListener('scroll', listener)
	  }

	  /**
	   * Navbar links active state on scroll
	   */
	  let navbarlinks = select('#navbar .scrollto', true)
	  const navbarlinksActive = () => {
	    let position = window.scrollY + 200
	    navbarlinks.forEach(navbarlink => {
	      if (!navbarlink.hash) return
	      let section = select(navbarlink.hash)
	      if (!section) return
	      if (position >= section.offsetTop && position <= (section.offsetTop + section.offsetHeight)) {
	        navbarlink.classList.add('active')
	      } else {
	        navbarlink.classList.remove('active')
	      }
	    })
	  }
	  window.addEventListener('load', navbarlinksActive)
	  onscroll(document, navbarlinksActive)

	  /**
	   * Scrolls to an element with header offset
	   */
	  const scrollto = (el) => {
	    let header = select('#header')
	    let offset = header.offsetHeight

	    let elementPos = select(el).offsetTop
	    window.scrollTo({
	      top: elementPos - offset,
	      behavior: 'smooth'
	    })
	  }

	  /**
	   * Toggle .header-scrolled class to #header when page is scrolled
	   */
	  let selectHeader = select('#header')
	  if (selectHeader) {
	    const headerScrolled = () => {
	      if (window.scrollY > 100) {
	        selectHeader.classList.add('header-scrolled')
	      } else {
	        selectHeader.classList.remove('header-scrolled')
	      }
	    }
	    window.addEventListener('load', headerScrolled)
	    onscroll(document, headerScrolled)
	  }

	  /**
	   * Back to top button
	   */
	  let backtotop = select('.back-to-top')
	  if (backtotop) {
	    const toggleBacktotop = () => {
	      if (window.scrollY > 100) {
	        backtotop.classList.add('active')
	      } else {
	        backtotop.classList.remove('active')
	      }
	    }
	    window.addEventListener('load', toggleBacktotop)
	    onscroll(document, toggleBacktotop)
	  }

	  /**
	   * Mobile nav toggle
	   */
	  on('click', '.mobile-nav-toggle', function(e) {
	    select('#navbar').classList.toggle('navbar-mobile')
	    this.classList.toggle('bi-list')
	    this.classList.toggle('bi-x')
	  })

	  /**
	   * Mobile nav dropdowns activate
	   */
	  on('click', '.navbar .dropdown > a', function(e) {
	    if (select('#navbar').classList.contains('navbar-mobile')) {
	      e.preventDefault()
	      this.nextElementSibling.classList.toggle('dropdown-active')
	    }
	  }, true)

	  /**
	   * Scrool with ofset on links with a class name .scrollto
	   */
	  on('click', '.scrollto', function(e) {
	    if (select(this.hash)) {
	      e.preventDefault()

	      let navbar = select('#navbar')
	      if (navbar.classList.contains('navbar-mobile')) {
	        navbar.classList.remove('navbar-mobile')
	        let navbarToggle = select('.mobile-nav-toggle')
	        navbarToggle.classList.toggle('bi-list')
	        navbarToggle.classList.toggle('bi-x')
	      }
	      scrollto(this.hash)
	    }
	  }, true)

	  /**
	   * Scroll with ofset on page load with hash links in the url
	   */
	  window.addEventListener('load', () => {
	    if (window.location.hash) {
	      if (select(window.location.hash)) {
	        scrollto(window.location.hash)
	      }
	    }
	  });


	  /**
	   * Animation on scroll
	   */
	  window.addEventListener('load', () => {
	    AOS.init({
	      duration: 1000,
	      easing: "ease-in-out",
	      once: true,
	      mirror: false
	    });
	  });

	})()	
</script>
	 <!-- Vendor JS Files -->
  <script src="/vendor/aos/aos.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="/vendor/php-email-form/validate.js"></script>
</header>
<!-- End Header -->





