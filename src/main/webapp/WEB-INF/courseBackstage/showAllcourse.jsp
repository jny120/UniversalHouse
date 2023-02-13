<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
			<!DOCTYPE html>
			<html lang="en">

			<head>
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

				<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">

				<style>
					.btn {
						background-color: #fbb710;
						border: none;
						color: white;
						padding: 3px 7px;
						text-align: center;
						text-decoration: none;
						display: inline-block;
						font-size: 16px;
						border-radius: 4px;
					}

					.delete {
						background-color: #555555;
						border: none;
						color: white;
						padding: 3px 7px;
						text-align: center;
						text-decoration: none;
						display: inline-block;
						font-size: 16px;
						border-radius: 4px;
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
							<a href="/"><img src="/amado-master/img/core-img/newLogo.png" alt=""></a>
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

							<a href="/"><img width="150px" height="150px" src="/amado-master/img/core-img/newLogo.png"
									alt=""></a>
						</div>
						<!-- Amado Nav -->
						<nav class="amado-nav">
							<ul>
								<li><a href="memberBackstage" style="color: white">Member</a></li>
								<li><a href="spaceBackstage" style="color: white">Space</a></li>
								<li><a href="testBackstage" style="color: white">Test</a></li>
								<li><a href="projectBackstage" style="color: white">Project</a></li>
								<li><a href="forumBackstage" style="color: white">Forum</a></li>
								<li><a href="showAllcourse" style="color: white">Course</a></li>
							</ul>
						</nav>

					</header>
					<!-- Header Area End -->

					<!-- 從這邊開始寫-->

					<div class="cart-table-area section-padding-100">
						<div class="container-fluid">
							<!-- <div class="row"> -->
							<div>
								<div class="cart-title mt-50">
									<h2>全部課程</h2>
								</div>
								<div>
									<input class="btn" type="button" onclick="location.href='/addCourseAction';"
										value="新增課程" />
								</div><br />

								<div class="clearfix">
									<form id="form" enctype="multipart/form-data" method="POST">
										<table class="table table-responsive" id="myTable" style="text-align:center;">
											<thead>
												<tr>
													<th style="flex:60%">課程代號</th>
													<th style="flex:100%">課程名稱</th>
													<th style="flex:60%">類別</th>
													<th style="flex:60%">教師</th>
													<th style="flex:60%">價錢</th>
													<th style="flex:60%">上課形式</th>
													<th style="flex:60%">開課日期</th>
													<th style="flex:60%">結束日期</th>
													<th style="flex:60%">開始時間</th>
													<th style="flex:60%">結束時間</th>
													<th style="flex:60%">圖片</th>
													<th style="flex:60%">操作</th>
												</tr>
											</thead>
											<tbody id='tb'>
												<c:forEach items="${course}" var="allCourse">
													<tr>
														<td style="flex:60%">${allCourse.courseId}</td>
														<td style="flex:100%">${allCourse.courseName}</td>
														<td style="flex:60%">${allCourse.category}</td>
														<td style="flex:60%">${allCourse.teacher}</td>
														<td style="flex:60%">${allCourse.price}</td>
														<td style="flex:60%">${allCourse.courseType}</td>
														<td style="flex:60%">${allCourse.startDate}</td>
														<td style="flex:60%">${allCourse.endDate}</td>
														<td style="flex:60%">${allCourse.startTime}</td>
														<td style="flex:60%">${allCourse.endTime}</td>

														<td style="flex:60%">
															<c:choose>
																<c:when test="${not empty allCourse.image}">

																	<img src="/admin/showCourseImg/${allCourse.courseId}"
																		width="160px" height="120px" />

																</c:when>
																<c:otherwise>
																	<img src="/images/course/no_image.jpg" width="160px"
																		height="120px" />
																</c:otherwise>
															</c:choose>
														</td>

														<td style="flex:60%">

															<a href="preUpdate/${allCourse.courseId}" class="btn">修改</a>
															<input type="button" value="刪除" class="delete">
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</form>
								</div>
							</div>



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
											<button class="navbar-toggler" type="button" data-toggle="collapse"
												data-target="#footerNavContent" aria-controls="footerNavContent"
												aria-expanded="false" aria-label="Toggle navigation">
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
				<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
				<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
				<script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>

				<script>
					$(document).ready(function () {
						$('#myTable').DataTable();

					});

					$('#tb').on('click', '.delete', function () {
						let courseId = $(this).parent().siblings().eq(0).text();

						$.ajax({
							type: 'post',
							url: '/admin/deleteCourse',
							data: {
								courseId: courseId,
							},
							success: function () {
								$(this).parent().parent().remove();
								Swal.fire('刪除成功!', '已刪除該筆資料,請重新整理!', 'success');


							},
							error: function (thrownError) {
								Swal.fire({
									icon: 'error',
									title: 'Oops...',
									text: 'Something went wrong!',
									footer: '<a href="">Why do I have this issue?</a>'
								})
							}
						});
					})
				</script>

			</body>

			</html>