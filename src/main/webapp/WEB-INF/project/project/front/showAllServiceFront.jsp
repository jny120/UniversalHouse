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
<title>我想接案</title>

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

body {
	font-family: 'Noto Sans TC', sans-serif;
}

.fontSize {
	font-family: 'Noto Sans TC', sans-serif;
	font-size: 20px;
}

.cart {
	margin-top: 25px;
}

.cartButton {
	border: 0;
	background-color: #FBB710;
	width: 70px;
	height: 30px;
}

#showShopSideBar1 {
	background-color: #f5f7fa;
	padding: 10px;
}

#showShopSideBar2 {
	background-color: #f5f7fa;
	padding: 10px;
}

.main-content-wrapper .amado_product_area {
	position: relative;
	z-index: 1;
	-webkit-box-flex: 0;
	-ms-flex: 0 0 calc(95% - 550px);
	flex: 0 0 calc(95% - 300px);
	width: calc(95% - 300px);
	max-width: calc(95% - 300px);
	margin-left: auto;
	margin-right: auto;
	margin-top: 100px;
}

.main-content-wrapper .cart-table-area {
	position: relative;
	z-index: 1;
	-webkit-box-flex: 0;
	-ms-flex: 0 0 calc(95%);
	flex: 0 0 calc(95%);
	width: calc(95%);
	max-width: calc(95%);
	margin: auto;
}

.cart_product_ins {
	width: 50%;
}

.cartButton {
	border: 0;
	background-color: #f5f7fa;
	font-size: 14px;
	width: 100px;
	height: 30px;
	margin-right: 10px;
	box-shadow: 0 0 10px 0.5px lightgray;
}

.cart_product_img {
	width: 75px;
	height: 100%;
}

.cart_product_desc {
	height: 100%;
}

.price {
	height: 100%;
	padding-top: 50%;
}

.product-topbar .total-products p {
	margin: 0;
}

.theadColor {
	background-color: rgb(225, 225, 225);
}

.theadColor tr th {
	font-size: 14px;
	padding: 5px;
	text-align: center;
}

.cart-table {
	height: 1000px;
}

.main-content-wrapper .header-area .amado-nav li a {
	font-size: 20px;
}

.cutImg img {
	width: 150px;
	height: 200px;
	background: #f80;
	border-radius: 5%;
	object-fit: cover;
}
</style>
</head>

<body>
	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">

		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="/"><img src="/amado-master/img/core-img/newLogo.png"
					alt=""></a>
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
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="/">首頁</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/projects/showAllServiceFront/1">專案</a></li>

					<li><a href="/projects/showAllServiceFront/1"
						id="openShopSideBar1">想找人才</a></li>
					<!--  Catagories  -->
					<div class="catagories-menu" id="showShopSideBar1">
						<ul>
							<li><a href="/projects/selectServiceField/文書/1">文書</a></li>
							<li><a href="/projects/selectServiceField/生活/1">生活</a></li>
							<li><a href="/projects/selectServiceField/設計/1">設計</a></li>
							<li><a href="/projects/selectServiceField/資訊/1">資訊</a></li>
							<li><a href="/projects/selectServiceField/影視/1">影視</a></li>
							<li><a href="/projects/selectServiceField/顧問/1">顧問</a></li>
						</ul>
					</div>
					<li class="active" id="openShopSideBar2"><a href="1">我想接案</a></li>
					<!--  Catagories  -->
					<div class="catagories-menu" id="showShopSideBar2">
						<ul>
							<li><a href="/projects/selectEntrustField/文書/1">文書</a></li>
							<li><a href="/projects/selectEntrustField/生活/1">生活</a></li>
							<li><a href="/projects/selectEntrustField/設計/1">設計</a></li>
							<li><a href="/projects/selectEntrustField/資訊/1">資訊</a></li>
							<li><a href="/projects/selectEntrustField/影視/1">影視</a></li>
							<li><a href="/projects/selectEntrustField/顧問/1">顧問</a></li>
						</ul>
					</div>
					<li class="nav-item"><a class="nav-link"
						href="/space.controller">場地租借</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/showAllProduct">課程</a></li>
					<li class="nav-item"><a class="nav-link" href="/frontDesk">測驗</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/frontPage">論壇</a>
					</li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100">
				<a href="/admin/projects/showAllEntrusBacktage/1"
					class="btn amado-btn mb-15">前往後台</a> <a
					href="/users/projects/showMyService/1" class="btn amado-btn mb-15">前往我的服務項目</a>
			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100"></div>
		</header>
		<!-- Header Area End -->

		<div class="amado_product_area">
			<div class="container-fluid">

				<div class="row">
					<div class="col-12">
						<div
							class="product-topbar d-xl-flex align-items-end justify-content-between">
							<!-- Total Products -->
							<div class="total-products">
								<p>
									<a href="/users/projects/saveServiceAction" class="fontSize">也想成為人才？點擊我新增服務項目！</a>
								</p>
								<div class="view d-flex"></div>
							</div>
							<!-- Sorting -->
							<div class="product-sorting d-flex">
								<div class="sort-by-date d-flex align-items-center">
									<p>排序</p>
									<form action="#" method="get">
										<select name="select" id="sortBydate">
											<option value="value">最新</option>
											<option value="value">最舊</option>
											<option value="value">價格（升序）</option>
											<option value="value">價格（降序）</option>
										</select>
									</form>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12 col-sm-6">
						<form action="/projects/selectAllServiceFront/1">
							<input type="text" name="findPJName" placeholder="　請輸入專案名稱"
								class="ip1"><span> </span><input class="cartButton"
								type="submit" value="確認">
						</form>
					</div>
					<div class="col-12 col-sm-6"
						style="text-align: right; font-size: 12px">
						<a href="/users/projects/showMyEntrustingProject/1"><button
								class="cartButton" value="我委託的案件">我委託的案件</button></a>
					</div>
				</div>
				<hr />

				<div class="row">

					<!-- 第一格為範例自動生成 -->
					<c:if test="${empty project}">
						<div class="t1">
							<h2>查無案件資料</h2>
						</div>
					</c:if>
					<c:if test="${not empty project}">
						<c:forEach var="pj" items="${project}">
							<div class="col-12 col-sm-3 col-md-12 col-xl-3">
								<div class="single-product-wrapper">
									<!-- Product Image -->
									<div class="product-img">
										<c:choose>
											<c:when test="${not empty pj.pjImgs}">
												<c:forEach var="img" end="0" items="${pj.pjImgs}">
													<div class="cutImg">
														<img id="imgCss"
															src="/projects/showPJImg?imgID=${img.imgID}" alt="">
													</div>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<img id="imgCss" src="/images/project/default_demo.jpg"
													alt="">
											</c:otherwise>
										</c:choose>
									</div>

									<!-- Product Description -->
									<div
										class="product-description d-flex align-items-center justify-content-between">
										<!-- Product Meta Data -->
										<div class="product-meta-data">
											<div class="line"></div>
											<p class="product-price">NT. ${pj.pjPrice}</p>
											<a href="/projects/projectFront/${pj.pjID}"
												class="font-size2"><h6>${pj.pjName}</h6></a>
										</div>
										<!-- Ratings & Cart -->
										<div class="ratings-cart text-right">
											<div class="ratings">
												
											</div>
											<div class="cart">
												<a
													href="<c:url value='/projects/projectFront/${pj.pjID}' />">
													<input type="button" value="查看詳情" class="cartButton" />
												</a>
												</td>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>

				<div class="row">
					<div class="col-12">
						<!-- Pagination -->
						<nav aria-label="navigation">
							<ul class="pagination justify-content-end mt-50">
								<c:forEach var="i" begin="1" end="${totalPages}" step="1">
									<li class="page-item"><a class="page-link" href="${i}">${i}</a></li>
								</c:forEach>
								<li style="text-align: center; padding: 10px; font-size: 10px">${nowPage}/${totalPages}</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Footer Area Start ##### -->
	<footer class="footer_area clearfix">
		<div class="container">
			<div class="row align-items-center">
				<!-- Single Widget Area -->
				<div class="col-12 col-lg-4">
					<div class="single_widget_area">
						<!-- Logo -->
						<div class="footer-logo mr-50">
							<a href="/"><img width="200px" height="200px"
								src="/amado-master/img/core-img/newLogo.png" alt=""></a>
						</div>
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
										<li class="nav-item"><a class="nav-link"
											href="memberBackstage">Member</a></li>
										<li class="nav-item"><a class="nav-link"
											href="spaceBackstage">Space</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/admin/projects/showAllEntrusBacktage/1">Project</a></li>
										<li class="nav-item"><a class="nav-link"
											href="testBackStage">Test</a></li>
										<li class="nav-item"><a class="nav-link"
											href="forumBackstage">Forum</a></li>
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

	<!-- 我額外增加的script -->
	<script>
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
	</script>
</body>

</html>