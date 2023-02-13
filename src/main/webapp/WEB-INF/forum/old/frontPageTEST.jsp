<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>論壇後台</title>

<link rel="icon" href="/amado-master/img/core-img/favicon.ico">
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/css/style.css">
<style>
th, td {
	word-break: break-all;
}

.image-upload>input {
	display: none;
}
</style>
</head>

<body>
	<div class="search-wrapper section-padding-100">
		<div class="search-close">
			<i class="fa fa-close" aria-hidden="true"></i>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="search-content">
						<form action="#" method="get">
							<input type="search" name="search" id="search"
								placeholder="Type your keyword...">
							<button type="submit">
								<img src="/amado-master/img/core-img/search.png" alt="">
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="main-content-wrapper d-flex clearfix">

		<div class="mobile-nav">
			<div class="amado-navbar-brand">
				<a href="/"><img src="/amado-master/css/core-style.css' />"
					alt=""></a>
			</div>

			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>

		<header class="header-area clearfix">

			<div class="nav-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>

			<div class="logo">
				<a href="/"><img src="/amado-master/img/core-img/logo.png"
					alt=""></a>
			</div>

			<nav class="amado-nav">
				<ul>
					<li><a href="/">Home</a></li>
					<li><a href="/">Project</a></li>
					<li><a href="/">Space Rental</a></li>
					<li><a href="/">Course</a></li>
					<li><a href="/">Test</a></li>
					<li><a href="/frontPage">Forum</a></li>
				</ul>
			</nav>


			<div class="amado-btn-group mt-30 mb-100">
				<a href="#" id="Login" class="btn amado-btn mb-15">%Discount%</a>
			</div>

			<div class="cart-fav-search mb-100">
				<a href="<c:url value='/showMember.controller/showAllMember.do' />"
					class="cart-nav"><img src="/amado-master/img/core-img/cart.png"
					alt="">Account</a> <a
					href="<c:url value='/showMember.controller/showMemberInfo.do' />"
					class="cart-nav"><img src="/amado-master/img/core-img/cart.png"
					alt="">Personal</a> <a href="#" class="fav-nav"><img
					src="/amado-master/img/core-img/favorites.png" alt="">
					Favorite</a> <a href="#" class="search-nav"><img
					src="/amado-master/img/core-img/search.png" alt="">Search</a>
			</div>

			<div class="social-info d-flex justify-content-between">
				<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
					href="#"> <i class="fa fa-twitter" aria-hidden="true"></i></a>
			</div>

		</header>

		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				<c:forEach var="article" varStatus="stat" items="${articles}">
					<div class="row">
						<div class="col-12">

							<div class="row d-flex">
								<div class="col-xl-8 px-md-5 py-5">
									<div class="row pt-md-4">
										<div class="col-md-12">
											<div class="blog-entry-2 ftco-animate">
												<img class="d-block" src="getArticleCover?articleId=0"
													alt="cover">
												<div class="text pt-4">
													<h3 class="mb-4">
														<a href="#">${article.title}</a>
													</h3>
													<p class="mb-4">${article.topicName}</p>
													<div class="author mb-4 d-flex align-items-center">
														<a href="#" class="img"
															style="background-image: url(/amado-master/images/person_1.jpg);"></a>
														<div class="ml-3 info">
															<span>Written by</span>
															<h3>
																<a href="#">Dave Lewis</a>, <span>${article.updateTime}</span>
															</h3>
														</div>
													</div>
													<div class="meta-wrap d-md-flex align-items-center">
														<div class="half order-md-last text-md-right">
															<p class="meta">
																<span><i class="icon-heart"></i>3</span> <span><i
																	class="icon-eye"></i>${article.views}</span> <span><i
																	class="icon-comment"></i>5</span>
															</p>
														</div>
														<div class="half">
															<p>
																<a href="#" class="btn btn-primary p-3 px-xl-4 py-xl-3">Continue
																	Reading</a>
															</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<footer class="footer_area clearfix">
		<div class="container">
			<div class="row align-items-center">
				<!-- Single Widget Area -->
				<div class="col-12 col-lg-4">
					<div class="single_widget_area">
						<!-- Logo -->
						<div class="footer-logo mr-50">
							<a href="index.html"><img src="../img/core-img/logo2.png"
								alt=""></a>
						</div>
						<!-- Copywrite Text -->
						<p class="copywrite">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a> &
							Re-distributed by <a href="https://themewagon.com/"
								target="_blank">Themewagon</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
				<!-- Single Widget Area -->
				<div class="col-12 col-lg-8">
					<div class="single_widget_area">
						<!-- Footer Menu -->
						<div class="footer_menu">
							<nav class="navbar navbar-expand-lg justify-content-end">
								<button class="navbar-toggler" type="button"
									data-toggle="collapse" data-target="#footerNavContent"
									aria-controls="footerNavContent" aria-expanded="false"
									aria-label="Toggle navigation">
									<i class="fa fa-bars"></i>
								</button>
								<div class="collapse navbar-collapse" id="footerNavContent">
									<ul class="navbar-nav ml-auto">
										<li class="nav-item active"><a class="nav-link"
											href="index.html">Home</a></li>
										<li class="nav-item"><a class="nav-link" href="shop.html">aaa</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											href="product-details.html">Product</a></li>
										<li class="nav-item"><a class="nav-link" href="cart.html">Cart</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											href="checkout.html">Checkout</a></li>
									</ul>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<script src="/amado-master/js/popper.min.js"></script>
	<script src="/amado-master/js/bootstrap.min.js"></script>
	<script src="../../"></script>
	<script src="/amado-master/js/active.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>