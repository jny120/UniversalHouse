<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
        <title>UniversalHouse | Home</title>
		
    <!-- Favicon  -->
		<link rel="icon" href="/amado-master/img/core-img/logo.png">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/amado-master/css/core-style.css">
<!--     <link rel="stylesheet" href="/amado-master/css/style.css"> -->
    
    <style type="text/css">
  	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap');

	body {
		font-family: 'Noto Sans TC', sans-serif;
		font-size: 20px;
	}

	.main-content-wrapper .header-area .amado-nav li a {
		font-family: 'Noto Sans TC', sans-serif;
		font-size: 20px;
	}

	.footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link {
		font-size: 20px;
	}
    .product-img {
    	opacity:0.8;
    }
    .product-img:hover {
    	opacity:1;
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
								<input type="search" name="search" id="search" placeholder="Type your keyword...">
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
					<a href="/"><img src="/amado-master/img/core-img/logo.png" alt=""></a>
				</div>
				<!-- Amado Nav -->
				<!-- 左列 -->
				<nav class="amado-nav">
					<ul>
						<li class="nav-item active"><a class="nav-link" href="/">首頁</a></li>
						<li class="nav-item"><a class="nav-link" href="/projects/showAllEntrusFront/1">專案</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/space.controller">場地租借</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/showAllProduct">課程</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/frontDesk">測驗</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/frontPage">論壇</a>
						</li>
					</ul>
				</nav>
				<!-- Button Group -->
				<div class="amado-btn-group mt-30 mb-100" id="loginDiv">
					<a href="/users/memberCenter" id="memberCenterOrBs" class="btn amado-btn mb-15">會員中心</a>
				</div>
				<!-- Cart Menu -->
				<div class="cart-fav-search mb-100">

					<a href="/users/chatBox" class="cart-nav"><img src="/images/member/chat2.png" style="width:21px"
							alt="">聊天室
					</a>
					<a href="/users/showMemberInfo" class="cart-nav"><img src="/amado-master/img/core-img/cart.png"
							alt="">購物車
					</a>
					<a href="#" class="fav-nav"><img src="/amado-master/img/core-img/favorites.png" alt="">我的最愛</a>
					<a href="#" class="search-nav"><img src="/amado-master/img/core-img/search.png" alt="">搜尋</a>
				</div>
				<!-- Social Button -->
				<div class="social-info d-flex justify-content-between">
					<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a href="#"><i
							class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-facebook"
							aria-hidden="true"></i></a> <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
				</div>
			</header>
        <!-- Header Area End -->

        <div class="shop_sidebar_area">

            <!-- ##### Single Widget ##### -->
            <div class="widget catagory mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">類型篩選</h6>

                <!--  Catagories  class="active"-->
                <div class="catagories-menu">
                    <ul>
                        <li><a id="mediaBtn" href="#">多媒體<br>Media</a></li>
                        <li><a id="multifunctionBtn" href="#">多功能<br>Multifunction</a></li>
                        <li><a id="cookedBtn" href="#">烹飪教室<br>Cooked</a></li>
                        <li><a id="businessBtn" href="#">商務會議<br>Business</a></li>
                        <li><a id="showallBtn" href="space.controller"><b>取消篩選<br></b></a></li>
                    </ul>
                </div>
            </div>
                        <form id="form1" action="/readbytype.controller" method="post">
                        	<input type="hidden" name="spaceType" value="多媒體">
                        </form>
                        <form id="form2" action="/readbytype.controller" method="post">
                        	<input type="hidden" name="spaceType" value="多功能">
                        </form>
                        <form id="form3" action="/readbytype.controller" method="post">
                        	<input type="hidden" name="spaceType" value="烹飪教室">
                        </form>
                        <form id="form5" action="/readbytype.controller" method="post">
                        	<input type="hidden" name="spaceType" value="商務會議">
                        </form>

            <!-- ##### Single Widget ##### -->
            <div class="widget brands mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">所在縣市</h6>

                <div class="widget-desc">
                    <!-- Single Form Check -->
                    <div class="form-check">
                        <input id="taipeiCb" class="form-check-input" type="checkbox" value="台北市" id="amado">
                        <label class="form-check-label" for="amado">台北市<br>Taipei</label>
                    </div>
                    <!-- Single Form Check -->
                    <div class="form-check">
                        <input id="newtaipeiCb" class="form-check-input" type="checkbox" value="新北市" id="ikea">
                        <label class="form-check-label" for="ikea">新北市<br>NewTaipei</label>
                    </div>
                    <!-- Single Form Check -->
                    <div class="form-check">
                        <input id="toayuanCb" class="form-check-input" type="checkbox" value="桃園市" id="furniture">
                        <label class="form-check-label" for="furniture">桃園市<br>Taoyuan</label>
                    </div>
                    <!-- Single Form Check -->
                    <div class="form-check">
                        <input id="hsingchuCb" class="form-check-input" type="checkbox" value="新竹市" id="factory">
                        <label class="form-check-label" for="factory">新竹市<br>Hsinchu</label>
                    </div>
                </div>
            </div>
 
            <div class="widget price mb-50">
                <!-- Widget Title -->

                <div class="widget-desc">
                    <div class="slider-range">
                    </div>
                </div>
            </div>
        </div>

        <div class="amado_product_area section-padding-100">
            <div class="container-fluid">

                <div class="row">
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
                            </div>
                        </div>
                    </div>
                </div>

                <div id="displayDiv" class="row">

<!-- start -->      <!-- Single Product Area -->
                    <c:forEach var="spaces" items="${spaces}">
                    <div class="col-12 col-sm-6 col-md-12 col-xl-6">
                   		 <div class="single-product-wrapper">
                            <!-- Product Image -->
                            <div class="product-img">
												<c:choose>
					                                <c:when test="${spaces.pic.length() == 0}">
					                                	<a href="spacedetail.controller/${spaces.spaceNo}">
					                                   <img src="/amado-master/img/space-img/s.jpg" width="200px" height="140px">
					                                   </a>
					                                </c:when>
					                                <c:otherwise>
					                                	<a href="spacedetail.controller/${spaces.spaceNo}">
														<img src="spaceShowImg.controller/${spaces.spaceNo}" width="200px" height="140px">
														</a>
					                                </c:otherwise>
					                        	</c:choose>                               
                            </div>

                            <!-- Product Description -->
                            <div class="product-description d-flex align-items-center justify-content-between">
                                <!-- Product Meta Data -->
                                <div class="product-meta-data">
                                    <div class="line"></div>
                                    <p class="product-price">${spaces.spaceName}</p>
                                    <a href="spacedetail.controller/${spaces.spaceNo}">
                                        <h6 style="color:#9b9b9b;"><img src="/amado-master/img/space-img/tag.png" width="18px" >&nbsp${spaces.spaceType}</h6>
                                    </a>
                                </div>
                                <!-- Ratings & Cart -->
                                <div class="ratings-cart text-right">
                                    <div class="ratings">
                                    	<h6>$${spaces.price} TWD / 日</h6>
                                    </div>
                                    <div class="cart">
                                        <a href="spacedetail.controller/${spaces.spaceNo}" data-toggle="tooltip" data-placement="left" title="Add to Cart"><img src="/amado-master/img/core-img/cart.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>

                <div class="row">
                    <div class="col-12">
                    
                        <!-- Pagination -->
                        <nav aria-label="navigation">
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
								<a href="/"><img src="/amado-master/img/core-img/logo2.png" alt=""></a>
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
											<li class="nav-item active"><a class="nav-link" href="/">首頁</a></li>
											<li class="nav-item"><a class="nav-link"
													href="/projects/showAllEntrusFront/1">專案</a>
											</li>
											<li class="nav-item"><a class="nav-link" href="/space.controller">場地租借</a>
											</li>
											<li class="nav-item"><a class="nav-link" href="/showAllProduct">課程</a>
											</li>
											<li class="nav-item"><a class="nav-link" href="/frontDesk">測驗</a>
											</li>
											<li class="nav-item"><a class="nav-link" href="/frontPage">論壇</a>
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
    <script src="/amado-master/js/moment.js"></script>
    <script>
    var currentUser;
	//check user if logined
	$.ajax({
		type: "get",
		url: "/getCurrentUser.do",
		success: function (member) {
			//	logined: show user info //else show login button
			let htmlStr = null;
			if (member.length != 0) {
				currentUser = member;
				console.log(member.length)
				htmlStr =
					'<a href="/logout" class="btn amado-btn active">登出</a>' +
					'<p class="userInfo" style="margin-bottom:0">使用者: ' + member.name + '</p>' +
					'<p class="userInfo" style="margin-bottom:0">最後登入時間: ' + moment(member.lastLogin).format('YYYY/MM/DD h:mm a') + '</p>';
				if (member.permission == 1) {
					$('#memberCenterOrBs').attr('href', '/admin/showAllMember').text('前往後臺');
				}
			} else {
				htmlStr = '<a href="/login" class="btn amado-btn active">登入</a>';
			}
			$('#loginDiv').append(htmlStr)
		},
		error: function (member) {
			Swal.fire("response error");
		}
	});	
	
	$(function () {
        $('#mediaBtn').on('click', function (e) {
            e.preventDefault();
            console.log("==================");
            $('#form1').submit();
        });
        $('#multifunctionBtn').on('click', function (e) {
            e.preventDefault();
            console.log("==================");
            $('#form2').submit();
        });
        $('#cookedBtn').on('click', function (e) {
            e.preventDefault();
            console.log("==================");
            $('#form3').submit();
        });
        $('#livehouseBtn').on('click', function (e) {
            e.preventDefault();
            console.log("==================");
            $('#form4').submit();
        });
        $('#businessBtn').on('click', function (e) {
            e.preventDefault();
            console.log("==================");
            $('#form5').submit();
        });
    });
    
    
    
    
    </script>
    








</body>

</html>