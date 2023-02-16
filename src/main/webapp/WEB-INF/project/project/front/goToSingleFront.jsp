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

.evaluationCss {
	height: 100px;
	text-align: center;
	border: solid 1px lightgray;
}

.evaluationCss input {
	height: 50px;
	margin: 20px 5px;
	border: 0px;
}

.evaluationCss input:hover {
	background-color: gray;
	color: white;
}

.evaluationCss div {
	margin: 10px 5px;
	font-size: 24px;
}

.single_product_desc {
	height: 600px;
}

.tbStyle {
	width: 100px;
	margin: auto;
	margin-top: 20px;
	text-align: center;
}

.tbStyle tr td {
	padding: 10px;
}

.tbStyle tr td {
	padding: 10px;
}

.memberSiderBar {
	box-shadow: 0 0 10px 0.5px lightgray;
}

.carousel-item a img {
	width: 350px;
	height: 400px;
}

#cutImg a img {
	width: 50px;
	height: 400px;
	background: #f80;
	border-radius: 5%;
	object-fit: cover;
}

.imgCss {
	width: 100px;
	border-radius: 50%;
	margin-right: 30px;
}

.evaluationBlock {
	margin-top: 50px;
}

.main-content-wrapper .header-area .amado-nav li a {
	font-size: 20px;
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
			<nav class="amado-nav">
				<ul>
					<li class="active" id="openShopSideBar1"><a
						href="/projects/showAllServiceFront/1">想找人才</a></li>
					<!--  Catagories  -->
					<div class="catagories-menu" id='showShopSideBar1'>
						<ul>
							<li class="active"><a href="#">文書</a></li>
							<li><a href="#">生活</a></li>
							<li><a href="#">設計</a></li>
							<li><a href="#">資訊</a></li>
							<li><a href="#">影視</a></li>
							<li><a href="#">顧問</a></li>
						</ul>
					</div>
					<li id="openShopSideBar2"><a
						href="/projects/showAllEntrusFront/1">我想接案</a></li>
					<div class="catagories-menu" id='showShopSideBar2'>
						<ul>
							<li class="active"><a href="#">文書</a></li>
							<li><a href="#">生活</a></li>
							<li><a href="#">設計</a></li>
							<li><a href="#">資訊</a></li>
							<li><a href="#">影視</a></li>
							<li><a href="#">顧問</a></li>
						</ul>
					</div>
				</ul>
			</nav>
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


			<c:choose>
				<c:when test="${project.pjClass=='服務'}">
					<div class="container-fluid">
						<div class="row">
							<div class="col-12 col-lg-4">
								<div class="single_product_thumb">
									<div id="product_details_slider" class="carousel slide"
										data-ride="carousel">
										<ol class="carousel-indicators">

											<c:forEach var="img" items="${project.pjImgs}"
												varStatus="status">
												<li class="active" data-target="#product_details_slider"
													data-slide-to="${status.index}"
													style="background-image: url(/projects/showPJImg?imgID=${img.imgID});">
												</li>
											</c:forEach>
										</ol>
										<div class="carousel-inner">
											<c:forEach var="img" begin="0" end="0"
												items="${project.pjImgs}">
												<div class="carousel-item active" id="cutImg">
													<a class="gallery_img"
														href="/projects/showPJImg?imgID=${img.imgID}"> <img
														class="d-block w-100"
														src="/projects/showPJImg?imgID=${img.imgID}"
														alt="First slide">
													</a>
												</div>
											</c:forEach>
											<c:forEach var="img" begin="1" items="${project.pjImgs}">
												<div class="carousel-item" id="cutImg">
													<a class="gallery_img"
														href="/projects/showPJImg?imgID=${img.imgID}"> <img
														class="d-block w-100"
														src="/projects/showPJImg?imgID=${img.imgID}"
														alt="First slide">
													</a>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>

							<div class="col-12 col-lg-5">
								<div class="single_product_desc">
									<!-- Product Meta Data -->
									<div class="product-meta-data">
										<div class="line"></div>
										<a href="#"> <input type="hidden" id="pjID"
											value="${project.pjID}">
											<h6>${project.pjName}</h6>
										</a>
										<!-- Ratings & Review -->
										<div
											class="ratings-review mb-15 d-flex align-items-center justify-content-between">
											<div class="ratings">
												<c:forEach var="i" begin="1" end="${evAvg}">
													<i class="fa fa-star" aria-hidden="true"></i>
												</c:forEach>
											</div>
										</div>
										<p class="product-price">NT. ${project.pjPrice}</p>
										<div>
											<p>${project.pjServerLocation}</p>
										</div>
										<div>
											<p>${day}</p>
										</div>
									</div>

									<div class="short_overview my-5">
										<p>${project.pjInstruction}</p>
									</div>

								</div>
							</div>

							<div class="col-12 col-lg-3 memberSiderBar">
								<br>
								<div class="single_product_desc">
									<c:choose>
										<c:when test="${project.member.memberImage == null}">
											<div style="height: 100px; width:100px; margin: auto;">
												<img class="imgCss" src="/images/member/member.png"
													alt="Product" width="200px" vspace="10" hspace="10">
											</div>
										</c:when>
										<c:otherwise>
											<div style="height: 100px; width:100px; margin: auto;">
												<img class="imgCss"
													src="/ShowMemberImgServlet.do/${project.member.memberId}"
													alt="Product" width="200px" vspace="10" hspace="10"
													align="left">
											</div>
											<hr>
										</c:otherwise>
									</c:choose>
									<table class="tbStyle">
										<tr>
											<td id="memberID">${project.member.memberId}</td>
										</tr>
										<tr>
											<td><c:forEach var="i" begin="1" end="${ev.evClientEV}">
													<i class="fa fa-star" aria-hidden="true"></i>
												</c:forEach></td>
										</tr>
										<tr>
											<td>${project.member.location}</td>
										</tr>
										<tr>
											<td>${project.member.email}</td>
										</tr>
										<tr>
											<td>成交件數： ${count}件</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<hr>
					</div>
					<div class="row evaluationCss">
						<div class="col-12 col-lg-3">
							${evAvg}/5星
							<div class="ratings">
								<c:forEach var="i" begin="1" end="${evAvg}">
									<i class="fa fa-star" aria-hidden="true"></i>
								</c:forEach>
							</div>
						</div>
						<input class="col-12 col-lg-1" type="button"
							onClick="window.location.reload();" value="全部"> <input
							class="starField col-12 col-lg-1" type="button" value="1星">
						<input class="starField col-12 col-lg-1" type="button" value="2星">
						<input class="starField col-12 col-lg-1" type="button" value="3星">
						<input class="starField col-12 col-lg-1" type="button" value="4星">
						<input class="starField col-12 col-lg-1" type="button" value="5星">
					</div>
					<div class="cart-table clearfix">
						<div class="row allevaluationBlock">
							<c:if test="${ empty evaluation}">
								<h5 style="text-align: center">查無案件資料</h5>
							</c:if>
							<c:if test="${not empty evaluation}">
								<c:forEach var="ev" items="${evaluation}">
									<c:if test="${ev.evClientEV != 0}">
										<div class="evaluationBlock col-12 col-sm-12"
											style="width: 100%; margin-left: 25px;">
											<c:choose>
												<c:when test="${project.member.memberImage == null}">
													<div style="height: 100px;">
														<img class="imgCss" src="/images/member/member.png"
															alt="Product" width="200px" vspace="10" hspace="10"
															align="left">
														<div class="ratings">
															<c:forEach var="i" begin="1" end="${evAvg}">
																<i class="fa fa-star" aria-hidden="true"></i>
															</c:forEach>
														</div>
														<div style="height: 50px">
															<span>${ev.evClientComment}</span>
														</div>
														<span>${ev.evCompletionDate}</span><br>
													</div>
													<hr>
												</c:when>
												<c:otherwise>
													<div style="height: 100px;">
														<img class="imgCss"
															src="/ShowMemberImgServlet.do/${project.member.memberId}"
															alt="Product" width="200px" vspace="10" hspace="10"
															align="left">
														<div class="ratings">
															<c:forEach var="i" begin="1" end="${evAvg}">
																<i class="fa fa-star" aria-hidden="true"></i>
															</c:forEach>
														</div>
														<div style="height: 50px">
															<span>${ev.evClientComment}</span>
														</div>
														<span>${ev.evCompletionDate}</span><br>
													</div>
													<hr>
												</c:otherwise>
											</c:choose>
										</div>
									</c:if>
								</c:forEach>

							</c:if>
						</div>
					</div>
					<br>
					<button id="addToEntrusCart" type="submit" name="addtocart"
						value="5" class="btn amado-btn">我要委託</button>

				</c:when>
				<c:otherwise>
					<div class="container-fluid">
						<div class="row">
							<div class="col-12 col-lg-8">
								<div class="single_product_desc">
									<!-- Product Meta Data -->
									<div class="product-meta-data">
										<div class="line"></div>
										<a href="#">
											<h6>${project.pjName}</h6>
										</a>
										<!-- Ratings & Review -->
										<p class="product-price">NT. ${project.pjPrice}</p>
										<div>
											<p>${project.pjServerLocation}</p>
										</div>
										<div>
											<p>${day}</p>
										</div>
									</div>

									<div class="short_overview my-5">
										<p>${project.pjInstruction}</p>
									</div>

								</div>
							</div>



							<div class="col-12 col-lg-4 memberSiderBar">
								<br>
								<div class="single_product_desc">
									<c:choose>
										<c:when test="${project.member.memberImage == null}">
											<div style="height: 100px; width:100px; margin: auto;">
												<img class="imgCss" src="/images/member/member.png"
													alt="Product" width="200px" vspace="10" hspace="10">
											</div>
										</c:when>
										<c:otherwise>
											<div style="height: 100px; width:100px; margin: auto;">
												<img class="imgCss"
													src="/ShowMemberImgServlet.do/${project.member.memberId}"
													alt="Product" width="200px" vspace="10" hspace="10"
													align="left">
											</div>
											<hr>
										</c:otherwise>
									</c:choose>
									<table class="tbStyle">
										<tr>
											<td>${project.member.memberId}</td>
										</tr>
										<tr>
											<td>評價分數</td>
										</tr>
										<tr>
											<td>${project.member.location}</td>
										</tr>
										<tr>
											<td>${project.member.email}</td>
										</tr>
										<tr>
											<td>成交件數： ${count}件</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<hr>
					</div>
					<br>
					<button id="addToEntrusCart" type="submit" name="addtocart"
						value="5" class="btn amado-btn">我要接案</button>

				</c:otherwise>
			</c:choose>
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
					<div class="newsletter-text mb-100"></div>
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

		$('.starField')
				.on(
						'click',
						function() {
							var pjID = $('#pjID').val();
							var evStar = $(this).val();
							var ev = evStar.substr(0, 1);

							$
									.ajax({
										type : 'get',
										url : '/projects/projectFrontEv/1',
										dataType : 'JSON',
										contentType : 'application/json',
										data : {
											pjID : pjID,
											ev : ev
										},
										success : function(evList) {
											$('.allevaluationBlock').empty("");
											$
													.each(
															evList,
															function(i, ev) {
																if (ev.member.memberImage == null) {
																	var beginStr = "<div class='evaluationBlock col-12 col-sm-12' style='width: 100%; margin-left: 25px;'><div style='height: 100px;'>";
																	var contentStr = "<img class='imgCss' src='/images/member/member.png' alt='Product' width='200px' vspace='10' hspace='10' align='left'>"
																			+ "<div class='ratings'>";
																	var starStr = "";
																	var endStr = "</div><div style='height: 50px'><span>"
																			+ ev.evClientComment
																			+ "</span></div><span>"
																			+ ev.evCompletionDate
																			+ "</span><br></div><hr></div>";

																	for (let i = 0; i < ev.evClientEV; i++) {
																		starStr += "<i class='fa fa-star' aria-hidden='true'></i>";
																	}
																	var totalStr = beginStr
																			+ contentStr
																			+ starStr
																			+ endStr;
																	$(
																			'.allevaluationBlock')
																			.append(
																					totalStr);
																}
															})
										}
									});
						});
	</script>
</body>

</html>