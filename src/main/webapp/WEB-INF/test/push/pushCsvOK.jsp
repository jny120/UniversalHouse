<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<style></style>
			<meta charset="UTF-8">
			<meta name="description" content="">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

			<!-- Title  -->
			<title>Universal House : Backstage</title>

			<!-- Favicon  -->
			<link rel="icon" href="/amado-master/img/core-img/favicon.ico">

			<!-- Core Style CSS -->
			<link rel="stylesheet" href="/amado-master/css/core-style.css">
			<link rel="stylesheet" href="/amado-master/style.css">


		</head>

		<body>
			<!-- ##### Main Content Wrapper Start ##### -->
			<div class="main-content-wrapper d-flex clearfix">

				<!-- Mobile Nav (max width 767px)-->
				<div class="mobile-nav">
					<!-- Navbar Brand -->
					<div class="amado-navbar-brand">
						<a href="/"><img src="/amado-master/img/core-img/newLogo.png" alt=""></a>
					</div>
					<!-- Navbar Toggler -->
					<div class="amado-navbar-toggler">
						<span></span><span></span><span></span>
					</div>
				</div>

				<!-- Header Area Start -->
				<header class="header-area clearfix" style="background-color:#212529">
					<!-- Close Icon -->
					<div class="nav-close">
						<i class="fa fa-close" aria-hidden="true"></i>
					</div>
					<!-- Logo -->
					<div class="logo">

						<a href="/"><img width="150px" height="150px" src="/amado-master/img/core-img/newLogo.png"
								alt=""></a>
					</div>
					<!-- Amado Nav -->
					<nav class="amado-nav">
						<ul>
							<li><a href="memberBackstage" style="color:white">Member</a></li>
							<li><a href="spaceBackstage" style="color:white">Space</a></li>
							<li><a href="testBackstage" style="color:white">Test</a></li>
							<li><a href="projectBackstage" style="color:white">Project</a></li>
							<li><a href="forumBackstage" style="color:white">Forum</a></li>
						</ul>
					</nav>

				</header>
				<!-- Header Area End -->

				<!-- 從這邊開始寫-->
				<div class="cart-table-area section-padding-100">
					<div class="container-fluid">
						<div class="row">

							<div class="cart-title mt-50">
								<h1>TEST (Admin)</h1>
								<input type="button" id="home"
									style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:40px; border-style:none"
									value="HOME">
								<input type="button"
									style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:40px; border-style:none"
									onclick="history.go(-1)" value="Undo">
							</div>
							<form id="form" enctype="multipart/form-data" method="POST">
								<table>
									<thead>
										<tr>
											<th style="flex: 10%; font-size: 18px;">testPk</th>
											<th style="flex: 10%; font-size: 18px;">testId</th>
											<th style="flex: 10%; font-size: 18px;">examinationquestion</th>
											<th style="flex: 10%; font-size: 18px;">field</th>
											<th style="flex: 10%; font-size: 18px;">options</th>
											<th style="flex: 10%; font-size: 18px;">options2</th>
											<th style="flex: 10%; font-size: 18px;">options3</th>
											<th style="flex: 10%; font-size: 18px;">options4</th>
										</tr>
									</thead>

									<tbody class="tbody">
										<c:forEach var="testBean" items="${testCenterBean}">

											<tr>
												<td style="flex: auto;">${testBean.testPk}</td>
												<td style="flex: auto;">${testBean.testId}</td>
												<td style="flex: auto;">${testBean.examinationquestion}</td>
												<td style="flex: auto;">${testBean.field}</td>
												<td style="flex: auto;">${testBean.options}</td>
												<td style="flex: auto;">${testBean.options2}</td>
												<td style="flex: auto;">${testBean.options3}</td>
												<td style="flex: auto;">${testBean.options4}</td>

											</tr>

										</c:forEach>

									</tbody>
								</table>
							</form>

						</div>
					</div>
				</div>
			</div>
			<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

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
										<button class="navbar-toggler" type="button" data-toggle="collapse"
											data-target="#footerNavContent" aria-controls="footerNavContent"
											aria-expanded="false" aria-label="Toggle navigation"><i
												class="fa fa-bars"></i></button>
										<div class="collapse navbar-collapse" id="footerNavContent">
											<ul class="navbar-nav ml-auto">
												<li class="nav-item">
													<a class="nav-link" href="memberBackstage">Member</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="spaceBackstage">Space</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="projectBackStage">Project</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="testBackstage">Test</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="forumBackstage">Forum</a>
												</li>
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
			<script>
				$(function () {
					$('#home').on('click', function () {
						window.location.href = '/'
					})
				})
			</script>
		</body>

		</html>