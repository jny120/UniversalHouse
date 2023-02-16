<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>UniversalHouse | 論壇文章總覽</title>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<link rel="icon" href="/amado-master/img/core-img/logo.png">
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

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

.topicName {
	margin-bottom: 55px;
	margin-right: 20px;
}

.topicName li {
	float: left;
	margin-right: 25px;
}

.topicName li a {
	font-size: 22px;
}

.topicName li a:hover {
	color: #fbb710;
}

.aList .aInfo{
	color: black;
	transition: 0.2s;
}

.aList:hover .aInfo{
	color: #fbb710;
}

.listStyle{
	color: grey;
}

.listStyle:hover{
	color: blue;
}

.headTitle{
	transition: 0.2s;
}

.headTitle:hover{
	color: #fbb710;
}

</style>

</head>

<body>

	<div class="search-wrapper section-padding-100">

		<div class="search-close">
			<i class="fa fa-close" aria-hidden="true"></i>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="search-content">
						<form action="/" method="post">
							<input type="search" placeholder="search">
							<button type="submit">
								<img src="/amado-master/img/core-img/search.png" alt="">
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="main-content-wrapper d-flex clearfix">

		<div class="mobile-nav">
			<div class="amado-navbar-brand">
				<a href="/"><img src="/amado-master/css/core-style.css" alt=""></a>
			</div>
			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>

		<header class="header-area clearfix">
			<div class="nav-close"><i class="fa fa-close" aria-hidden="true"></i></div>
			
			<div class="logo">
				<a href="/"><img src="/amado-master/img/core-img/logo.png" alt=""></a>
			</div>

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

			<div class="amado-btn-group mt-30 mb-100" id="loginDiv">
				<a href="/users/memberCenter" id="memberCenterOrBs"
					class="btn amado-btn mb-15">會員中心</a>
			</div>

			<div class="cart-fav-search mb-100">
				<a href="/users/showMemberInfo" class="cart-nav"><img src="/amado-master/img/core-img/cart.png" alt="">購物車 </a> 
				<a href="#" class="fav-nav"><img src="/amado-master/img/core-img/favorites.png" alt="">我的最愛</a> 
				<a href="#" class="search-nav"><img src="/amado-master/img/core-img/search.png" alt="">搜尋</a>
			</div>

			<div class="social-info d-flex justify-content-between">
				<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> 
				<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a> 
				<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> 
				<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
			</div>
		</header>

		<div class="cart-table-area" style="padding-top: 50px;padding-bottom: 100px">
			<div class="container-fluid">
				<div class="row">
					<div class="col-9">
						<div class="checkout_details_area mt-50 clearfix">

							<div class="row" style="margin-left: 40px">
								<ul class="topicName">
									<li><a href="/toBoard/1">總覽</a></li>
									<li>&nbsp;|</li>
									<li><a href="/toBoard/生活/1">生活</a></li>
									<li>&nbsp;|</li>
									<li><a href="/toBoard/設計/1">設計</a></li>
									<li>&nbsp;|</li>
									<li><a href="/toBoard/影視/1">影視</a></li>
									<li>&nbsp;|</li>
									<li><a href="/toBoard/資訊/1">資訊</a></li>
									<li>&nbsp;|</li>
									<li><a href="/toBoard/顧問/1">顧問</a></li>
									<li>&nbsp;|</li>
									<li><a href="/toBoard/文書/1">文書</a></li>
								</ul>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div style="margin-bottom: 50px">
										<div style="display: inline; float: left">
											<h3 class="thisBoard" style="color: #fbb710;">最新</h3>
										</div>
										<div
											style="display: inline; float: right; margin-right: 10px; margin-top: 10px">
											<div>
												<form action="/toBoard/searchResult/1" method="post">
													<input type="search" name="search" id="search" style="border-radius: 15px" placeholder="  標題...">&nbsp;&nbsp;
													<input type="submit" class="btn" />
												</form>
											</div>
										</div>
									</div>
									<hr>
									<ul>
										<c:forEach var="article" varStatus="stat" items="${articles}">
											<li class="aList" style="margin-bottom: 30px; margin-top: 20px">
												<a href="/showArticle/${article.topicName}/${article.articleId}">
													
													<div class="aInfo">
														<span style="margin-left: 15px; margin-right: 15px; float: left"><img style="width: 160px; height: 100px;" src="/getArticleCover?articleId=${article.articleId}" alt="cover" /></span> 
														<span style="color:grey;margin-bottom: 10px; font-size: 14px">${article.topicName}</span><br>
														<span style="font-size: 22px" class="aTitle">${article.title}</span><br>
														<span style="font-size: 16px">${article.member.name}</span>
													</div>
													
													<div style="float: right">
														<span style="padding-right: 25px;width:200px"><i style="color: #fbb710; font-size: 20px" class="bi bi-hand-thumbs-up-fill"></i>&nbsp;${article.thumbUp}</span>
														<span style="padding-right: 25px;width:200px"><i style="color: #fbb710; font-size: 20px" class="bi bi-eye-fill"></i>&nbsp;${article.views}</span> 
														<span style="padding-right: 25px;width:200px"><i style="color: #fbb710; font-size: 20px" class="bi bi-chat-left-dots-fill"></i>&nbsp;${article.comments.size()}</span>
														<span class="time">${article.updateTime}</span>
													</div>
												</a>
											</li>
											<hr>
										</c:forEach>
									</ul>
									<div class="col-12">
										<ul class="pagination justify-content-end mt-50">
											<c:forEach var="i" begin="1" end="${totalPages}" step="1">
												<li class="page-item"><a class="page-link" href="${i}">${i}</a></li>
											</c:forEach>
											<li style="text-align: center; padding: 10px; font-size: 10px">${nowPage}/${totalPages}</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-3">
						<div id="notLogin" style="margin-top: 40px"></div>
						<div id="alreadyLogin" style="margin-top:40px">
							<form method="post" action="#">
								<input type="hidden" id="memberPk" name="memberPk" /> 
								<input type="submit" style="display: inline; margin: 6px;width:220px" class="btn" formaction="/users/toNewArticle" value="新增文章" /> 
								<input type="submit" style="float: left; display: inline;margin: 6px;margin-top:5px;width:220px" class="btn" formaction="/users/toUserArticle" value="我的專區" />
							</form>
						</div>

						<div style="margin-top: 60px" class="cart-summary">
							<h4 style="margin-bottom: 30px"><span style="color:red">${topicName}</span> &nbsp;熱門</h4>

							<a href="/showArticle/${topViewArticles[0].topicName}/${topViewArticles[0].articleId}">
								<span><img style="width: 350px;height: 180px" src="/getArticleCover?articleId=${topViewArticles[0].articleId}" alt="cover" /></span>
								<div style="margin-top: 15px"><span class="headTitle" style="font-size: 18px">${topViewArticles[0].title}</span></div>
							</a>
							
							<hr>
							
							<ul style="padding-left: 15px">
								<c:forEach var="article" varStatus="stat" begin="1" end="5" items="${topViewArticles}">
									<li style="list-style-type: disc; font-size: 10px">
										<a href="/showArticle/${article.topicName}/${article.articleId}">
											<span class="listStyle" style="font-size: 16px">${article.title}</span>
										</a>
									</li>
								</c:forEach>
							</ul>
						</div>

						<div style="margin-top: 40px; margin-bottom: 30px" class="cart-summary">
							<h4 style="margin-bottom: 30px"><span style="color:red">${topicName}</span> &nbsp;最讚</h4>

							<a href="/showArticle/${likeArticles[0].topicName}/${likeArticles[0].articleId}">
								<span><img style="width: 350px;height: 180px" src="/getArticleCover?articleId=${likeArticles[0].articleId}" alt="cover" /></span>
								<div style="margin-top: 15px"><span class="headTitle" style="font-size: 18px">${likeArticles[0].title}</span></div>
							</a>
							<hr>
							<ul style="padding-left: 15px">
								<c:forEach var="article" varStatus="stat" begin="1" end="5" items="${likeArticles}">
									<li style="list-style-type: disc; font-size: 10px">
										<a href="/showArticle/${article.topicName}/${article.articleId}">
										<span class="listStyle" style="font-size: 16px">${article.title}</span></a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer_area clearfix">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-12 col-lg-4">
					<div class="single_widget_area">
						<div class="footer-logo mr-50">
							<a href="/"><img src="/amado-master/img/core-img/logo2.png" alt=""></a>
						</div>
					</div>
				</div>
				
				<div class="col-12 col-lg-8">
					<div class="single_widget_area">
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
										<li class="nav-item"><a class="nav-link" href="/projects/showAllEntrusFront/1">專案</a></li>
										<li class="nav-item"><a class="nav-link" href="/space.controller">場地租借</a></li>
										<li class="nav-item"><a class="nav-link" href="/showAllProduct">課程</a></li>
										<li class="nav-item"><a class="nav-link" href="/frontDesk">測驗</a></li>
										<li class="nav-item"><a class="nav-link" href="/frontPage">論壇</a></li>
									</ul>
								</div>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<script src="/amado-master/js/jquery/jquery-2.2.4.min.js"></script>
	<script src="/amado-master/js/popper.min.js"></script>
	<script src="/amado-master/js/bootstrap.min.js"></script>
	<script src="/amado-master/js/plugins.js"></script>
	<script src="/amado-master/js/active.js"></script>
	<script type="text/javascript">
	
		$(function() {
			var currentUser;
			//check user if logined
			$.ajax({
				type : "get",
				url : "/getCurrentUser.do",
				success : function(member) {
					//	logined: show user info //else show login button
					let htmlStr = null;
					if (member.length != 0) {
						$('#notLogin').hide();
						currentUser = member;

						htmlStr = '<a href="/logout" class="btn amado-btn active">Logout</a>'
								+ '<p class="userInfo" style="margin-bottom:0">User: '
								+ member.name
								+ '</p>'
								+ '<p class="userInfo" style="margin-bottom:0">Last login time: '
								+ member.lastLogin + '</p>';

					} else {
						$('#notLogin')
								.append(
										'<a href="/login" style="display: flex;justify-content: center;align-items: center;" class="btn amado-btn mb-15">登入以進入屬於您的萬事屋!</a>');
						$('#alreadyLogin').hide();
						htmlStr = '<a href="/login" class="btn amado-btn active">Login</a>';
					}
					$('#loginDiv').append(htmlStr)
					$('#memberPk').attr('value', member.memberPk);
				},
				error : function(member) {
					Swal.fire("response error");
				}
			});

			var elements = document.getElementsByClassName("time");
			for (var i = 0; i < elements.length; i++) {
				var t = elements[i].innerHTML;
				elements[i].innerHTML = t.replaceAll('-', '/').slice(5, 16);
			}

			var topicName = "${topicName}";
			if (topicName != "") {
				$("ul.topicName li a").parent().siblings().eq(0).children()
						.attr('style', '');
			} else {
				$("ul.topicName li a").parent().siblings().eq(0).children()
						.attr('style', 'color:red');
			}
			$("ul.topicName li a").each(function() {
				if ($(this).text() === topicName) {
					$(this).attr("style", "color:red");

				}
			});

		});
	</script>
</body>

</html>