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
<title>新增委託案件</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/style.css">

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

.main-content-wrapper .header-area .amado-nav li a::after {
	background-color: white;
}

/* 右側畫面置中及大小控制 */
.checkout_details_area {
	position: relative;
	z-index: 1;
	-webkit-box-flex: 0;
	-ms-flex: 0 0 calc(95%);
	flex: 0 0 calc(95%);
	width: calc(95%);
	max-width: calc(95%);
	margin: auto;
}

.marginCenter {
	-ms-flex: 0 0 calc(95%);
	flex: 0 0 calc(95%);
	width: calc(95%);
	max-width: calc(95%);
}

.main-content-wrapper .cart-table-area {
	position: relative;
	z-index: 1;
	-webkit-box-flex: 0;
	-ms-flex: 0 0 calc(95% -220px);
	flex: 0 0 calc(95% -220px);
	width: calc(95% -220px);
	max-width: calc(95% -220px);
	margin: auto;
	height: 1200px;
}

#comment1 {
	height: 500px;
}

.errorMsg {
	text-align: left;
	padding-top: 20px;
}

#imgCss {
	width: 150px;
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
				<a href="/"><img
					src="/amado-master/img/core-img/logo.png" alt=""></a>
			</div>
			<!-- Amado Nav -->
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100">
				<a href="/projects/showAllEntrusFront/1" class="btn amado-btn mb-15">返回前台</a>
			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100"></div>
		</header>
		<!-- Header Area End -->

		<div class="cart-table-area">
			<div class="row marginCenter">
				<div class="col-12 col-lg-8 marginCenter">
					<div class="checkout_details_area mt-50 clearfix">

						<!--標題在這裡-->
						<div class="row">
							<div class="col-12">
								<div
									class="product-topbar d-xl-flex align-items-end justify-content-between">
									<!-- Total Products -->
									<div class="total-products">
										<h5>案件編號：${project.pjID}</h5>
									</div>
								</div>
							</div>
						</div>
						<form class="t1" action="/admin/projects/updateSingleProject"
							method="POST">
							<c:choose>
								<c:when test="${project.pjClass=='委託'}">
									<div class="row">
										<input type="hidden" name="pjID" value="${project.pjID}"
											readonly>
										<div class="col-md-8 mb-3">
											<input type="text" class="form-control" name="pjName"
												value="${project.pjName}" required>
										</div>
										<div class="col-md-4 mb-3">${project.fieldName}</div>
										<div class="col-12 mb-3">
											<input type="text" class="form-control"
												name="pjServerLocation"
												value="${project.pjServerLocation}" required>
										</div>
										<div class="col-6 mb-3">
											<input type="number" min="1" max="100000"
												class="form-control" name="pjPrice"
												value="NT. ${project.pjPrice}" required>
										</div>
										<div class="col-6 mb-3">
											<input type="date" name="pjExCompletionDate"
												id="pjExCompletionDate" class="form-control"
												pattern="yyyy-MM-dd" value="${day}" required>
										</div>
										<div class="col-12 mb-3">
											<textarea id="comment1" class="form-control"
												name="pjInstruction" cols="40" rows="60" placeholder="案件描述"
												style="resize: none">${project.pjInstruction}</textarea>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="row">
										<input type="hidden" name="pjID" value="${project.pjID}"
											readonly>
										<div class="col-md-8 mb-3">
											<input type="text" class="form-control" name="pjName"
												value="${project.pjName}" required>
										</div>
										<div class="col-md-4 mb-3">${project.fieldName}</div>
										<div class="col-12 mb-3">
											<input type="text" class="form-control"
												name="pjServerLocation"
												value="${project.pjServerLocation}" required>
										</div>
										<div class="col-6 mb-3">
											<input type="number" min="1" max="100000"
												class="form-control" name="pjPrice"
												value="${project.pjPrice}" required>
										</div>
										<div class="col-6 mb-3">
											<input type="date" name="pjExCompletionDate"
												id="pjExCompletionDate" class="form-control"
												pattern="yyyy-MM-dd" value="${day}" required>
										</div>
										<div class="col-12 mb-3">
											<textarea id="comment1" class="form-control"
												name="pjInstruction" cols="40" rows="60" placeholder="案件描述"
												style="resize: none">${project.pjInstruction}</textarea>
										</div>
										<c:choose>
											<c:when test="${not empty project.pjImgs}">
												<c:forEach var="img" items="${project.pjImgs}">
													<img id="imgCss"
														src="<c:url value='/admin/projects/showPJImg?imgID=${img.imgID}'/>" />
												</c:forEach>
											</c:when>
											<c:otherwise>
												<img id="imgCss"
													src="<c:url value='/images/project/default_demo.jpg'/>" />
											</c:otherwise>
										</c:choose>
									</div>
								</c:otherwise>
							</c:choose>

							<div class="col-12">
								<button class="cartButton" onclick="javascript:history.back()"
									value="取消">取消</button>
								<input class="cartButton" type="submit" id="submitForm"
									value="修改">
							</div>
						</form>
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
					</div>
				</div>
				<!-- Single Widget Area -->
				<div class="col-12 col-lg-8">
					<div class="single_widget_area"></div>
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
		//給input  date設定預設值
		var now = new Date();
		//格式化日，如果小於9，前面補0
		var day = ("0" + now.getDate()).slice(-2);
		//格式化月，如果小於9，前面補0
		var month = ("0" + (now.getMonth() + 1)).slice(-2);
		//拼裝完整日期格式
		var today = now.getFullYear() + "-" + (month) + "-" + (day);
		//完成賦值
		$("#pjExCompletionDate").attr("value", today);
		$("#pjExCompletionDate").attr("min", today);
	</script>
</body>
</html>