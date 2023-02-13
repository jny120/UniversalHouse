<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>論壇</title>
<link rel="icon" href="/amado-master/img/core-img/favicon.ico">
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/style.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>

<body>


<!-- 	<div id="dg" style="z-index: 5000; position: fixed ! important; right: 0px; top: 0px;"> -->
<!-- 		<a href="createArticle">新增文章</a> -->
<!-- 	</div> -->






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
							<button type="submit"><img src="/amado-master/img/core-img/search.png" alt=""></button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="main-content-wrapper d-flex clearfix">

		<div class="mobile-nav">
			<div class="amado-navbar-brand"><a href="/"><img src="/amado-master/img/core-img/logo.png" alt=""></a></div>
			<div class="amado-navbar-toggler"><span></span><span></span><span></span></div>
		</div>

		<!-- Header Area Start -->
		<header class="header-area clearfix">
			<div class="nav-close"><i class="fa fa-close" aria-hidden="true"></i></div>
			<div class="logo"><a href="/"><img src="/amado-master/img/core-img/logo.png" alt=""></a></div>
			
			<nav class="amado-nav">
				<ul>
					<li><a href="/">Home</a></li>
					<li><a href="/">Shop</a></li>
					<li><a href="/">Product</a></li>
					<li><a href="/">Cart</a></li>
					<li><a href="frontPage">Forum</a></li>
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

		<!-- Product Details Area Start -->
		<div class="single-product-area section-padding-100 clearfix">
			<div class="container-fluid">

				<div class="row">
					<div class="col-12">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb mt-50">
								<li class="breadcrumb-item"><a href="frontPage">論壇</a></li>
								<li class="breadcrumb-item"><a href="frontPage">${article.topicName}</a></li>
								<li class="breadcrumb-item active" aria-current="page">${article.title}</li>
							</ol>
						</nav>
					</div>
				</div>

				<div>
<!-- 					<div class="col-12  col-lg-7">      -->
					<div class="col-lg-9">
<!-- 					調整比例 -->

						<div class="carousel-item active" style="margin-bottom: 50px;"><img class="d-block w-100" src="getArticleCover?articleId=${article.articleId}" alt="cover"></div>

						<div class="single_product_desc">
							<!-- Product Meta Data -->
							<div class="product-meta-data">
								<div class="line"></div>
								<p class="product-price">${article.topicName}</p>

								<h3>${article.title}</h3>
									
									<div style="margin-bottom:200px">
										
										<div id="author" style="float:left;margin-bottom:30px;margin-top:30px">
											<img height="100" width="100" style="float:left;border-radius:50%;margin-right:20px" src="getMemberImage?memberPk=${member.memberPk}" />
										</div>
										
										<div style="padding-top:50px;float:left" >
											<p style="margin-bottom:0px">by ${member.name}</p>
											<p id="articleTime">${article.updateTime}</p>
										</div>
										
										<div style="float:right;margin-top:60px;padding-right:100px" id="f">
											<div id="userStatusCheck2"></div>
												<input class="btn" type="button" id="favorite" name="favorite" value="我的最愛" />
											</div>
											
										</div>
											
										
									</div>
								
							<div class="short_overview my-5">
								<p>${article.content}</p>
							</div>
							<div id="userStatusCheck">
								
								<div id="evaluate">
									<div style="float:left">
										<div style="float:left;margin-right:10px" id="thumbUpNumber"> 
											<span>${article.thumbUp}</span>
											<input type="button" class="btn" id="thumbUp" name="thumbUp" value="喜歡" />
										</div>
									</div>
									
										<div>
											<div style="float:left" id="unlikeNumber">
											<span> ${article.unlike}</span>
											<input type="button" class="btn" id="unlike" name="unlike" value="不喜歡" />
										</div>
									</div>
									
								</div>
								
							</div>
							
							<div style="float:left;margin-left:50px">
								<p><i class="bi bi-eye-fill" style="color:fbb710" ></i>&nbsp;${article.views}</p>
							</div>
						</div>
					</div>
					
					<!-- 留言 -->
					
					<div style="margin-top:100px" class="col-lg-9">
						<hr>
						<div><h2>留言</h2></div>
						<div>
							<table class="table">
								<thead>
									<tr>
										<th>樓</th>
										<th>會員</th>
										<th>內容</th>
										<th>時間</th>
									</tr>
								</thead>
								<tbody id="viewComment"></tbody>
							</table>
						</div>
						
						<div id="comment">
							<div id="loginCheck"></div>
			
							<form id="commentForm" action="#" method="post">
								<input type="hidden" id="memberPk" /> 
								<input type="hidden" id="name" /> 
								<input type="hidden" id="articleId" value="${article.articleId}" />
								<textarea name="commentContent" class="w-100" id="commentContent" cols="10" placeholder="我覺得..."></textarea>
								<input type="button" id="send" value="發表留言" />
							</form>
						</div>
					</div>
<!-- 					留言結束 -->
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Main Content Wrapper End ##### -->

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
						<!-- Copywrite Text -->
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

	<script src="/amado-master/js/jquery/jquery-2.2.4.min.js"></script>
	<script src="/amado-master/js/popper.min.js"></script>
	<script src="/amado-master/js/bootstrap.min.js"></script>
	<script src="/amado-master/js/plugins.js"></script>
	<script src="/amado-master/js/active.js"></script>
	<script type="text/javascript">
	
	window.onload = function() {
		
		//取得會員資訊
		$.ajax({
			type : "get",
			url : "/getCurrentUser.do",
			success : function(member) {

				if (member.length == 0) {
					$('#commentForm').hide();
					$('#memberRecord').hide();
					$('#evaluate').hide();
					$('#favorite').hide();
					$('#loginCheck').append('<a href="/login"><p style="text-align: center; margin: 5px; color: #4F9D9D">按此登入以發表留言</p></a>');
					$('#userStatusCheck').append('<a href="/login"><p style="text-align: center; margin: 5px; color: #4F9D9D">按此登入以或發表評價</p></a>');
					$('#userStatusCheck2').append('<a href="/login"><p style="text-align: center; margin: 5px; color: #4F9D9D">按此登入以收藏文章</p></a>');
					

				} else {
					$('#memberPk').attr('value', member.memberPk);
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

			},

			error : function() {
				Swal.fire("發生錯誤");
			},
		});
		
		//時間格式
		$('#articleTime').text($('#articleTime').text().substring(2,16));
		
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
		
		//取得留言
		$.ajax({
			type : "post",
			url : "/getComment",
			data : {
				articleId : ${article.articleId},
			},
			
			success : function(comment) {
				
				if(comment.length == 0){
					$('#viewComment').append('<tr id="null"><td style="text-align: center;"colspan="4">此篇文章沒有留言!</td></tr>');
				}
				
				$.each(comment, function(index, value) {
					console.log(value);
					var level = (parseInt(index)+1);
					
					$('#viewComment').append('<tr id="level' + level + '"><td id="' + level + '">' + level + '</td></tr>');
					
					
					$('#level' + level).append('<td id="authorInfo' + level + '"><img style="border-radius:50%;height:50px;width:50px;margin-right:50px" src="getMemberImage?memberPk='+ value.memberPk + '" /></td>');
					$('#authorInfo' + level).append('<div>' + comment[index].article.member.name + '</div>');

					$('#level' + level).append('<td id="content' + level + '"></td>');
					$('#content' + level).html(value.content);

					$('#level' + level).append('<td id="updateTime' + level + '"></td>');
					var time = new Date(value.updateTime).toLocaleString('zh-tw',{hour12:false,});
					
					if(time.charAt(6) == "/"){
						var time1 = time.slice(0,5)+ "0" + time.charAt(5) + time.slice(6);
						
					}
					if(time1.charAt(9) == " "){
						var time2 = time1.slice(0,7) + "/0" + time.charAt(10) + " " +time.slice(9);
						var time3 = time2.slice(2,16);
					}else{
						var time3 = time1.slice(2,16);
					}
					
					
					$('#updateTime' + level).html(time3);
					
					
				});
				
			},

			error : function() {
				Swal.fire("發生錯誤");
			},
		});
		
	} //onload 結束
	
	//送出留言
	$('#comment').on('click','#send',function() {

		var content = $('#commentContent').val();

		if (confirm("確定送出留言嗎?")) {
			$.ajax({
				type : "post",
				url : "newComment",
				data : {
					memberPk : $('#memberPk').val(),
					articleId : ${article.articleId},
					content : content,
				},

				success : function() {
					var newComment;
					$('#null').detach();
					
					var lastComment = $('#viewComment').children('tr').last().children('td').eq(0).text();
					if(lastComment == ""){
						newComment = 1;
					}else{
						newComment  = parseInt(lastComment) + 1;
					}

					var updateTime;
					var d = new Date();
					var time = d.toLocaleString('zh-tw',{hour12:false});
					
					if(time.charAt(6) == "/"){
						var time1 = time.slice(0,5)+ "0" + time.charAt(5) + time.slice(6);
						updateTime = time1;
					}
					
					if(updateTime.charAt(9) == " "){
						var time2 = time1.slice(0,7) + "/0" + time1.charAt(8) + time1.slice(9);
						updateTime = time2.slice(2,16);
					}

					alert('更新成功');
					$('#viewComment').append('<tr id="level' + newComment + '"></tr>');
					$('#level' + newComment).append('<td id="' + newComment + '">' + newComment + '</td>');
					$('#level' + newComment).append('<td id="authorInfo' + newComment + '"><img style="border-radius:50%;height:50px;width:50px;margin-right:50px" src="getMemberImage?memberPk='+ $('#memberPk').val() + '" /></td>');
					$('#authorInfo' + newComment).append('<div>' + $('#name').attr('value') + '</div>');
					$('#level' + newComment).append('<td id="' + newComment + '">' + content + '</td>');
					$('#level' + newComment).append('<td id="' + updateTime + '">' + updateTime + '</td>');
					$('#commentContent').val("");

				},

				error : function() {
					alert('留言新增失敗');
				},
			});
		}
	})
	
	//取得會員狀態
	function getStatus() {
		var status;
		$.ajax({
			type : 'post',
			url : 'checkStatus',
			async : false,
			data : {
				memberPk : $('#memberPk').val(),
				articleId : $('#articleId').val(),
			},

			success : function(data) {
				status = data;
			},

			error : function() {
				alert('無法取得登入會員資料');
			},

		});
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
			url : 'updateStatus',
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
				alert('評價系統更新失敗');
			},

		});
	}
	
	//我的最愛狀態確認
	function updateFavorite(data, thisButton) {
		var name = thisButton.attr('name');

		var favorite = (data.favorite == 0) ? 1 : 0;

		$.ajax({
			type : 'post',
			url : 'updateStatus',
			data : {
				favorite : favorite,
				articleId : data.articleId,
				memberPk : data.memberPk,
			},

			success : function() {
				if (favorite == 1) {
					alert('已加入我的最愛!');
					$('#favorite').attr('value', '取消我的最愛');

				} else {
					alert('已取消我的最愛!');
					$('#favorite').attr('value', '加入我的最愛');
				}

			},

			error : function() {
				alert('我的最愛更新失敗');
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
			url : 'updateArticleEvaluate',
			data : {
				thumbUp : thumbUp,
				unlike : unlike,
				articleId : ${article.articleId},
				
			},

			success : function() {
				alert('評價更新成功');
			},

			error : function() {
				alert('評價更新失敗');
			},

		});
	}
	
	</script>
</body>

</html>