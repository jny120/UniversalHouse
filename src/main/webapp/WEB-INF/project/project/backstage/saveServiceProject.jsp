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
<title>新增服務案件</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/style.css">

<link rel="stylesheet" href="croppie.css" />
<script src="croppie.js"></script>

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

.main-content-wrapper .header-area {
	color: white;
}

.main-content-wrapper .header-area .amado-nav li a {
	color: white;
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
		<header class="header-area clearfix" style="background-color: #212529">
			<!-- Close Icon -->
			<div class="nav-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>
			<!-- Logo -->
			<div class="logo">

				<a href="/"><img width="150px" height="150px"
					src="/amado-master/img/core-img/newLogo.png" alt=""></a>
			</div>
			<!-- Amado Nav -->
			<!-- Button Group -->
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
										<h5>新增服務案件</h5>
									</div>
								</div>
							</div>
						</div>

						<!--form表單從這邊開始-->
						<form action="/admin/projects/saveService" method="post"
							enctype="multipart/form-data">
							<div class="row">
								<div class="col-md-8 mb-3">
									<input type="text" class="form-control" name="pjName"
										placeholder="案件名稱" required>
								</div>
								<div class="col-md-2 mb-3">
									<select name="fieldName" id="fieldName" class="w-100">
										<option value="設計">設計</option>
										<option value="資訊">資訊</option>
										<option value="文書">文書</option>
										<option value="影視">影視</option>
										<option value="生活">生活</option>
										<option value="顧問">顧問</option>
									</select>
								</div>
								<div class="col-md-2 mb-3 errorMsg">
									<h6>選擇後不可更改</h6>
								</div>
							</div>
							<div class="row">
								<div class="col-12 mb-3">
									<input type="text" class="form-control" name="pjServerLocation"
										placeholder="委託地區" required>
								</div>
								<div class="col-6 mb-3">
									<input type="number" min="1" max="100000" class="form-control"
										name="pjPrice" placeholder="報價　NT." required>
								</div>
								<div class="col-6 mb-3">
									<input type="text" name="pjExecutionTime" id="pjExecutionTime"
										class="form-control" placeholder="預計完成時間 幾日" required>
								</div>
								<div class="col-12 mb-3">
									<textarea id="comment1" class="form-control"
										name="pjInstruction" cols="40" rows="60" placeholder="案件描述"
										style="resize: none"></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-12 mb-3">
									<input type="file" class="cartButton" id="pjImg" name="pjImg" multiple>
								</div>

							</div>
							<div class="row">
								<div class="col-md-6 mb-6">
									<button class="cartButton" onclick="javascript:history.back()"
										value="取消">取消</button>
								</div>
								<div class="col-md-6 mb-6">
									<input class="cartButton" type="submit" id="submitForm"
										value="送出">
								</div>
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
											href="/admin/projects/projectBackStage/showAllEntrusBacktage/1">Project</a>
										</li>
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
		
		
		var basic = $('#pjImg').croppie({
		    viewport: {
		        width: 150,
		        height: 200
		    }
		});
		basic.croppie('bind', {
		    url: 'demo/cat.jpg',
		    points: [77,469,280,739]
		});
		//on button click
		basic.croppie('result', 'html').then(function(html) {
		    // html is div (overflow hidden)
		    // with img positioned inside.
		});
	</script>
</body>
</html>