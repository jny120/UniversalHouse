<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Universal House : Backstage</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/favicon.ico">

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
				<a href="/"><img src="/amado-master/img/core-img/newLogo.png"
					alt=""></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>

		<!-- Header Area Start -->
		<header class="header-area clearfix" style="background-color: #212529">
			<!-- Close Icon -->
			<div class="nav-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>
			<!-- Logo -->
			<div class="logo">

				<a href="/"><img width="150px" height="150px"
					src="/amado-master/img/core-img/newLogo.png" alt=""></a>
			</div>
			<!-- Amado Nav -->
			<nav class="amado-nav">
				<ul>
					<li><a href="memberBackstage" style="color: white">Member</a></li>
					<li><a href="spaceBackstage" style="color: white">Space</a></li>
					<li><a href="testBackstage" style="color: white">Test</a></li>
					<li><a href="projectBackstage" style="color: white">Project</a></li>
					<li><a href="forumBackstage" style="color: white">Forum</a></li>
				</ul>
			</nav>

		</header>

		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				<div>
					<div class="cart-title mt-50">
						<h2>後台管理系統</h2>
					</div>

					<div class="clearfix">
						<form id="form" enctype="multipart/form-data" method="post">

							<table class="table table-responsive" id="myTable">

								<thead>
									<tr>
										<th style="flex: 8%">文章編號</th>
										<th style="flex: 8%">留言編號</th>
										<th style="flex: 8%">會員編號</th>
										<th style="flex: 8%">更新時間</th>
										<th style="flex: 8%">內容</th>
										<th style="flex: 8%">狀態</th>
										<th style="flex: 8%">讚</th>
										<th style="flex: 8%">不喜歡</th>
										<th style="flex: 8%">更新</th>
									</tr>
								</thead>

								<tbody id="content">
									<c:choose>

										<c:when test="${empty comments}">
											<tr>
												<td><span>目前資料庫沒有資料</span></td>
											</tr>
										</c:when>

										<c:otherwise>
											<c:forEach var="comment" varStatus="stat" items="${comments}">

												<tr id="${stat.index}">
													<td style="vertical-align: middle; flex: auto"><span>${comment.articleId}</span></td>
													<td style="vertical-align: middle; flex: auto"><span>${comment.commentId}</span></td>
													<td style="vertical-align: middle; flex: auto"><span>${comment.memberPk}</span></td>
													<td style="vertical-align: middle; flex: auto"><span>${comment.updateTime}</span></td>
													<td style="vertical-align: middle; flex: auto"><span>${comment.content}</span></td>
													<td style="vertical-align: middle; flex: auto"><span>${comment.status}</span></td>
													<td style="vertical-align: middle; flex: auto"><span>${comment.thumbUp}</span></td>
													<td style="vertical-align: middle; flex: auto"><span>${comment.unlike}</span></td>
													<td style="vertical-align: middle; flex: auto"><input type="button" id="delete" value="刪除留言" style="font-size: 10px; margin: 3px; width: 100%; height: 40px; white-space: normal"></td>
												</tr>

											</c:forEach>

										</c:otherwise>

									</c:choose>

								</tbody>

							</table>
						</form>
						<hr>
						<div class="cart-btn col-12 mt-100">
							<form method="post">
								<input type="submit" class="btn amado-btn" style="background-color:grey;float:right" formaction="/admin/forumBackstage" value="返回" />
							</form>
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
							<a href="/"><img width="200px" height="200px"
								src="/amado-master/img/core-img/newLogo.png" alt=""></a>
						</div>
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
	<!-- ##### Footer Area End ##### -->

	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
	<script src="/amado-master/js/popper.min.js"></script>
	<script src="/amado-master/js/bootstrap.min.js"></script>
	<script src="/amado-master/js/plugins.js"></script>
	<script src="/amado-master/js/active.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script type="text/javascript">
	
	$('#content').on('click', '#delete', function() {
	
		var thisDeleteButton = $(this);
		var articleId = thisDeleteButton.parent().siblings().eq(0).text();
		var commentId = thisDeleteButton.parent().siblings().eq(1).text();

		var check = confirm('確定要刪除嗎？');
		if (check) {
			
			$.ajax({
				type : 'post',
				url : '/admin/deleteComment_backstage',
				data : {
					commentId : commentId,
				},

				success : function() {
					alert("刪除成功!");
					thisDeleteButton.parent().parent('tr').detach();
					if($('#content').children('tr').first().children('td').text() == ""){
						$('#content').append('<tr><td><span>目前資料庫沒有資料</span></td></tr>');
					}
					
				},

				error : function(thrownError) {
					alert("刪除未完成");
					console.log(thrownError);
				},

			});
		}
	})
	</script>
</body>

</html>