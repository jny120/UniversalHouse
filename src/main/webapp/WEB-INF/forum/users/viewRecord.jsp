<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>UniversalHouse | 閱覽紀錄</title>
<link rel="icon" href="/amado-master/img/core-img/logo.png">
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
.topicName{
   margin-bottom:55px;
   margin-right:20px;
}
.topicName li{
   float:left;
   margin-right:25px;
}

.topicName li a{
   font-size:22px;
}
.topicName li a:hover{
   color:#fbb710;
}

.topicName li input[type="submit"]:hover{
   color:#fbb710;
}
.articleInfo:hover p, .articleInfo:hover span,.articleInfo:hover h5 {
  color: #fbb710;
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
					<li><a href="/frontPage">論壇</a></li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100" id="loginDiv">
				<a href="/users/memberCenter" id="memberCenterOrBs"
					class="btn amado-btn mb-15">會員中心</a>


			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100">
				<a href="/users/showMemberInfo" class="cart-nav"><img
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

		<div class="cart-table-area" style="padding-top: 50px">
			<div class="container-fluid">
				
				<div class="row">
					<div class="col-12">
						<div class="checkout_details_area mt-50 clearfix">
							
							<div class="row" style="margin-left:100px">
								<form method="post" action="#">
									<input type="hidden" id="memberPk" name="memberPk"/>
									<ul class="topicName">
										<li><a href="/toBoard/1">回到論壇</a></li>
										<li>&nbsp;|</li>
										<li><input type="submit" style="background-color: transparent;border: none;text-align: inherit;font-size: inherit;cursor: pointer;transition: color 0.5s" formaction="/users/toUserArticle" value="我的文章"/></li>
										<li>&nbsp;|</li>
										<li><input type="submit" style="background-color: transparent;border: none;text-align: inherit;font-size: inherit;cursor: pointer;transition: color 0.5s;" formaction="/users/toUserFavorite" value="我的最愛"/></li>
										<li>&nbsp;|</li>
										<li><input type="submit" style="background-color: transparent;border: none;text-align: inherit;font-size: inherit;cursor: pointer;transition: color 0.5s;color:red" formaction="/users/toViewRecord" value="觀看紀錄"/></li>
										<li>&nbsp;|</li>
										<li><a href="/users/toNewArticle">新增文章</a></li>
									</ul>
								</form>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12">
						<div class="checkout_details_area mt-50 clearfix">

							<div class="cart-title">
								<h2 id="welcomeTitle" style="color:#fbb710"></h2>
							</div>
					

							<div class="row">
								<div class="col-12 mb-3" id="myArticle">
									<hr>
									<c:choose>
									   <c:when test="${empty viewRecord}">
									    	<h3>您還未有觀看紀錄!</h3>
									    </c:when>
									 	<c:otherwise>
											<c:forEach var="status" varStatus="stat" items="${viewRecord}">

												<div id="${stat.index}" style="background-color: #F5F5DC;height: 150px; margin-bottom: 20px;border-radius: 5px">
													
													<a class="articleInfo" href="/showArticle/${status.article.topicName}/${status.article.articleId}">
														<div style="display:inline;float:left"><img style="width: 150px; height: 150px" src="/getArticleCover?articleId=${status.article.articleId}" alt="cover" /></div>
		
														<div style="margin-left: 25px;margin-top: 25px;display:inline;float:left" onclick="window.location.href='/showArticle/${status.article.topicName}/${status.article.articleId}'">
															<h5 class="title"> ${status.article.topicName} | ${status.article.title}</h5>
															<span class="updateTime" style="font-size: 18px">${status.updateTime}</span><br>
															<span style="font-size: 16px;">觀看數 :${status.article.views}， 留言數 :${status.article.comments.size()}</span><br>
															<span style="font-size: 16px;">喜歡 : ${status.article.thumbUp}， 不喜歡 :${status.article.unlike}</span>
														</div>
													</a>
													<div style="float:right;margin-right:30px;margin-top:80px">
														<input type="button" class="btn" id="delete" name="${status.statusId}" style="background-color:#FF7575" value="刪除紀錄" />
													</div>
												</div>
		
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</div>
								<hr>
							</div>
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
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.js"></script>
	<script type="text/javascript">
	var currentUser;
	//check user if logined
	$.ajax({
		type : "get",
		url : "/getCurrentUser.do",
		success : function(member) {
			//	logined: show user info //else show login button
			let htmlStr = null;
			if (member.length != 0) {
				$('#memberPk').attr('value',member.memberPk);
				$('#welcomeTitle').html(member.name + ' 的觀看紀錄');
				currentUser = member;
				htmlStr = '<a href="/logout" class="btn amado-btn active">Logout</a>'
						+ '<p class="userInfo" style="margin-bottom:0">User: '
						+ member.name
						+ '</p>'
						+ '<p class="userInfo" style="margin-bottom:0">Last login time: '
						+ member.lastLogin + '</p>';

			} else {
				htmlStr = '<a href="/login" class="btn amado-btn active">Login</a>';
			}
			
			$('#loginDiv').append(htmlStr);
			
		},
		
		error : function(member) {
			alert("response error");
		}
		
	});

	$('#myArticle').on('click','#delete',function() {
		var thisButton = $(this);
		  $.ajax({
	        type : 'post',
	        url : '/deleteViewRecord',
	        data : {
	        	statusId : thisButton.attr('name'),
	        },
	        
	        success : function() {
	        	Swal.fire('刪除紀錄');
	        	thisButton.parent().parent().detach();
	        },
	        
	        error : function() {
	        	swal('失敗','紀錄更新發生錯誤','error');
	        },
		});
	});
	
	var elements = document.getElementsByClassName("updateTime");
	for (var i = 0; i < elements.length; i++) {
		var t = elements[i].innerHTML;
	    elements[i].innerHTML = t.replaceAll('-','/').slice(0,16);
	}
	
	</script>
</body>

</html>