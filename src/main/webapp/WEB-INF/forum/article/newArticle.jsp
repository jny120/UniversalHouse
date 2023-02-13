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
<link rel="stylesheet" href="/amado-master/css/style.css">
</head>

<body>
	
	<div class="main-content-wrapper d-flex clearfix">

		<div class="mobile-nav">
			<div class="amado-navbar-brand">
				<a href="/"><img src="/amado-master/css/core-style.css' />" alt=""></a>
			</div>

			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>

		<header class="header-area clearfix">

			<div class="nav-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>

			<div class="logo">
				<a href="/"><img src="/amado-master/img/core-img/logo.png" alt=""></a>
			</div>

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

			<div class="social-info d-flex justify-content-between">
				<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
					href="#"> <i class="fa fa-twitter" aria-hidden="true"></i></a>
			</div>

		</header>

		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				<div class="row">
				
<!-- 					目前改MARGIN這裡 -->
					<div class="col-12 col-lg-8" style="margin:auto">
				
				
						<div class="checkout_details_area mt-50 clearfix">

							<div class="cart-title" style="text-align: center;">
								<h2>新增文章</h2>
								<hr>
								<p></p>
							</div>

							<form action="#" method="post" id="newForm" style="margin-left: 80px" enctype="multipart/form-data">

								<input type="hidden" id="memberPk" name="memberPk" />

								<div class="col-12 mb-3">
									<label for="status">隱私狀態：</label> 
									<select class="w-100 nice-select" id="status" name="status">
										<option value="public" selected>公開</option>
										<option value="hidden">隱藏</option>
										<option value="banned">封禁</option>
										<option value="deleted">被刪除</option>
									</select>
								</div>
								
								<div class="col-12 mb-3">
									<label for="topicName">領域：</label> 
									<select class="w-100 nice-select" id="topicName" name="topicName">
										<option>文書</option>
										<option>生活</option>
										<option>設計</option>
										<option>資訊</option>
										<option>影視</option>
										<option>顧問</option>
									</select>
								</div>

								<div class="col-12 mb-3">
									<label for="title">文章主題：</label> 
									<input type="text" class="form-control" id="title" name="title" value="${param.title}" required />
								</div>

								<div class="col-12 mb-3">
									<label for="content">內容：</label> 
									<textarea name="content" class="form-control" id="content" required></textarea>
								</div>

								<div class="col-12 mb-3">
									<label for="images">圖片：</label> 
									<input type="file" class="btn" name="images" id="images" accept="image/gif, image/jpeg, image/png" multiple />
								</div>
								
								<div class="cart-btn col-12 mt-100">
									<input type="button" class="btn amado-btn" id="send" value="送出" />
									<input type="reset" class="btn amado-btn" value="重置" />
								</div>

							</form>
							<hr>
							<div class="cart-btn col-12 mt-100">
								<form method="get">
									<input type="submit" class="btn amado-btn" style="background-color:grey;float:right" formaction="frontPage" value="返回" />
								</form>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

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
										<li class="nav-item"><a class="nav-link" href="/">Space Rental</a></li>
										<li class="nav-item"><a class="nav-link" href="/">Course</a></li>
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

	<script src="/amado-master/js/popper.min.js"></script>
	<script src="/amado-master/js/bootstrap.min.js"></script>
	<script src="../../"></script>
	<script src="/amado-master/js/active.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			$.ajax({
				type : "get",
				url : "/getCurrentUser.do",
				success : function(member) {
					$('#memberPk').attr('value', member.memberPk);
				},

				error : function() {
					Swal.fire("無法取得會員資料");
				}
			});
		}
		
		$('#newForm').on('click','#send',function(){
			
			if(confirm('確定要新增文章?')){
				
				var newForm = new FormData($('#newForm')[0]);
				
				$.ajax({
					type : 'post',
					url : 'newArticle',
					enctype : 'multipart/form-data',
					data : newForm,
					contentType: false,
					cache: false,
					processData: false,
					
					success : function(article) {
						alert('修改成功，跳轉至觀看頁面');
						location.assign('showArticle?articleId='+article.articleId);
					},
			
					error : function() {
						alert('修改失敗');
					}
					
				});
			}
		});
	</script>
</body>
</html>