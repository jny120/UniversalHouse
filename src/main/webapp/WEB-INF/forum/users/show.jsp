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
<title>UniversalHouse | 文章</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/logo.png">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://www.line-website.com/social-plugins/js/thirdparty/loader.min.js" async="async" defer="defer"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">LineIt.loadButton();</script>
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

.replyId0 {
	background-color:#F0F8FF;
	padding-top:10px;
	padding-bottom:10px;
	padding-left:5px;
	padding-right:10px;
	margin-top: 15px;
}

.replyForm0 {
	margin-left: 30px;
	margin-top: 10px;
	padding-bottom : 4px;
}

.viewReply0 {
	border: 3px solid #C4E1FF;
	border-right:none;
	border-top:none;
	border-bottom:none;
	margin-top: 10px;
	margin-left: 88px;
}

.eachReply0 {
	border: 3px solid #C4E1FF;
	border-right:none;
	margin-left : 50px;
	border-top:none;
	border-bottom:none;
	padding-top: 10px;
	padding-bottom: 10px;
}

.eachReply {
	border-right:none;
	border-top:none;
	border-bottom:none;
	padding-left:30px;
	padding-bottom:10px;
	padding-top:10px;
}

.replyForm {
	background-color:#C4E1FF;
	border-raduis:5px;
	border-right:none;
	border-top:none;
	border-bottom:none;
	padding-left:30px;
	padding-bottom:10px;
}

.reply {
	border: 3px solid #C4E1FF;
	border-right:none;
	border-top:none;
	border-bottom:none;
	margin-left: 58px;
	margin-top: 10px;
	margin-bottom: 0px;
}

.viewReply {
	border: 3px solid #97CBFF;
	border-right:none;
	border-top:none;
	border-bottom:none;
	margin-top: 10px;
	margin-left: 60px;
}

.deleteInfo{
	color:grey;
	margin-top:3px;/
	padding:5px;
	font-size:10px;
	
}

#viewComment p {
	color:black;
}

#delete{
	background-color:#FF7575;
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


		<!-- Product Details Area Start -->
		<div class="single-product-area clearfix" style="padding-top: 50px;padding-bottom: 100px">
			<div class="container-fluid">
				<div class="row">
					<div class="col-9">
						<div class="checkout_details_area mt-50 clearfix">

							<div class="row">
								<div class="col-12" style="margin-left: 40px">
									<ul class="topicName">
										<li><a href="/toBoard/1">最新</a></li>
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
							</div>

							<div class="row">
								<div class="col-12">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="/toBoard/1">首頁</a></li>
											<li class="breadcrumb-item"><a
												href="/toBoard/${article.topicName}/1">${article.topicName}</a></li>
											<li class="breadcrumb-item active" aria-current="page" style="color:#fbb710">${article.title}</li>
										</ol>
									</nav>
								</div>
								<div class="col-12">
									<div class="carousel-item active" style="margin-bottom: 50px;">
										<img class="d-block w-100"
											src="/getArticleCover?articleId=${article.articleId}"
											alt="cover">
									</div>

									<div class="single_product_desc">
										<!-- Product Meta Data -->
										<div class="product-meta-data">
											<div class="line"></div>
											<p class="product-price">${article.topicName}</p>

											<h3>${article.title}</h3>

											<div style="margin-bottom: 200px">

												<div id="author"
													style="float: left; margin-bottom: 30px; margin-top: 30px">
													<img height="100" width="100"
														style="float: left; border-radius: 50%; margin-right: 20px"
														src="/getMemberImage?memberPk=${article.member.memberPk}" />
												</div>

												<div style="padding-top: 40px; float: left">
													<p style="margin-bottom: 0">by ${article.member.name}</p>
													<p style="margin-bottom: 0" id="articleTime">${article.updateTime}</p>
													<p>
														<i class="bi bi-eye-fill" style="color: fbb710"></i>&nbsp;${article.views}
													</p>
												</div>

												<div
													style="float: right; margin-top: 60px; margin-right: 100px"
													id="f">
													<div id="userStatusCheck2"></div>
													<input class="btn" type="button" id="favorite" name="favorite" value="我的最愛" /> 
													<input class="btn" type="button" id="reported" name="reported" value="檢舉" />
												</div>

											</div>

										</div>

										<div class="short_overview my-5">
											<p>${article.content}</p>
										</div>

										<div id="userStatusCheck">

											<div id="evaluate">

												<div style="float: left">
													<div style="float: left; margin-right: 10px"
														id="thumbUpNumber">
														<span>${article.thumbUp}</span> <input type="button"
															class="btn" id="thumbUp" name="thumbUp" value="喜歡" />
													</div>
												</div>

												<div>
													<div style="float: left" id="unlikeNumber">
														<span> ${article.unlike}</span> <input type="button"
															class="btn" id="unlike" name="unlike" value="不喜歡" />
													</div>
												</div>
												<div style="float: right">
													<div class="line-it-button" data-lang="zh_Hant" data-type="share-a" data-env="REAL" data-url="http://localhost:8080/showArticle/${article.topicName}/${article.articleId}" data-color="default" data-size="large" data-count="false" data-ver="3" style="display: none;"></div>
												</div>

											</div>
										</div>
									</div>

									<div style="margin-top: 100px">
										<hr>
										<div>
											<span style="font-size:30px">留言&nbsp;</span><span id="commentNumber">${article.comments.size()}</span>
										</div>
										<form id="commentForm" action="#" method="post">
											<input type="hidden" id="memberPk" class="memberPk" /> <input type="hidden"
												id="name" /> <input type="hidden" id="articleId"
												value="${article.articleId}" />

											<div id="viewComment" name="check0"></div>

											<div id="comment">
												<div id="loginCheck"></div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-3" style="margin-top: 30px">

						<div id="notLogin" style="margin-top: 40px">
							<a href="/login"
								style="display: flex; justify-content: center; align-items: center;"
								class="btn amado-btn mb-15">登入以進入屬於您的萬事屋!</a>
						</div>
						<div id="alreadyLogin" style="margin-top: 40px">
							<div id="alreadyLogin" style="margin-top:40px">
							<form method="post" action="#">
								<input type="hidden" id="memberPk" class="memberPk" name="memberPk" /> 
								<input type="submit" style="display: inline; margin: 6px;width:220px" class="btn" formaction="/users/toNewArticle" value="新增文章" /> 
								<input type="submit" style="float: left; display: inline;margin: 6px;margin-top:5px;width:220px" class="btn" formaction="/users/toUserArticle" value="我的專區" />
							</form>
						</div>
						</div>

						<div style="margin-top: 60px; background-color: #f5f7fa; padding: 30px 20px;">
							<h4 style="margin-bottom: 30px"><span style="color:red">${article.topicName}</span> &nbsp;熱門</h4>

							<a
								href="/showArticle/${topViewArticles[0].topicName}/${topViewArticles[0].articleId}">
								<span><img style="width: 350px;height: 180px"
									src="/getArticleCover?articleId=${topViewArticles[0].articleId}"
									alt="cover" /></span>
								<div style="margin-top: 15px">
									<span class="headTitle" style="font-size: 18px">${topViewArticles[0].title}</span>
								</div>
							</a>
							<hr>
							<ul style="padding-left: 15px">
								<c:forEach var="article" varStatus="stat" begin="1" end="5" items="${topViewArticles}">
										<li style="list-style-type: disc; font-size: 10px">
											<a href="/showArticle/${article.topicName}/${article.articleId}"><span
												class="listStyle" style="font-size: 16px">${article.title}</span>
											</a>
										</li>
								</c:forEach>
							</ul>
						</div>
						
						<div style="margin-top: 40px; background-color: #f5f7fa; padding: 30px 20px;">
							<h4 style="margin-bottom: 30px"><span style="color:red">${article.topicName}</span> &nbsp;最讚</h4>
							
							<a href="/showArticle/${likeArticles[0].topicName}/${likeArticles[0].articleId}">
								<span><img style="width:350px;height: 180px" src="/getArticleCover?articleId=${likeArticles[0].articleId}" alt="cover" /></span>
								<div style="margin-top:15px"><span class="headTitle" style="font-size:18px">${likeArticles[0].title}</span></div>
							</a>
							<hr>
							<ul style="padding-left:15px">
								<c:forEach var="article" varStatus="stat" begin="1" end="5" items="${likeArticles}">
									<li style="list-style-type: disc;font-size:10px">
										<a href="/showArticle/${article.topicName}/${article.articleId}">
											<span class="listStyle" style="font-size:16px">${article.title}</span>
										</a>
									</li>
								</c:forEach>
							</ul>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
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
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
    $.ajax({
        type: "get",
        url: "/getCurrentUser.do",
        success: function (member) {
            //	logined: show user info //else show login button
            let htmlStr = null;
            if (member.length != 0) {
            	$('#notLogin').hide();
                currentUser = member;
                htmlStr =
                    '<a href="/logout" class="btn amado-btn active">登出</a>' +
                    '<p class="userInfo" style="margin-bottom:0">使用者: ' + member.name + '</p>' +
                    '<p class="userInfo" style="margin-bottom:0">最後登入時間: ' + member.lastLogin + '</p>';
                if (member.permission == 1) {
                    $('#memberCenterOrBs').attr('href', '/admin/showAllMember').text('前往後臺');
                }
            } else {
            	$('#alreadyLogin').hide();
                htmlStr = '<a href="/login" class="btn amado-btn active">登入</a>';
            }
            $('#loginDiv').append(htmlStr)
        },
        error: function (member) {
            Swal.fire("response error");
        }
    });

	
	//取得會員資訊
	$.ajax({
		type : "get",
		url : "/getCurrentUser.do",
		success : function(member) {

			if (member.length == 0) {
				$('#memberRecord').hide();
				$('#evaluate').hide();
				$('#reported').hide();
				$('#favorite').hide();
				$('#loginCheck').append('<a href="/login"><p style="text-align: center; margin: 5px; color: #4F9D9D">按此登入以發表留言</p></a>');
				$('#userStatusCheck').append('<a href="/login"><p style="text-align: center; margin: 5px; color: #4F9D9D">按此登入以或發表評價</p></a>');
				$('#userStatusCheck2').append('<a href="/login"><p style="text-align: center; margin: 5px; color: #4F9D9D">按此登入以收藏文章</p></a>');
				

			} else {
				$('.memberPk').attr('value', member.memberPk);
				$('#name').attr('value', member.name);
				
				var status = getStatus();
				
				if (status.thumbUp == 1) {
					$('#thumbUp').attr('value', '取消喜歡');
					$('#unlike').attr('value', '不喜歡');
		
				} else if (status.unlike == 1) {
					$('#thumbUp').attr('value', '喜歡');
					$('#unlike').attr('value', '取消不喜歡');
		
				} else {
					$('#thumbUp').attr('value', '喜歡');
					$('#unlike').attr('value', '不喜歡');
				}
				
				if(status.favorite == 0){
					$('#favorite').attr('value', '加入我的最愛');
				} else {
					$('#favorite').attr('value', '取消我的最愛');
				}
			}
			
			getComment();
			
		},

		error : function() {
			alert("發生錯誤");
		},
	});
	
	window.onload = function(){
		$.ajax({
			type : "post",
			url : "/updateViews",
			data : {
				articleId : ${article.articleId},
			},

			success : function() {
				console.log('觀看次數 + 1');

			},

			error : function() {
				alert('觀看次數新增 : 失敗');
			},
		});
	}
	
	//喜歡
	$('#evaluate').on('click', '#thumbUp', function() {
		var status = getStatus();
		updateEvaluate(status, $(this));
		updateArticleEvaluate($(this));

	})
	
	//不喜歡
	$('#evaluate').on('click', '#unlike', function() {
		var status = getStatus();
		updateEvaluate(status, $(this));
		updateArticleEvaluate($(this));
	})

	//我的最愛
	$('#f').on('click', '#favorite', function() {
		var status = getStatus();
		updateFavorite(status, $(this));
		
	})
	
	//取得會員狀態
	function getStatus() {
		var status;
		
		if($('#memberPk').val() != ""){
			
			$.ajax({
				type : 'post',
				url : '/checkStatus',
				async : false,
				data : {
					memberPk : $('#memberPk').val(),
					articleId : $('#articleId').val(),
				},
		
				success : function(data) {
					
					if(data !=null){
						
						status = data;
						
					} else{
						alert('登入 : 失敗');
					}
				},
		
				error : function() {
					alert('會員狀態取得 : 失敗');
				},
		
			});
		} else {
			alert('觀看文章 : 未登入');
		}
		
		return status;
	}
	

	//評價狀態確認
	function updateEvaluate(data, thisButton) {
		var name = thisButton.attr('name');
		var thumbUp = 0;
		var unlike = 0;
		var t = $('#thumbUpNumber').children('span').text();
		var u = $('#unlikeNumber').children('span').text();
	
		if (name == 'thumbUp') {
	
			thumbUp = (data.thumbUp == 0) ? 1 : 0;
			
			if(thumbUp == 1) {
				$('#thumbUpNumber').children('span').text(parseInt(t)+1);
			} else {
				$('#thumbUpNumber').children('span').text(parseInt(t)-1);
			}
			
			if(data.unlike == 1){
				$('#unlikeNumber').children('span').text(parseInt(u)-1);
			}
	
		} else {
	
			unlike = (data.unlike == 0) ? 1 : 0;
			
			if(unlike == 1) {
				$('#unlikeNumber').children('span').text(parseInt(u)+1);
			} else {
				$('#unlikeNumber').children('span').text(parseInt(u)-1);
			}
			
			if(data.thumbUp == 1){
				$('#thumbUpNumber').children('span').text(parseInt(t)-1);
			}
		}
	
		$.ajax({
			type : 'post',
			url : '/updateStatus',
			data : {
				thumbUp : thumbUp,
				unlike : unlike,
				articleId : data.articleId,
				memberPk : data.memberPk,
			},
	
			success : function() {
				if (thumbUp == 1) {
					$('#thumbUp').attr('value', '取消喜歡');
					$('#unlike').attr('value', '不喜歡');
	
	
				} else if (unlike == 1) {
					$('#thumbUp').attr('value', '喜歡');
					$('#unlike').attr('value', '取消不喜歡');
	
	
				} else {
					$('#thumbUp').attr('value', '喜歡');
					$('#unlike').attr('value', '不喜歡');
				}
	
			},
	
			error : function() {
				alert('評價更新 : 失敗');
			},
	
		});
	}

	//檢舉彈出視窗
	$(function () {
		
		$("#reported").click(function () {
			
			if(getStatus().reported == 1){
				
				Swal.fire('已收到您的檢舉請求!正在審查文章中');
				
			}else{
				
	            swal("請輸入您檢舉此篇文章的原因", {
	            	
	                content: "input",
	                
	            })
	                .then((value) => {
	                    	
                    	var data = getStatus();
                    	
                    	$.ajax({
                			type : 'post',
                			url : '/updateStatus',
                			data : {
                				reported : 1,
                				reportedReason : value,
                				articleId : data.articleId,
                				memberPk : data.memberPk,
                			},
                	
                			success : function() {
                				Swal.fire('我們已收到您的檢舉，將會盡速為您處理!');
                			},
                	
                			error : function() {
                				swal('失敗','傳送資料發生錯誤','error');
                			},
                		});

	                });
        		
        		}
			})
		});
	
	//我的最愛狀態確認
	function updateFavorite(data, thisButton) {
		var name = thisButton.attr('name');
	
		var favorite = (data.favorite == 0) ? 1 : 0;
	
		$.ajax({
			type : 'post',
			url : '/updateStatus',
			data : {
				favorite : favorite,
				articleId : data.articleId,
				memberPk : data.memberPk,
			},
	
			success : function() {
				if (favorite == 1) {
					Swal.fire('加入我的最愛!');
					$('#favorite').attr('value', '取消我的最愛');
	
				} else {
					Swal.fire('取消我的最愛');
					$('#favorite').attr('value', '加入我的最愛');
				}
	
			},
	
			error : function() {
				swal('失敗','最愛狀態更新發生錯誤','error');
			},
	
		});
	}

	//更新文章狀態
	function updateArticleEvaluate(thisButton) {
		var thumbUp = parseInt($('#thumbUpNumber').text());
		var unlike = parseInt($('#unlikeNumber').text());
		var name = thisButton.attr('name');
		
		$.ajax({
			type : 'post',
			url : '/updateArticleEvaluate',
			data : {
				thumbUp : thumbUp,
				unlike : unlike,
				articleId : ${article.articleId},
				
			},
	
			success : function() {
				Swal.fire('評價更新成功');
			},
	
			error : function() {
				swal('失敗','文章狀態更新發生錯誤','error');
			},
	
		});
	}
	
	//取得留言
	function getComment(){
		$.ajax({
			type : "post",
			url : "/getComment",
			data : {
				articleId : ${article.articleId},
			},
			
			success : function(comment) {
				
				if(comment.length == 0){
					$('#viewComment').append('<div id="noComment">此篇文章沒有留言!</div>');
				}
				
				var level = 0;
				
				//留言表單replyId0
				$('#viewComment').append('<div class="replyId0" id="cf"></div>');
				$('#cf').append('<div id="cl" style="width:500px;display:inline;"><span id="commentFormLevel"></span></div>');
				$('#cf').append('<div style="display:inline;margin-left:60px"><img style="border-radius:50%;height:40px;width:40px;" src="/getMemberImage?memberPk=' + $('#memberPk').val() + '"/></div>');
				$('#cf').append('<div id="cc" style="margin-left:70px;display:inline;"><input type="text" id="commentContent" style="margin-top:10px" placeholder="我覺得..." /></div>');
				$('#cf').append('<div id="cb" style="display:inline;float:right;margin-top:15px;margin-right:30px"><input type="button" id="send" value="送出"/></div>');
				
				if($('#memberPk').val() == ""){
					$('#cf').hide();
				}
				
				
				$.each(comment, function(index, value) {
					
					var replyId = value.replyId;
					
					if(replyId == 0){
						
						level += 1;
						showReply0(index , value , level);
	
					}
					
					else{
						showReplys(index, value);
					}
					
				});
				
				$('#commentFormLevel').html(level + 1);
			},
	
			error : function() {
				swal('失敗','取得留言發生錯誤','error');
			},
		});
	}

	
	//印出每則回覆
	function showReplys( index , value){
		$('#commentId' + value.replyId).append('<div class="reply" id="viewReply' + value.replyId + '"></div>');
			
		var time = new Date(value.updateTime).toLocaleString('zh-tw',{hour12:false,});
	
		//回覆的回覆表單
		if( $('#viewReply' + value.replyId).children('div').eq(1).attr('value') != "true" ){
			
			$('#viewReply' + value.replyId).append('<div id="replyForm' + value.commentId + '"></div>');
				
			if($('#replyForm' + value.commentId).parent().parent().attr('name') == 'check0'){
				$('#replyForm' + value.commentId).attr('class','replyForm0');
			}else{
				$('#replyForm' + value.commentId).attr('class','replyForm');
			}
			
			$('#replyForm' + value.commentId).append('<div id="checkReplyForm" value="true"></div>');
			$('#replyForm' + value.commentId).append('<div style="display:inline;margin-left:40px"><img style="border-radius:50%;height:40px;width:40px;" src="/getMemberImage?memberPk='+ value.memberPk + '"/></div>');
			$('#replyForm' + value.commentId).append('<div style="margin-left:40px;display:inline;"><input type="text" id="replyContent' + value.commentId + '" style="margin-top:10px;width:35%;border-radius:5px" placeholder="回覆留言..."></div> ');
			$('#replyForm' + value.commentId).append('<input type="button" name="' + value.commentId + '" id="sendReply" class="btn" style="margin-left:40px;display:inline;float:right;margin-right:40px;margin-top:10px" value="送出"/>');
		}
		
		//每則留言的回覆
		if(value.status == 'deleted'){
			
			$('<div class="eachReply" id="commentId' + value.commentId + '" name="' + value.commentId + '"></div>').insertBefore('#replyForm' + value.commentId);
			$('#commentId' + value.commentId).append('<div id="content' + value.commentId + '"></div>');
			$('#content' + value.commentId).append('<span class="deleteInfo">此篇留言已遭到刪除</span>');
			$('#replyForm' + value.commentId).remove();
			
		} else {
			
			$('<div class="eachReply" id="commentId' + value.commentId + '" name="' + value.commentId + '"></div>').insertBefore('#replyForm' + value.commentId);
			$('#commentId' + value.commentId).append('<div id="content' + value.commentId + '"></div>');
			$('#content' + value.commentId).append('<div style="display:inline;margin-left:40px"><img style="border-radius:50%;height:40px;width:40px;" src="/getMemberImage?memberPk='+ value.memberPk + '"/></div>');
			$('#content' + value.commentId).append('<div id="cm" style="margin-left:40px;display:inline;"><p style="font-size:16px;display:inline">'  + value.name + '  : ' + value.content + '</p></div>');
			
			if($('#memberPk').val() != ""){
				$('#content' + value.commentId).append('<input type="button" id="showReply" name="' + value.commentId + '" class="btn" style="float:right" value="回覆"/>');
			}
			
			if($('#memberPk').val() == value.memberPk){
				$('#content' + value.commentId).append('<input type="button" id="delete" name="' + value.commentId + '" class="btn" style="float:right;margin-right:5px" value="刪除"/>');
			}
			
			$('#content' + value.commentId).append('<div style="display:inline;float:right;margin-right:20px"><p style="font-size:16px;display:inline">' + newTime(time) + '</p></div>');
			$('#replyForm' + value.commentId).hide();
		}
	}
	
	
	//印出第一層留言
	function showReply0( index , value ,level){
		
		var time = new Date(value.updateTime).toLocaleString('zh-tw',{hour12:false,});

		if(value.status == 'deleted'){
			
			$('<div id="commentId' + value.commentId + '" name="' + value.commentId + '" class="replyId0"></div>').insertBefore('#cf');
			$('#commentId' + value.commentId).append('<div id="cl" style="width:500px;display:inline;"><span>' + level + '</span></div>');
			$('#commentId' + value.commentId).append('<div id="content' + value.commentId + '" style="margin-left:40px;display:inline;"></div>');
			$('#content' + value.commentId).append('<span class="deleteInfo">此篇留言已遭到刪除</span>');
			$('#commentId' + value.commentId).append('<div id="viewReply' + value.commentId + '" class="viewReply0"></div>')
			
		} else{
		
			//留言內容
			$('<div id="commentId' + value.commentId + '" name="' + value.commentId + '" class="replyId0"></div>').insertBefore('#cf');
			$('#commentId' + value.commentId).append('<div id="cl" style="width:500px;display:inline;"><span>' + level + '</span></div>');
			$('#commentId' + value.commentId).append('<div style="display:inline;margin-left:30px" id="content' + value.commentId + '"></div>');
			$('#content' + value.commentId).append('<div style="display:inline;margin-left:30px"><img style="border-radius:50%;height:40px;width:40px;" src="/getMemberImage?memberPk='+ value.memberPk + '"/></div>');
			$('#content' + value.commentId).append('<div id="cm" style="margin-left:40px;display:inline;"><p style="font-size:16px;display:inline">'  + value.name + '  : ' + value.content + '</p></div>');
			
			if($('#memberPk').val() != ""){
				$('#content' + value.commentId).append('<input type="button" id="showReply" name="' + value.commentId + '" class="btn" style="float:right" value="回覆"/>');
			}
			
			if($('#memberPk').val() == value.memberPk){
				$('#content' + value.commentId).append('<input type="button" id="delete" name="' + value.commentId + '" class="btn" style="float:right;margin-right:5px" value="刪除"/>');
			}
			
			$('#content' + value.commentId).append('<div style="display:inline;float:right;margin-right:20px"><p style="font-size:16px;display:inline">' + newTime(time) + '</p></div>');
			
			//留言自己的回覆表單
			
			$('#commentId' + value.commentId).append('<div id="viewReply' + value.commentId + '" class="viewReply0"></div>')
			$('#commentId' + value.commentId).append('<div id="replyForm' + value.commentId + '" class="replyForm0"></div>');
			$('#replyForm' + value.commentId).append('<div style="display:inline;margin-left:40px"><img style="border-radius:50%;height:40px;width:40px;" src="/getMemberImage?memberPk='+ $('#memberPk').val() + '"/></div>');
			$('#replyForm' + value.commentId).append('<input type="button" name="' + value.commentId + '" id="sendReply" class="btn" style="margin-left:40px;display:inline;float:right;margin-right:40px;margin-top:10px" value="送出"/>');
			$('#replyForm' + value.commentId).append('<div style="display:inline;margin-left:40px"><input type="text" id="replyContent' + value.commentId + '" style="margin-top:10px;width:35%;border-radius:5px" placeholder="回覆..."></div> ');
			$('#replyForm' + value.commentId).hide();
		}
	}
	
	
	//送出留言
	$('#viewComment').on('click','#send',function() {
	
        Swal.fire({
            title: "確定送出留言嗎?",
            showCancelButton: true
        }).then(function (result) {
            if (result.value) {
                
            	$.ajax({
    				type : "post",
    				url : "/newComment",
    				data : {
    					memberPk : $('#memberPk').val(),
    					articleId : ${article.articleId},
    					content : $('#commentContent').val(),
    				},
    	
    				success : function(comment) {
     					$('#noComment').hide();
    					
     					var number = $('#commentNumber').text();
     					$('#commentNumber').text(parseInt(number) + 1);
    					
    					var newComment;
    					
    					var lastComment = $('#viewComment').children().eq(-2).children().first().children().first().text();

    					if( lastComment == ""){
    						newComment = 1;
    					}else{
    						newComment  = parseInt(lastComment) + 1;
    					}
    	
    					var date = new Date();
    					var time = date.toLocaleString('zh-tw',{hour12:false});
    					
    					Swal.fire('新增成功!');
    					
    					//清空第一層text
    					$('#commentContent').val('');
    					
    					//更新層數
    					$('#commentFormLevel').text(newComment + 1);
    					
    					//更新的第一層留言
    					$('<div id="commentId' + comment.commentId + '" name="' + comment.commentId + '" class="replyId0"></div>').insertBefore('#cf');
    					$('#commentId' + comment.commentId).append('<div id="cl" style="width:500px;display:inline;"><span>' + newComment + '</span></div>');
    					$('#commentId' + comment.commentId).append('<div id="content' + comment.commentId + '" style="display:inline;margin-left:40px"></div>');
    					$('#content' + comment.commentId).append('<div style="display:inline;margin-left:20px"><img style="border-radius:50%;height:40px;width:40px;" src="/getMemberImage?memberPk='+ comment.memberPk + '"/></div>');
    					$('#content' + comment.commentId).append('<div id="cm" style="margin-left:40px;display:inline;"><p style="font-size:16px;display:inline">' + comment.name + '  : ' + comment.content + '</p></div>');
    					$('#content' + comment.commentId).append('<input type="button" id="showReply" name="' + comment.commentId + '" class="btn" style="float:right" value="回覆"/>');
    					$('#content' + comment.commentId).append('<input type="button" id="delete" name="' + comment.commentId + '" class="btn" style="float:right;margin-right:5px" value="刪除"/>');
    					$('#content' + comment.commentId).append('<div style="display:inline;float:right;margin-right:20px"><p style="font-size:16px;display:inline">' + newTime(time) + '</p></div>');
    					
    					//更新的留言回覆表單
    					$('#commentId' + comment.commentId).append('<div id="viewReply' + comment.commentId + '" style=""></div>');
    					$('#commentId' + comment.commentId).append('<div id="replyForm' + comment.commentId + '" class="replyForm0" ></div>');
    					$('#replyForm' + comment.commentId).append('<div style="display:inline;margin-left:40px"><img style="border-radius:50%;height:40px;width:40px;" src="/getMemberImage?memberPk='+ $('#memberPk').val() + '"/></div>');
    					$('#replyForm' + comment.commentId).append('<input type="button" id="sendReply" name="' + comment.commentId + '" class="btn" style="margin-left:40px;display:inline;float:right;margin-right:40px;margin-top:10px" value="回覆留言"/>');
    					$('#replyForm' + comment.commentId).append('<div style="display:inline;margin-left:40px"><input type="text" id="replyContent' + comment.commentId + '" style="margin-top:10px;width:35%;border-radius:5px" placeholder="回覆..." /></div> ');
    					$('#replyForm' + comment.commentId).hide();
    				},


    				error : function() {
    					swal('失敗','留言新增發生錯誤','error');
    				},
    			});
            	
            	
            }
            
        });
		
	})

	
	//送出回覆的回覆
	$('#viewComment').on('click','#sendReply',function() {
		var id = $(this).attr('name');
		var x;
		 Swal.fire({
             title: "確定要回覆此則留言嗎",
             showCancelButton: true
         }).then(function (result) {
             if (result.value) {
            	 
            	 $.ajax({
     				type : "post",
     				url : "/newReply",
     				data : {
     					memberPk : $('#memberPk').val(),
     					articleId : ${article.articleId},
     					content : $('#replyContent'+ id ).val(),
     					replyId : id,
     				},
     	
     				success : function(reply) {
     					
     					$('#noComment').hide();
     					
     					var number = $('#commentNumber').text();
     					$('#commentNumber').text(parseInt(number) + 1);
     					
     					$('#replyContent'+ reply.replyId ).val('');

     					if ( $('#viewReply' + reply.replyId).attr('id') == null){
     						$('#commentId' + reply.replyId).append('<div id="viewReply' + reply.replyId + '" ></div>');
     						
     					}

     					
     					if($('#commentId' + reply.replyId).parent().attr('name') == "check0"){
     						$('#viewReply' + reply.replyId).attr('class','viewReply0');
     						
     					} else {
     						$('#viewReply' + reply.replyId).attr('class','viewReply');
     					}
     					
     					$('#viewReply' + reply.replyId).append('<div id="replyForm' + reply.commentId + '"></div>');
     					
     					if($('#replyForm' + reply.commentId).parent().parent().attr('name') == 'check0'){
     						$('#replyForm' + reply.commentId).attr('class','replyForm0');
     					}else{
     						$('#replyForm' + reply.commentId).attr('class','replyForm');
     					}
     					
     					var time = new Date(reply.updateTime).toLocaleString('zh-tw',{hour12:false,});
     				
     					Swal.fire('回覆留言成功!');
     					
     					//回覆的回覆表單
     					$('#replyForm' + reply.commentId).append('<div id="checkReplyForm" value="true"></div>');
     					$('#replyForm' + reply.commentId).append('<div style="display:inline;margin-left:40px"><img style="border-radius:50%;height:40px;width:40px;" src="/getMemberImage?memberPk='+ reply.memberPk + '"/></div>');
     					$('#replyForm' + reply.commentId).append('<div style="margin-left:40px;display:inline;"><input type="text" id="replyContent' + reply.commentId + '" style="margin-top:10px;width:35%;border-radius:5px" placeholder="回覆留言..."></div> ');
     					$('#replyForm' + reply.commentId).append('<input type="button" id="sendReply" name="' + reply.commentId + '" class="btn" style="margin-left:40px;display:inline;float:right;margin-right:40px;margin-top:10px" value="送出"/>');
     					$('#replyForm' + reply.commentId).hide();
     					
     					//留言的留言
     					$('<div class="eachReply" id="commentId' + reply.commentId + '" name="' + reply.commentId + '"></div>').insertBefore('#replyForm' + reply.commentId);
     					$('#commentId' + reply.commentId).append('<div id="content' + reply.commentId + '"></div>');
     					$('#content' + reply.commentId).append('<div style="display:inline;margin-left:40px"><img style="border-radius:50%;height:40px;width:40px;" src="/getMemberImage?memberPk='+ reply.memberPk + '"/></div>');
     					$('#content' + reply.commentId).append('<div id="cm" style="margin-left:40px;display:inline;"><p style="font-size:16px;display:inline">' + reply.name + '  : ' + reply.content + '</p></div>');
     					$('#content' + reply.commentId).append('<input type="button" id="showReply" name="' + reply.commentId + '" class="btn" style="float:right" value="回覆"/>');
    					$('#content' + reply.commentId).append('<input type="button" id="delete" name="' + reply.commentId + '" class="btn" style="float:right;margin-right:5px;" value="刪除"/>');
     					$('#content' + reply.commentId).append('<div style="display:inline;float:right;margin-right:20px"><p style="font-size:16px;display:inline">' + newTime(time) + '</p></div>');
     					
     				},
     	
     				error : function() {
     					swal('失敗','新增留言發生錯誤','error');
     				},
     			});
            	 
             }
             
         });
		
	})
	
	$('#viewComment').on('click','#delete',function() {
		var id = $(this).attr('name');
		
		 Swal.fire({
             title: "確定要刪除此則留言嗎",
             showCancelButton: true
         }).then(function (result) {
             if (result.value) {
            	 
            	 $.ajax({
     				type : "post",
     				url : "/hideComment",
     				data : {
     					commentId : id,
     				},
     	
     				success : function() {
     					swal('成功刪除!');
     					$('#content' + id).empty();
     					$('#replyForm' + id).remove();
     					$('#content' + id).append('<div style="display:inline;"><span class="deleteInfo">此篇留言已遭到刪除<span></div>');
     				},
     	
     				error : function() {
     					swal('失敗','刪除留言發生錯誤','error');
     				},
     			});
            	 
             }
             
         });
		
	})
	
	
	//送出
	$('#viewComment').on('click','#showReply',function() {
		var id = $(this).attr('name');
		$('#replyForm'+ parseInt(id)).toggle();
		
	})
		
	//時間格式
	$('#articleTime').text($('#articleTime').text().replaceAll('-','/').slice(0,16));
	
	function newTime(time){
		
		if(time.charAt(6) == "/"){
			time = time.slice(0,5)+ "0" + time.charAt(5) + time.slice(6);
		}
		
		if(time.charAt(9) == " "){
			time = time.slice(0,7) + "/0" + time.charAt(10) + " " +time.slice(9);
		}

		return time.slice(5,16);
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
	
	</script>
</body>

</html>