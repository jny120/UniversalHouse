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
<title>Universal House : Backstage</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/style.css">

<style>
.t1 {
	width: 100px;

	text-align: left;
	margin-right: 10px;
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
			<nav class="amado-nav">
				<ul>
					<li><a href="/memberBackstage" style="color: white">Member</a></li>
					<li><a href="/spaceBackstage" style="color: white">Space</a></li>
					<li><a href="/testBackstage" style="color: white">Test</a></li>
					<li><a href="/projectBackstage" style="color: white">Project</a></li>
					<li><a href="/forumBackstage" style="color: white">Forum</a></li>
					<li><a href="/showAllcourse" style="color: white">Course</a></li>
				</ul>
			</nav>

		</header>
		<!-- Header Area End -->

		<!-- 從這邊開始寫-->
		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				
					<div>
						<div class="checkout_details_area mt-50 clearfix">

							<div class="cart-title" style="text-align: center;">
								<h2>修改課程</h2>

								<hr>

								<p></p>

							</div>
							<form id="myForm" action="<c:url value='/updateCourse'/>" method="post"
								style="margin-left: 450px;" enctype="multipart/form-data">

								
								<div class="t1">課程代號:<input
										type="text" name="courseId" value="${course.courseId}" readonly>
								</div>


								<div class="t1">課程名稱:<input
										type="text" name="courseName" value="${course.courseName}">
								</div>
								
								<div class="t1">
									類別: <select
										name="category">
											<option value="程式">程式</option>
											<option value="語言">語言</option>
											<option value="職場技能">職場技能</option>
											<option value="設計">設計</option>
											<option value="投資理財">投資理財</option> </select>
								</div><br/>
								<div><p></p><br/><br/></div>
								<div class="t1">
									 教師: <input type="text"
										name="teacher" value="${course.teacher}">
								</div>

								<div class="t1">
									 價錢:<input type="text"
										name="price" value="${course.price}">
								</div>
								
									<div class="t1">
										上課形式:
										<select
											name="courseType">
												<option value="線上">線上</option>
												<option value="實體">實體</option> </select>
									</div>
									<div><p></p><br/><br/></div>
										<div class="t1">
											 開課日期:<input
												type="text" name="startDate" value="${course.startDate}">
										</div>

										<div class="t1">
											 結束日期: <input
												type="text" name="endDate" value="${course.endDate}">
										</div>

										<div class="t1">
											開始時間: <input
												type="text" name="startTime"  value="${course.startTime}">
										</div>

										<div class="t1">
											結束時間: <input
												type="text" name="endTime" value="${course.endTime}">
										</div>

										<div class="t1">
											 圖片:<input type="file"
												name="image">
										</div>
										

							</form>
										<div class="cart-btn mt-100">	
												<button class="btn amado-btn w-100" type="submit" form="myForm">送出</button>
										</div>
										
						</div>

					</div>
				

				<input type="text" class="custom-control-input" id="test1">
			</div>
		</div>
	</div>

	<!-- 這邊結束 -->

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
											href="projectBackStage">Project</a></li>
										<li class="nav-item"><a class="nav-link"
											href="testBackstage">Test</a></li>
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

</body>

</html>