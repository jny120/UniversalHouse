<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>UniversalHouse | Home</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/logo.png">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<!-- <link rel="stylesheet" href="/amado-master/css/style.css"> -->
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

.footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link
	{
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
				<a href="/"><img src="/amado-master/css/core-style.css" alt=""></a>

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
			<!-- 左列 -->
			<nav class="amado-nav">
				<ul>
					<li class="active"><a href="/">首頁</a></li>
					<li><a href="/projects/showAllEntrusFront/1">專案</a></li>
					<li><a href="space.controller">場地租借</a></li>
					<li><a href="/showAllProduct">課程</a></li>
					<li><a href="/testBackstage">測驗</a></li>
					<li><a href="frontPage">論壇</a></li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100" id="loginDiv">
				<a href="/users/memberCenter" id="memberCenterOrBs"
					class="btn amado-btn mb-15">會員中心</a>


			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100">
				<a href="/showCart" class="cart-nav"><img
					src="/amado-master/img/core-img/cart.png" alt="">購物車 </a> <a
					href="#" class="fav-nav"><img
					src="/amado-master/img/core-img/favorites.png" alt="">我的最愛</a> <a
					href="#" class="search-nav"><img
					src="/amado-master/img/core-img/search.png" alt="">搜尋</a>
			</div>
			<!-- Social Button -->
			<div class="social-info d-flex justify-content-between">
				<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
			</div>
		</header>
		<!-- Header Area End -->

		<!-- 這邊開始 -->
		
		<div style="width:1100px;margin-top:100px">
			
			<div class="col-12">
				
                        <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                            <!-- Total Products -->
                            <div class="total-products">
                                <p>Showing 1-8 0f 25</p>
                                <div class="view d-flex">
                                    <a href="#"><i class="fa fa-th-large" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-bars" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <!-- Sorting -->
                            <div class="product-sorting d-flex">
                                <div class="sort-by-date d-flex align-items-center mr-15">
                                    <p>Sort by</p>
                                    <form action="#" method="get">
                                        <select name="select" id="sortBydate">
                                            <option value="value">Date</option>
                                            <option value="value">Newest</option>
                                            <option value="value">Popular</option>
                                        </select>
                                    </form>
                                </div>
                                <div class="view-product d-flex align-items-center">
                                    <p>View</p>
                                    <form action="#" method="get">
                                        <select name="select" id="viewProduct">
                                            <option value="value">12</option>
                                            <option value="value">24</option>
                                            <option value="value">48</option>
                                            <option value="value">96</option>
                                        </select>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
<!--                      -->
			<div style="display:flex;flex-wrap: wrap;width:1000px">
			<c:forEach items="${course}" var="allCourse">
			<div style=";padding:25px;item-align:left">
					<form action="/addToCart" method="post" style="margin: 0 auto;">
					

						<p hidden="hidden">${allCourse.courseId}<p>
						<c:choose>
								<c:when test="${not empty allCourse.image}">

									<img style="width:200px;height:180px" src="showCourseImg/${allCourse.courseId}"  />

								</c:when>
								<c:otherwise>
									<img style="width:200px;height:180px" src="/images/course/no_image.jpg"/>
								</c:otherwise>
							</c:choose>
						<div><a  style="font-size:18px" href="/showDetail/${allCourse.courseId}">${allCourse.courseName}</a></div>
						<div style="color: #fbb710;font-size: 24px;margin-bottom:10px">${allCourse.price}元</div>
						
						
                                    
						<input type="hidden" name="courseId"
							value="${allCourse.courseId}"> <input type="submit"
							value="加入購物車" style="background-color:#fbb710;border:rgb(255, 255, 255);width:200px;height:50px;">

					
					</form>
			</div>
				</c:forEach>
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
							<a href="/"><img src="/amado-master/img/core-img/logo2.png"
								alt=""></a>
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
										<li class="nav-item active"><a class="nav-link" href="/">首頁</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/projects/showAllEntrusFront/1">專案</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/space.controller">場地租借</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/showAllProduct">課程</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/frontDesk">測驗</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/frontPage">論壇</a></li>
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
		var currentUser;
		//check user if logined
		$
				.ajax({
					type : "get",
					url : "/getCurrentUser.do",
					success : function(member) {
						//	logined: show user info //else show login button
						let htmlStr = null;
						if (member.length != 0) {
							currentUser = member;
							console.log(member.length)
							htmlStr = '<a href="/logout" class="btn amado-btn active">登出</a>'
									+ '<p class="userInfo" style="margin-bottom:0">使用者: '
									+ member.name
									+ '</p>'
									+ '<p class="userInfo" style="margin-bottom:0">最後登入時間: '
									+ member.lastLogin + '</p>';
							var memberpkStr = '<input style="width:50px" name="memberPk" value="'+member.memberPk+'"></input>';
							$('#div1').append(memberpkStr);
							if (member.permission == 1) {
								$('#memberCenterOrBs').attr('href',
										'/admin/showAllMember').text('前往後臺');
							}
						} else {
							htmlStr = '<a href="/login" class="btn amado-btn active">登入</a>';
						}
						$('#loginDiv').append(htmlStr)
					},
					error : function(member) {
						Swal.fire("response error");
					}
				});
	</script>

</body>

</html>