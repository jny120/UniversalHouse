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
<title>管理我的委託案件</title>

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
	font-size: 20px;
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
	width: 70px;
	height: 30px;
	margin-right: 10px;
	box-shadow: 0 0 10px 0.5px lightgray;
}

/* 下拉式選單css */
#
.showShopSideBar1 {
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

.amado-nav {
	height: 430px
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
	height: 550px;
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
				<ul class="titleStyle">
					<li>Project
						<ul>
							<li><a href="/users/projects/showMyEntrus/1">管理我的委託案件</a></li>
							<li><a href="/users/projects/showMyService/1">管理我的服務案件</a></li>
							<li><a href="/users/projects/showMyServicingProject/1">我申請的接案</a></li>
							<li><a href="/users/projects/showMyEntrustingProject/1">我委託的案件</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100">
				<a href="/projects/showAllEntrusFront/1" class="btn amado-btn mb-15">返回前台</a>
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
								<h5>管理我的委託案件</h5>
							</div>
							<!-- Sorting -->
							<div class="product-sorting d-flex">
								<div class="sort-by-date d-flex align-items-center"></div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-12 col-sm-6">
						<form action="/users/projects/selectAllEntrusUser/1">
							<input type="text" name="findPJName" placeholder="　請輸入專案名稱"
								class="ip1"><span> </span><input class="cartButton"
								type="submit" value="確認">
						</form>
					</div>

				</div>
				<hr />


				<div class="cart-table clearfix">

					<table class="table table-responsive col-12">
						<c:choose>
							<c:when test="${empty evaluation}">
								<h5>尚無案件</h5>
							</c:when>
							<c:otherwise>
								<thead class="theadColor">
									<tr>
										<th class="col-md-1">委託編號</th>
										<th class="col-md-2">人才帳號</th>
										<th class="col-md-3">名稱</th>
										<th class="col-md-2">報價</th>
										<th class="col-md-2">狀態</th>
										<th class="col-md-2">
											<!-- 我要付款 -->
										</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="i" items="${evaluation}">
										<tr>
											<form action="/users/projects/addOrder"
												method="post">
											<td id="pjID"><input type="text" name="pjID"
												value="${i.evID}" readonly></td>
											<td>${i.servicer.memberId}</td>
											<td id="pjName"><input type="text" name="pjName"
												value="${i.project.pjName}" readonly></td>
											<td id="pjPrice"><input type="text" name="pjPrice"
												value="${i.project.pjPrice}" readonly></td>
											<c:if test="${i.evDealPrice == 0}">
												<td>尚未付款</td>
												<td><a href="/projects/projectFront/${i.project.pjID}"><button
															class="cartButton" value="查看詳情">查看詳情</button></a> <input
													type="submit" class="cartButton" id="payment" value="點我付款"></td>
											</c:if>
											<c:if
												test="${i.evDealPrice != 0 && i.evCompletionDate == null}">
												<td>待完成</td>
												<td><a href="/projects/projectFront/${i.project.pjID}"><button
															class="cartButton" value="查看詳情">查看詳情</button></a>
											</c:if>
											</form>
											<c:if
												test="${i.evCompletionDate != null && i.evClientEV == 0}">
												<td>已完成</td>
												<td><a href="/projects/projectFront/${i.project.pjID}"><button
															class="cartButton" value="查看詳情">查看詳情</button></a><a
													href="/users/projects/goToEvaluation/${i.evID}"><button
															class="cartButton" value="填寫評價">填寫評價</button></a></td>
											</c:if>
											<c:if
												test="${i.evCompletionDate != null && i.evClientEV != 0}">
												<td>已評價</td>
												<td><a href="/projects/projectFront/${i.project.pjID}"><button
															class="cartButton" value="查看詳情">查看詳情</button></a>
											</c:if>
										</tr>
									</c:forEach>
								</tbody>
							</c:otherwise>
						</c:choose>
						</tbody>
					</table>
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
		
	</script>
</body>