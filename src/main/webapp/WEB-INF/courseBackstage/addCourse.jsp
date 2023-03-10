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
<link rel="icon" href="/amado-master/img/core-img/logo.png">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/style.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap')
	;

body {
	font-family: 'Noto Sans TC', sans-serif;
	font-size: 20px;
}

.main-content-wrapper .header-area .amado-nav li a {
	font-family: 'Noto Sans TC', sans-serif;
	font-size: 20px;
}

th, td {
	word-break: break-all;
}

.main-content-wrapper .cart-table-area table thead tr th {
	font-size: 16px
}

.image-upload>input {
	display: none;
}

.footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link
	{
	font-size: 20px
}

.main-content-wrapper .header-area .amado-nav li a {
	color: white
}

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
				<a href="/"><img src="/amado-master/img/core-img/logo.png"
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

				<a href="/admin/showAllMember"><img width="150px" height="150px"
					src="/amado-master/img/core-img/newLogo.png" alt=""></a>
			</div>
			<!-- Amado Nav -->
			<nav class="amado-nav">
				<ul>
					<li class="active"><a href="/">??????</a></li>
					<li><a href="/admin/showAllMember">??????</a></li>
					<li><a href="/myProjects/showAllEntrusBacktage/1">??????</a></li>
					<li><a href="/admin/spacereadall.controller">????????????</a></li>
					<li><a href="/admin/showAllcourse">??????</a></li>
					<li><a href="/admin/testBackstage">??????</a></li>
					<li><a href="/admin/forumBackstage">??????</a></li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100" id="loginDiv">
				<a href="/" id="memberCenterOrBs" class="btn amado-btn mb-15">????????????</a>
			</div>

		</header>
		<!-- Header Area End -->

		<!-- ??????????????????-->
		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">

				<div>
					<div class="checkout_details_area mt-50 clearfix">

						<div class="cart-title" style="text-align: center;">
							<h2>????????????</h2>

							<hr>

							<p></p>

						</div>
						<form id="myForm" action="<c:url value='/addCourse'/>"
							method="post" style="margin-left: 450px;"
							enctype="multipart/form-data">


							<div class="t1">
								????????????:<input id="name" type="text" name="courseName">
							</div>

							<div class="t1">
								??????: <select id="category" name="category">
									<option value="??????">??????</option>
									<option value="??????">??????</option>
									<option value="????????????">????????????</option>
									<option value="??????">??????</option>
									<option value="????????????">????????????</option>
								</select>
							</div>
							<br />
							<div>
								<p></p>
								<br />
								<br />
							</div>
							<div class="t1">
								??????: <input id="teacher" type="text" name="teacher">
							</div>

							<div class="t1">
								??????:<input id="price" type="text" name="price">
							</div>

							<div class="t1">
								????????????: <select id="type" name="courseType">
									<option value="??????">??????</option>
									<option value="??????">??????</option>
								</select>
							</div>
							<div>
								<p></p>
								<br />
								<br />
							</div>
							<div class="t1">
								????????????:<input id="startdate" type="text" name="startDate">
							</div>

							<div class="t1">
								????????????: <input id="enddate" type="text" name="endDate">
							</div>

							<div class="t1">
								????????????: <input id="starttime" type="text" name="startTime">
							</div>

							<div class="t1">
								????????????: <input id="endtime" type="text" name="endTime">
							</div>

							<div class="t1">
								??????:<input type="file" name="image">
							</div><br/>
							<div>
								<button  id="btn" type="button">????????????</button>
							</div>

						</form>
						<div class="cart-btn mt-100">
							<button class="btn amado-btn w-100" type="submit" form="myForm">??????</button>
						</div>

					</div>

				</div>


				<input type="text" class="custom-control-input" id="test1">
			</div>
		</div>
	</div>




	<!-- ???????????? -->

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
											href="showAllMember">??????</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/myProjects/showAllEntrusBacktage/1">??????</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/admin/spacereadall.controller">??????</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/admin/showAllcourse">??????</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/admin/testBackstage">??????</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/admin/forumBackstage">??????</a></li>
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
	<!-- dataTable -->
	<script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script>
		$(function() {
			var currentUser;
			//??????????????????????????????????????????????????? 
			$.ajax({
				type : "get",
				url : "/getCurrentUser.do",
				success : function(member) {
					currentUser = member;
				}
			});
			
			$('#btn').click(function(){
			     $('#name').val('??????????????????????????????');			     
			     $('#category').val('????????????');
			     $('#teacher').val('Steven Lai');
			     $('#price').val('1980');
			     $('#type').val('??????');
			     $('#startdate').val('2022-11-20');
			     $('#enddate').val('2022-11-20');
			     $('#starttime').val('19:00');
			     $('#endtime').val('21:00');
			    })

		})
		
		$(function(){
			
		})
		
	</script>

</body>

</html>