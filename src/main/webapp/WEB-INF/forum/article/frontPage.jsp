<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>論壇區</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/favicon.ico">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

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
                <a href="/"><img src="/amado-master/img/core-img/logo.png" alt=""></a>
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
            <nav class="amado-nav">
                <ul>
                   	<li><a href="/">Home</a></li>
					<li><a href="/">Project</a></li>
					<li><a href="/">Space Rental</a></li>
					<li><a href="/">Course</a></li>
					<li><a href="/">Test</a></li>
					<li><a href="/frontPage">Forum</a></li>
                </ul>
            </nav>
            <!-- Button Group -->
            <div class="amado-btn-group mt-30 mb-100">
				<a href="createArticle" class="btn amado-btn mb-15">新增文章</a>
<!--                 <a href="forumBackstage" class="btn amado-btn mb-15">Backstage</a> -->
            </div>
            <!-- Cart Menu -->
            
            <!-- Social Button -->
            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </header>
        <!-- Header Area End -->

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title">
                                <h2 style='font-family:"微軟正黑體" '>歡迎來到論壇</h2>
                            </div>

                            
                                <div class="row">
                                    <div id="articleList" class="col-md-12 mb-3">
											
										<c:forEach var="article" varStatus="stat" items="${articles}">
											
											<div id="view" style="margin-right:50px;margin-bottom:200px">
												
												<a id="${article.articleId}" href="showArticle?articleId=${article.articleId}">
													
													<img style="margin-right:30px;width:300px;height:300px ;float:left" src="getArticleCover?articleId=${article.articleId}" alt="cover" />
													
													<div id="articleInfo">
														<div class="line"></div>
														<p style="color:grey">${article.topicName}</p>
														<h4 style="color:#696969">${article.title}</h4>
													</div>
													
													<div id="author">
														<p>${article.member.name}</p>
														<p id="time">${article.updateTime}</p>
													</div>
												</a>
							
											</div>
											<hr>
										</c:forEach>
                                    </div>
                                </div>

                        </div>
                    </div>
                    <div class="col-12 col-lg-3">
                        <div class="cart-summary">
                            <h3>熱門文章</h3>
	                        <a href="showArticle?articleId=${topViewArticle[0].articleId}">
	                            <h4 style="color:red">#1 </h4>
	                            <img style="width:300px" src="getArticleCover?articleId=${topViewArticle[0].articleId}" alt="cover" />
	                            <div><p>${topViewArticle[0].title}</p></div>
	                            <div><p>by : ${topViewArticle[0].member.name}</p></div>
	                            <i class="bi bi-eye-fill" style="color:fbb710" ></i>&nbsp;${topViewArticle[0].views}
	                        </a>
                        </div>
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
                            <a href="index.html"><img src="/amado-master/img/core-img/logo2.png" alt=""></a>
                        </div>
                        <!-- Copywrite Text -->
                    </div>
                </div>
                <!-- Single Widget Area -->
                <div class="col-12 col-lg-8">
                    <div class="single_widget_area">
                        <!-- Footer Menu -->
                        <div class="footer_menu">
                            <nav class="navbar navbar-expand-lg justify-content-end">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent" aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                                <div class="collapse navbar-collapse" id="footerNavContent">
                                    <ul class="navbar-nav ml-auto">
                                        <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
                                        <li class="nav-item"><a class="nav-link" href="/">Project</a></li>
                                        <li class="nav-item"><a class="nav-link" href="/">Course</a></li>
                                        <li class="nav-item"><a class="nav-link" href="/">Space Rental</a></li>
                                        <li class="nav-item"><a class="nav-link" href="/">Test</a></li>
                                        <li class="nav-item"><a class="nav-link" href="frontPage">Forum</a></li>
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
	
	window.onload = function() {
		
		$('#time').text($('#time').text().slice(0,16));
		
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
						'<a href="createArticle" class="btn amado-btn mb-15">新增文章</a>' +
						'<a href="/logout" class="btn amado-btn active">Logout</a>' +
						'<p class="userInfo" style="margin-bottom:0">User: ' + member.name + '</p>' +
						'<p class="userInfo" style="margin-bottom:0">Last login time: ' + member.lastLogin + '</p>';

				} else {
					htmlStr = '<a href="/login" class="btn amado-btn active">Login</a>';
				}
				$('#loginDiv').append(htmlStr)
			},
			error: function (member) {
				Swal.fire("response error");
			}
		});
		
	}
	
	$('#articleList').on('click','#view',function() {
		$.ajax({
			type : "post",
			url : "updateViews",
			data : {

				articleId : $(this).children('a').attr('id'),
			},
	
			success : function() {
				console.log('觀看次數+1');
	
			},
	
			error : function() {
				console.log('觀看次數新增失敗');
			},
		});
	
	})
	</script>
</body>

</html>