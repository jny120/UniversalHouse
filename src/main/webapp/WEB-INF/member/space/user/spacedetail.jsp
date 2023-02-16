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
		<!-- <link rel="stylesheet" href="/amado-master/css/style.css"> -->
    
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
	.check {
		 display: inline-flex; 
		 vertical-align: middle;
		 color: red;
	}
	.parent_div {
	  display: flex;
	  flex-direction: row;
	  justify-content: space-evenly;
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

        <!-- Product Details Area Start -->
        <div class="single-product-area section-padding-100 clearfix">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mt-50">
                                <li class="breadcrumb-item"><a href="/">首頁</a></li>
                                <li class="breadcrumb-item"><a href="/space.controller">場地租借</a></li>
                                <li class="breadcrumb-item active" aria-current="page">場地資訊</li>
                            </ol>
                        </nav>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-lg-7">
                        <div class="single_product_thumb">
                            <div id="product_details_slider" class="carousel slide" data-ride="carousel">

                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                   		<c:choose>
			                                <c:when test="${book.pic.length() == 0}">
			                                   <img src="/amado-master/img/space-img/s.jpg" width="600px" height="420px">
			                                </c:when>
			                                <c:otherwise>
												<img class="d-block w-100" src="/spaceShowImg.controller/${book.spaceNo}" >
			                                </c:otherwise>
			                        	</c:choose>
                                    </div>
                                    <div style=height:10px></div>
                                    <div style="text-align:left;font-size:14px;color: #9b9b9b;letter-spacing: 0.7px;"><img src="/amado-master/img/space-img/pin.png" width="20px" alt="123">台灣>${book.city}>${book.address}</div>
                                    <hr>
                                    <div class="parent_div">
                                    
	                                    <div class="accommodate_icon">
	                                    	<div style="text-align:center"><img src="/amado-master/img/space-img/group.png" width="55px" alt="123"></div>
	                                    	<div>可容納 ${book.accommodate} 人</div>
	                                    </div>
	                                    
	                                     <div class="facility_icon" style="flex:left">
	                                     	<div style="font-size:18px">設備與服務</div><br>
	                                     	<div>
			                                  	<p>
			                                  	<img src="/amado-master/img/space-img/check.png" width="20px" alt="123"> ${facility[0]} &nbsp
			                                  	<img src="/amado-master/img/space-img/check.png" width="20px" alt="123"> ${facility[1]} &nbsp
			                                  	<img src="/amado-master/img/space-img/check.png" width="20px" alt="123"> ${facility[2]} &nbsp
			                                  	<img src="/amado-master/img/space-img/check.png" width="20px" alt="123"> ${facility[3]} &nbsp
			                                  	<img src="/amado-master/img/space-img/check.png" width="20px" alt="123"> ${facility[4]} &nbsp
			                                  	</p>
	                                     	</div>
	                                    	
	                                    </div>
                                    
                                    </div>
                                    
                                    <hr>
                                    <br>
                                    <iframe width="630" height="300" frameborder="0" scrolling="no" marginheight="5" marginwidth="5" src=https://maps.google.com.tw/maps?f=q&hl=zh-TW&geocode=&q=${book.address}&z=14&output=embed&t=></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-5">
          		    <div style="border: 1px solid rgb(221, 221, 221); border-radius: 12px; padding: 24px; box-shadow: rgba(0, 0, 0, 0.12) 0px 6px 16px;">
                        <div class="single_product_desc">
                            <!-- Product Meta Data -->
                            <div class="product-meta-data">
                                <div class="line"></div>
                                <p class="product-price" >$${book.price }</p>
                                <a href="product-details.html">
                                    <h6>${book.spaceName}</h6>
                                </a>
                                <!-- Ratings & Review -->
                                <div class="ratings-review mb-15 d-flex align-items-center justify-content-between">
                                    <div class="ratings">
                                    </div>
                                    <div class="review">
										<p class="avaibility"><i class="fa fa-circle"></i>開放使用</p>
                                    </div>
                                </div>
                                <!-- Avaiable -->
                                <p>
                                <img src="/amado-master/img/space-img/tel.png" width="20px" alt="123">&nbsp${book.phone}<br><img src="/amado-master/img/space-img/mail.png" width="20px" alt="123">&nbsp${book.email}
                                </p>
                            </div>

                            <div class="short_overview my-5" style="width:330px">
                                <p>${book.intro}</p>
                            </div>
							<hr>
							<div style="height:10px"></div>
                            <!-- Add to Cart Form-->
                            <form action="/users/spacecheckorder.controller" class="cart clearfix" method="post">
                                <div class="cart-btn d-flex mb-50" >
                                	<span class="check"><img src="/amado-master/img/space-img/edit.png" width="45px" alt="123">&nbsp <input id="playchu" class="okplaychu" type="date" name="orderDate" style="height:40px; width: 250px" placeholder="預訂日期"  required>${errors.check}</span>
                                </div>
                                <div style="display: block;margin: 0 auto;text-align: center;">
                                	<button type="submit" class=" btn amado-btn">確認並付款</button>
                                </div>
                            </form>
                   
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Details Area End -->
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
    
    <script type="text/javascript">
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
	
    $(document).ready(function() {
        var today = new Date().toISOString().split('T')[0]; // 獲取今天日期
        $('#playchu').attr('min', today); // 設置最小值
      });
    </script>
    

</body>

</html>