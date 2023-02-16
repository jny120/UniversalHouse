<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="/amado-master/css/style.css">
    <link rel="stylesheet" href="../amado-master/css/halflings.css">
    <link rel="stylesheet" href="../amado-master/css/glyphicons.css">
  
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
	
	a {
	 font-size: 16px;
	  cursor: pointer;
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
                <a href="index.html"><img src="/amado-master/img/core-img/logo.png" alt=""></a>
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

        <div class="single-product-area cart-table-area section-padding-100 clearfix">
            <div class="container-fluid">
            
            	<div class="row">
                    <div class="col-12">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mt-50">
                                <li class="breadcrumb-item"><a href="/">首頁</a></li>
                                <li class="breadcrumb-item"><a href="/space.controller">場地租借</a></li>
                                <li class="breadcrumb-item"><a onclick="history.go(-1)">場地資訊</a></li>
                                <li class="breadcrumb-item active" aria-current="page">確認並付款</li>
                            </ol>
                        </nav>
                    </div>
                </div>
                
               <form action="/spaceorderinsert.controller" method="post">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title"> 
                                <h2><b>確認並付款</b></h2>
                            </div>
                            <hr>
                            <div class="cart-title"> 
                                <h4><b>你的場地</b></h4>
                            </div>
							<div><br></div>                       
                            <div class="col-12">
                            	<div style="width:200px">
		                            <b>場地名稱</b>
                            	</div>
                            	<div style="width:200px">
                          			<P>${book.spaceName}</P>
                            	</div>
                            </div>
                            <div style="overflow: auto;" class="col-12">
                            	<div style="float: left;">
	                            	<div>
			                            <b>日期</b>
	                            	</div>
	                            	<div>
	                          			<P>${stringDate}</P>
	                            	</div>
                            	</div>
                            	<div style="float: right;text-align: right;text-decoration: underline;">
                            	<a onclick="history.go(-1)">編輯</a>
                            	</div>
                            </div>

                            	<hr>
                                <div class="row">
                                    <div><hr></div>
                                    <div class="col-md-6 mb-3">
                                        <input type="text" name="cPerson" class="form-control" id="cPerson" placeholder="預訂聯絡人" autofocus required>
                                    	${errors.cPerson}
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <input type="text" name="contact" class="form-control" id="contact" placeholder="連絡電話" required>
                                    	${errors.contact}
                                    </div>
                                    <div class="col-12 mb-3">
                                        <textarea name="remarks" class="form-control w-100" id="remarks" cols="30" rows="10"  placeholder="留下您的訂單備註"></textarea>
                                    </div>

                                </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h4><b>訂單詳情</b></h4>
                            <p style="color: grey;font-size: small;" >Universal House 為您的預訂提供保障</p>
                            <hr>
                            <ul class="summary-table">
                                <li><span>小計:</span> <span>$${book.price}</span></li>
                                <li><span>優惠券:</span><input type="text" style="width:160px" placeholder="輸入優惠碼"/><input type="submit" value="送出" /></span></li>	
                                <li><span>總計:</span> <span>$${book.price}</span></li>
                            </ul>
                            <div class="payment-method">
                                <!-- Cash on delivery2-->
                                <div>
							      <input type="radio" id="payment" name="payment" value="現金">
							      <label for="cash">現場繳納現金</label>
							    </div>
                                <!-- Paypal -->
							    <div>
							      <input type="radio" id="payment" name="payment" value="信用卡">
							      <label for="card">信用卡支付 <img class="ml-15" src="/amado-master/img/core-img/paypal.png" alt=""></label>
							    </div>
							    <p style="color:red">${errors.payment}</p>
                            </div>

                            <div>
                            	<input  type="submit" class="cart-btn btn amado-btn w-100"  value="完成預訂" >
<!--                                 <a href="spaceorderinsert.controller" class="btn amado-btn w-100"></a> -->
                            </div>
                        </div>
                    </div>
                </div>
              </form>
                
            </div>
<!-- 快速填入 -->            
        	 <div class="col-12 mb-3">
               <input type="submit" id="oneshot" value="快速填入">
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
		
		$(document).ready(function(){
			$('#oneshot').click(function(){
				$('#cPerson').val('連若仁');
				$('#contact').val('0934-217-564');
				$('#remarks').val('洗手間需要清理乾淨，麻煩先將音訊設備測試OK，謝謝!')
			})
		});
		
		$(document).ready(function(){
			$('#oneshot').click(function(){
				$('#cPerson').val('連若仁');
				$('#contact').val('0934-217-564');
				$('#remarks').val('洗手間需要清理乾淨，麻煩先將音訊設備測試OK，謝謝!')
			})
		});
		
		


	</script>
    

</body>

</html>