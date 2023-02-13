<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Universal House : Backstage</title>

<link rel="icon" href="/amado-master/img/core-img/favicon.ico">
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
				<a href="/"><img src="/amado-master/img/core-img/newLogo.png" alt=""></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>

		<!-- Header Area Start -->
		<header class="header-area clearfix" style="background-color:#212529">
			<!-- Close Icon -->
			<div class="nav-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>
			<!-- Logo -->
			<div class="logo">
				<a href="/"><img width="150px" height="150px" src="/amado-master/img/core-img/newLogo.png" alt=""></a>
			</div>
			<!-- Amado Nav -->
			<nav class="amado-nav">
				<ul>
					<li><a href="memberBackstage" style="color:white">Member</a></li>
					<li><a href="spaceBackstage" style="color:white">Space</a></li>
					<li><a href="testBackstage" style="color:white">Test</a></li>
					<li><a href="projectBackstage" style="color:white">Project</a></li>
					<li><a href="forumBackstage" style="color:white">Forum</a></li>
				</ul>
			</nav>

		</header>

		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				<div class="row">
									
					<div class="col-12 col-lg-8" style="margin:auto">
				
						<div class="checkout_details_area mt-50 clearfix">

							<div class="cart-title" style="text-align: center;">
								<h2>後台管理系統</h2>
								<hr>
								<p></p>
							</div>

							<form id="updateForm" action="#" method="post" style="margin-left: 80px" enctype="multipart/form-data">
								
								<input type="hidden" id="articleId" name="articleId" /> 
								<input type="hidden" id="memberPk" name="memberPk" />

								<div class="col-12 mb-3">
									<label for="status">隱私狀態：</label> 
									<select class="w-100 nice-select" id="status" name="status">
										<option value="public">公開</option>
										<option value="hidden">隱藏</option>
										<option value="banned">封禁</option>
										<option value="deleted">被刪除</option>
									</select>
								</div>

								<div class="col-12 mb-3">
									<label for="w-100 topicName">領域</label> 
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
									<label for="thumbUp">喜歡</label> 
									<input type="number" class="form-control" id="thumbUp" name="thumbUp" min="0" />
								</div>
								<div class="col-12 mb-3">
									<label for="unlike">不喜歡</label> 
									<input type="number" class="form-control" id="unlike" name="unlike" min="0" />
								</div>
								<div class="col-12 mb-3">
									<label for="views">觀看次數</label> 
									<input type="number" class="form-control" id="views" name="views" min="0" />
								</div>
								<div class="col-12 mb-3">
									<label for="title">文章主題</label> 
									<input type="text" class="form-control" id="title" name="title" required />
								</div>
								<div class="col-12 mb-3">
									<label for="content">內容</label> 
									<textarea name="content" class="form-control" id="content" required></textarea>
								</div>

								<div class="col-12 mb-3">
									<c:if test="${!empty images}"> 
										<c:forEach var="image" varStatus="stat" items="${images}">
											<img height="50" width="50" src="getArticleImage?imageId=${image.imageId}">
										</c:forEach>
									
									</c:if>
									
									<label for="input">
										<input name="images" type="file" accept="image/gif, image/jpeg, image/png" multiple />
									</label> 
									
								</div>
								
								<div class="cart-btn col-12 mt-100 ">
									<input type="button" class="btn amado-btn" id="send" value="送出" />
									<input type="reset" class="btn amado-btn" value="還原" />
									<input type="submit" class="btn amado-btn" formaction="forumBackstage" value="返回" />
								</div>

							</form>
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
							<a href="/"><img width="200px" height="200px" src="/amado-master/img/core-img/newLogo.png" alt=""></a>
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
									aria-expanded="false" aria-label="Toggle navigation"><i
										class="fa fa-bars"></i></button>
								<div class="collapse navbar-collapse" id="footerNavContent">
									<ul class="navbar-nav ml-auto">
										<li class="nav-item"><a class="nav-link" href="memberBackstage">Member</a></li>
										<li class="nav-item"><a class="nav-link" href="projectBackStage">Project</a></li>
										<li class="nav-item"><a class="nav-link" href="spaceBackstage">Space</a></li>
										<li class="nav-item"><a class="nav-link" href="courseBackStage">Course</a></li>
										<li class="nav-item"><a class="nav-link" href="testBackstage">Test</a></li>
										<li class="nav-item"><a class="nav-link" href="forumBackstage">Forum</a></li>
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
				type : 'post',
				url : '/admin/getOldArticle_backstage',
				data:{
					articleId: ${articleId},
				},
				
				success : function(article) {
					$('#memberPk').attr('value',article.memberPk);
					$('#articleId').attr('value',article.articleId);
					$('#thumbUp').attr('value',article.thumbUp);
					$('#unlike').attr('value',article.unlike);
					$('#title').attr('value',article.title);
					$('#views').attr('value',article.views);
					$('#content').text(article.content);
	
					for(var i=0;i<4;i++){
						var anOption = $('#status').children('option').eq(i);
						if(article.status === anOption.val()){
							
							anOption.empty();
							anOption.attr('selected','selected');
							anOption.text(article.status);
						}
					}
					
					for(var i=0;i<6;i++){
						var anOption = $('#topicName').children('option').eq(i);
						if(article.topicName === anOption.val()){
							
							anOption.empty();
							anOption.attr('selected','selected');
							anOption.text(article.topicName);
						}
					}
					
				},
		
				error : function() {
					console.log('取得資料發生錯誤');
				}
				
			});
			
			$('#updateForm').on('click','#send',function(){
				
				if(confirm('確定要更新文章?')){
					
					var updateForm = new FormData($('#updateForm')[0]);
					
					$.ajax({
						type : 'post',
						url : '/admin/updateArticle_backstage',
						enctype : 'multipart/form-data',
						data : updateForm,
						contentType: false,
						cache: false,
						processData: false,
						
						success : function() {
							alert('修改成功，跳轉回後台');
							location.assign('forumBackstage');
						},
				
						error : function() {
							alert('修改失敗');
						}
						
					});
				}
			});
	}
	</script>
</body>
</html>