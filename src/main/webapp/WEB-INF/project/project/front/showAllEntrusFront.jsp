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
/* 字型import */
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&family=Tourney:wght@100&display=swap')
	;

/* 字型套用 */
body {
	font-family: 'Noto Sans TC', sans-serif;
}

.titleStyle {
	font-family: 'Roboto', sans-serif;
	font-size: 20px;
}

.titleStyle li ul li {
	font-family: 'Noto Sans TC', sans-serif;
}

.fontSize {
	font-family: 'Noto Sans TC', sans-serif;
	font-size: 20px;
}

.main-content-wrapper .header-area .amado-nav li a {
	font-size: 20px;
}

/* 按鈕移入css */
.font-size2 :hover {
	color: #FBB710;
}

.main-content-wrapper .header-area .amado-nav li a::after {
	background-color: white;
}

/* 按鈕樣式 */
.cartButton {
	border: 0;
	background-color: #f5f7fa;
	font-size: 14px;
	width: 100px;
	height: 30px;
	margin-right: 10px;
	box-shadow: 0 0 10px 0.5px lightgray;
}

/* 下拉式選單css */
#showShopSideBar1 {
	background-color: #f5f7fa;
	padding: 10px;
}

#showShopSideBar2 {
	background-color: #f5f7fa;
	padding: 10px;
}

.cart {
	margin-top: 25px;
}

/* 右側畫面置中及大小控制 */
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

/* 左側欄位大小控制  */
.main-content-wrapper .header-area {
	height: 900px;
}

/* 表格欄位大小控制 */
.cart_product_ins {
	width: 35%;
}

.cart_product_img {
	width: 10%;
}

.cart_product_desc {
	width: 20%;
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
	height: 1100px;
}

.qty {
	width: auto;
}

.lastupdate {
	width: 20%;
}

.table td {
	text-align: center;
}

.imgCss {
	width: 100px;
	border-radius: 50%;
	margin-right: 30px;
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
						<form action="#" method="post">
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
					href="/users/projects/showMyEntrus/1" class="btn amado-btn mb-15">前往我的委託項目</a>
			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100"></div>
		</header>
		<!-- Header Area End -->

		<div class="amado_product_area">

			<div class="row">
				<div class="col-12">
					<div
						class="product-topbar d-xl-flex align-items-end justify-content-between">
						<!-- Total Products -->
						<div class="total-products">
							<p>
								<a href="/users/projects/saveEntrusAction" class="fontSize">有事想找人幫忙？點擊我新增委託項目！</a>
							</p>
							<div class="view d-flex"></div>
						</div>
						<!-- Sorting -->
						<div class="product-sorting d-flex">
							<div class="sort-by-date d-flex align-items-center">
								<p>排序</p>
								<form action="#" method="post">
									<select name="select" id="sortBydate">
										<option>最新</option>
										<option>最舊</option>
										<option>價格（升序）</option>
										<option>價格（降序）</option>
									</select>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12 col-sm-6">
					<form action="/projects/selectAllEntrusFront/1">
						<input type="text" name="findPJName" placeholder="　請輸入專案名稱"
							class="ip1"><span> </span><input class="cartButton"
							type="submit" value="確認">
					</form>
				</div>
				<div class="col-12 col-sm-6"
					style="text-align: right; font-size: 12px">
					<a href="/users/projects/showMyServicingProject/1"><button
							class="cartButton" value="我申請的接案">我申請的接案</button></a>
				</div>
			</div>
			<hr />

			<div class="cart-table clearfix">
				<div class="row">
					<c:if test="${ empty project}">
						<h5 style="text-align: center">查無案件資料</h5>
					</c:if>
					<c:if test="${not empty project}">
						<c:forEach var="pj" items="${project}">
							<div class="col-12 col-sm-10" style="width: 100%">
								<c:choose>
									<c:when test="${pj.member.memberImage == null}">
										<div>
											<img class="imgCss" src="/images/member/member.png"
												alt="Product" width="200px" vspace="10" hspace="10"
												align="left"> <span
												style="font-size: 20px; color: gray;">${pj.pjName}</span><br>
											<span>NT. ${pj.pjPrice} ${pj.pjServerLocation}</span><br>
											<br> <span>${pj.pjInstruction}</span><br>
										</div>
										<hr>
									</c:when>
									<c:otherwise>
										<div>
											<img class="imgCss"
												src="/ShowMemberImgServlet.do/${pj.member.memberId}"
												alt="Product" width="200px" vspace="10" hspace="10"
												align="left"><span
												style="font-size: 20px; color: gray;">${pj.pjName}</span><br>
											<span>NT. ${pj.pjPrice} ${pj.pjServerLocation}</span><br>
											<br> <span>${pj.pjInstruction}</span><br> <span>
										</div>
										<hr>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="col-12 col-sm-2" style="width: 100%">
								<br> <br> <a
									href="<c:url value='/projects/projectFront/${pj.pjID}' />">
									<input type="button" value="查看詳情" class="cartButton" />
								</a>
							</div>
						</c:forEach>

					</c:if>
				</div>
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
	<!-- ##### Main Content Wrapper End ##### -->

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
											href="/admin/projects/showAllEntrusBacktage/1">Product</a></li>
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

		$('.addToEntrusCart').on('click', function() {
			var check = confirm("確定是否要接案？");
			var pjID = $(this).parent().siblings().eq(3).text();
			var serviceID = $(this).parent().siblings().eq(1).text();

			if (check) {
				$.ajax({
					type : 'post',
					url : '/users/projects/addToEntrusCart',
					data : {
						pjID : pjID,
						serviceID : serviceID
					}
				});
			} else {
				alert("已取消");
			}
		})
	</script>
</body>

</html>