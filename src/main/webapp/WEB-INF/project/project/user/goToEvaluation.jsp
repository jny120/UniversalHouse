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
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Amado - Furniture Ecommerce Template | Product Details</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/style.css">

<!-- 中文字style -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap')
	;

.amado-nav {
	font-family: 'Noto Sans TC', sans-serif;
}

/* 按鈕樣式 */
.cartButton {
	border: 0;
	background-color: #f5f7fa;
	font-size: 14px;
	width: 70px;
	height: 30px;
	margin-right: 10px;
	box-shadow: 0 0 10px 0.5px lightgray;
}

.imgCss {
	width: 100px;
	margin-right: 10px;
	margin-bottom: 10px;
	vertical-align: middle;
}
</style>
</head>

<body>
	<!-- Search Wrapper Area Start -->
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
	<!-- Search Wrapper Area End -->

	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">

		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img
					src="/amado-master/img/core-img/logo.png" alt=""></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>

		<!-- Header Area Start -->
		<header class="header-area clearfix">
			<!-- Close Icon -->
			<div class="nav-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>
			<!-- Logo -->
			<div class="logo">
				<a href="/"><img src="/amado-master/img/core-img/logo.png"
					alt=""></a>
			</div>
			<!-- Amado Nav -->
			<nav class="amado-nav"></nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100">
				<a href="#" class="btn amado-btn active">Logout</a>
			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100"></div>
			<!-- Social Button -->
			<div class="social-info d-flex justify-content-between"></div>
		</header>
		<!-- Header Area End -->

		<!-- Product Details Area Start -->
		<div class="single-product-area section-padding-100 clearfix">
			<div class="col-12">
				<img class="imgCss"
					src="/projects/showPJImg?imgID=${evaluation.project.pjImgs[0].imgID}"
					vspace="10" hspace="10" align="left">
				${evaluation.project.pjName}<br>
				NT. ${evaluation.project.pjPrice}<br>
				${evaluation.project.pjInstruction}
			</div>
			<form action="/users/projects/updateEvaluation" method="post">
			<div class="col-12">
					<input type="hidden" name="ev_ID" value="${evaluation.evID}">
				</div>
				<div class="col-12">
					<input type="number" min="0" max="5" class="form-control"
						name="ev_ClientEV" placeholder="評分" required>
				</div>
				<div class="col-12">
					<textarea class="form-control" name="ev_ClientComment" cols="40"
						rows="30" placeholder="評價" style="resize: none"></textarea>
					<input class="cartButton" type="submit" value="送出評價">
				</div>

			</form>
		</div>

		<!-- Product Details Area End -->
	</div>
	<!-- ##### Main Content Wrapper End ##### -->

	<!-- ##### Newsletter Area Start ##### -->
	<section class="newsletter-area section-padding-100-0">
		<div class="container">
			<div class="row align-items-center">
				<!-- Newsletter Text -->
				<div class="col-12 col-lg-6 col-xl-7">
					<div class="newsletter-text mb-100">
						<h2>
							Subscribe for a <span>25% Discount</span>
						</h2>
						<p>Nulla ac convallis lorem, eget euismod nisl. Donec in
							libero sit amet mi vulputate consectetur. Donec auctor interdum
							purus, ac finibus massa bibendum nec.</p>
					</div>
				</div>
				<!-- Newsletter Form -->
				<div class="col-12 col-lg-6 col-xl-5">
					<div class="newsletter-form mb-100">
						<form action="#" method="post">
							<input type="email" name="email" class="nl-email"
								placeholder="Your E-mail"> <input type="submit"
								value="Subscribe">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Newsletter Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer_area clearfix">
		<div class="container">
			<div class="row align-items-center">
				<!-- Single Widget Area -->
				<div class="col-12 col-lg-4">
					<div class="single_widget_area">
						<!-- Logo -->
						<div class="footer-logo mr-50">
							<a href="index.html"><img
								src="/amado-master/img/core-img/logo2.png" alt=""></a>
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
										<li class="nav-item"><a class="nav-link" href="shop.html">Shop</a>
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
	<!-- ##### Footer Area End ##### -->

	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
	<script src="/amado-master/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="/amado-master/js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="/amado-master/js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="/amado-master/js/plugins.js"></script>
	<!-- Active js -->
	<script src="/amado-master/js/active.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#showShopSideBar1').hide();
		});

		if ($('#showShopSideBar1').show()) {
			$('#showShopSideBar2').hide();
		} else if ($('#showShopSideBar2').show()) {
			$('#showShopSideBar1').hide();
		}

		$('#openShopSideBar1').mouseover(function() {
			$('#showShopSideBar1').show();
		})

		$('#openShopSideBar1').mouseout(function() {
			$('#showShopSideBar1').hide();
		})

		$('#showShopSideBar1').mouseover(function() {
			$(this).show();
		})

		$('#showShopSideBar1').mouseout(function() {
			$(this).hide();
		})

		$('#openShopSideBar2').mouseover(function() {
			$('#showShopSideBar2').show();
		})

		$('#openShopSideBar2').mouseout(function() {
			$('#showShopSideBar2').hide();
		})

		$('#showShopSideBar2').mouseover(function() {
			$(this).show();
		})

		$('#showShopSideBar2').mouseout(function() {
			$(this).hide();
		})

		$(function() {
			// 給input  date設定預設值
			var now = new Date();
			//格式化日，如果小於9，前面補0
			var day = ("0" + now.getDate()).slice(-2);
			//格式化月，如果小於9，前面補0
			var month = ("0" + (now.getMonth() + 1)).slice(-2);
			//拼裝完整日期格式
			var today = now.getFullYear() + "-" + (month) + "-" + (day);
			//完成賦值
			$("#pj_ExCompletionDate").attr("min", today);

			$('#addToServiceCart').on('click', function() {
				var check = confirm("確定是否要委託？");
				var pjID = $('#pjID').val();
				var serviceID = $('#memberID').text();
				if (check) {
					$.ajax({
						type : 'post',
						url : '/users/projects/addToServiceCart',
						data : {
							pjID : pjID,
							serviceID : serviceID
						},
						success : function() {
							alert("已接案")
						}
					});
				} else {
					alert("已取消");
				}
			})

			$('#addToEntrusCart').on('click', function() {
				var check = confirm("確定是否要接案？");
				var pjID = $('#pjID').val();
				var serviceID = $('#memberID').text();

				if (check) {
					$.ajax({
						type : 'post',
						url : '/users/projects/addToEntrusCart',
						data : {
							pjID : pjID,
							serviceID : serviceID
						},
						success : function() {
							alert("已完成")
						}
					});
				} else {
					alert("已取消");
				}
			})
		});
	</script>
</body>

</html>