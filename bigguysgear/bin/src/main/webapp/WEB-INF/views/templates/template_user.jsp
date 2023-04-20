<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Fashion | Teamplate</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/user/assets/img/favicon.ico">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/slicknav.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/progressbar_barfiller.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/gijgo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/animated-headline.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/assets/css/style.css">
</head>

<body class="full-wrapper">
	<header>
		<div class="header-area ">
			<div class="main-header header-sticky">
				<div class="container-fluid">
					<div
						class="menu-wrapper d-flex align-items-center justify-content-between">
						<div class="header-left d-flex align-items-center">

							<div class="logo">
								<a href="index"><img
									src="${pageContext.request.contextPath}/resources/user/assets/img/logo/logo.png"
									alt=""></a>
							</div>

							<div class="main-menu  d-none d-lg-block">
								<nav>
									<ul id="navigation">
										<li><a href="index">Home</a></li>
										<li><a href="shop">shop</a></li>
										<li><a href="about">About</a></li>
										<li><a href="contact">Contact</a></li>
									</ul>
								</nav>
							</div>
						</div>
						<div class="header-right1 d-flex align-items-center">

							<div class="header-social d-none d-md-block">
								<a href="#!"><i class="fab fa-twitter"></i></a> <a href="#!"><i
									class="fab fa-facebook-f"></i></a> <a href="#!"><i
									class="fab fa-pinterest-p"></i></a>
							</div>

							<div class="search d-none d-md-block">
								<ul class="d-flex align-items-center">
									<li class="mr-15">
										<div class="nav-search search-switch">
											<i class="ti-search"></i>
										</div>
									</li>
									<li>
										<div class="card-stor">
											<img
												src="${pageContext.request.contextPath}/resources/user/assets/img/gallery/card.svg"
												alt=""> <span>0</span>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</header>

	<tiles:insertAttribute name="content"></tiles:insertAttribute>

	<footer>
		<div class="footer-area footer-padding">
			<div class="container-fluid ">
				<div class="row d-flex justify-content-between">
					<div class="col-xl-3 col-lg-3 col-md-8 col-sm-8">
						<div class="single-footer-caption mb-50">
							<div class="single-footer-caption mb-30">

								<div class="footer-logo mb-35">
									<a href="index"><img
										src="${pageContext.request.contextPath}/resources/user/assets/img/logo/logo2_footer.png"
										alt=""></a>
								</div>
								<div class="footer-tittle">
									<div class="footer-pera">
										<p>Suspendisse varius enim in eros elementum tristique.
											Duis cursus, mi quis viverra ornare, eros dolor interdum
											nulla.</p>
									</div>
								</div>

								<div class="footer-social">
									<a href="#!"><i class="fab fa-twitter"></i></a> <a href="#!"><i
										class="fab fa-facebook-f"></i></a> <a href="#!"><i
										class="fab fa-pinterest-p"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Quick links</h4>
								<ul>
									<li><a href="#!">Image Licensin</a></li>
									<li><a href="#!">Style Guide</a></li>
									<li><a href="#!">Privacy Policy</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Shop Category</h4>
								<ul>
									<li><a href="#!">Image Licensin</a></li>
									<li><a href="#!">Style Guide</a></li>
									<li><a href="#!">Privacy Policy</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-2 col-lg-2 col-md-4 col-sm-4">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Pertners</h4>
								<ul>
									<li><a href="#!">Image Licensin</a></li>
									<li><a href="#!">Style Guide</a></li>
									<li><a href="#!">Privacy Policy</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-2 col-lg-3 col-md-4 col-sm-4">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Get in touch</h4>
								<ul>
									<li><a href="#!">(84) 783562372</a></li>
									<li><a href="#!"><span class="__cf_email__">nguyenphu1147@gmail.com</span></a></li>
									<li><a href="#!">Binh Chanh, Ho Chi Minh city</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="footer-bottom-area">
			<div class="container">
				<div class="footer-border">
					<div class="row d-flex align-items-center">
						<div class="col-xl-12 ">
							<div class="footer-copy-right text-center">
								<p>Copyright &copy;</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</footer>

	<div class="search-model-box">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-btn">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input"
					placeholder="Searching key.....">
			</form>
		</div>
	</div>


	<div id="back-top">
		<a title="Go to Top" href="#!"> <i class="fas fa-level-up-alt"></i></a>
	</div>


	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/bootstrap.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/slick.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/jquery.slicknav.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/animated.headline.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/jquery.magnific-popup.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/gijgo.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/jquery.sticky.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/jquery.barfiller.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/jquery.counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/jquery.countdown.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/hover-direction-snake.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/contact.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/jquery.form.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/mail-script.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/jquery.ajaxchimp.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/user/assets/js/main.js"></script>

	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
		integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
		data-cf-beacon='{"rayId":"7a8ce54ddc760186","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.2.0","si":100}'
		crossorigin="anonymous"></script>
</body>
</html>