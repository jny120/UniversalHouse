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
<title>Universal House : 後台</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/logo.png">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/style.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Datatable -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
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

th, td {
	word-break: break-all;
}

.main-content-wrapper .cart-table-area table thead tr th {
	font-size: 16px
}

.image-upload>input {
	display: none;
}

.footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link
	{
	font-size: 20px
}

.main-content-wrapper .header-area .amado-nav li a {
	color: white
}
</style>


</head>

<body>
	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">

		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="/"><img src="/amado-master/img/core-img/logo.png"
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

				<a href="/admin/showAllMember"><img width="150px" height="150px"
					src="/amado-master/img/core-img/newLogo.png" alt=""></a>
			</div>
			<!-- Amado Nav -->
			<nav class="amado-nav">
				<ul>
					<li class="active"><a href="/">首頁</a></li>
					<li><a href="/admin/showAllMember">會員</a></li>
					<li><a href="/admin/projects/showAllEntrusBacktage/1">專案</a></li>
					<li><a href="/admin/spacereadall.controller">場地租借</a></li>
					<li><a href="/admin/showAllcourse">課程</a></li>
					<li><a href="/admin/testBackstage">測驗</a></li>
					<li><a href="/admin/forumBackstage">論壇</a></li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100" id="loginDiv">
				<a href="/" id="memberCenterOrBs" class="btn amado-btn mb-15">返回前臺</a>
			</div>

		</header>
		<!-- Header Area End -->


		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				<div>
					<div class="cart-title mt-50">
						<h2>後台管理系統</h2>
					</div>

					<div class="clearfix">
						<table class="table table-responsive" id="myTable">
							<thead>
								<tr>
									<th style="flex: 8%">文章</th>
									<th style="flex: 8%">作者</th>
									<th style="flex: 8%">時間</th>
									<th style="flex: 8%">領域</th>
									<th style="flex: 8%">內文</th>
									<th style="flex: 8%">喜歡</th>
									<th style="flex: 8%">倒讚</th>
									<th style="flex: 8%">觀看</th>
									<th style="flex: 8%">封面</th>
									<th style="flex: 8%">留言</th>
									<th style="flex: 8%">檢舉</th>
									<th style="flex: 8%">狀態</th>
									<th style="flex: 8%">更新</th>
									<th style="flex: 8%">刪除</th>
								</tr>
							</thead>

							<tbody id="content">
								<c:forEach var="article" varStatus="stat" items="${articles}">

									<tr id="tr${stat.index}">
										<td id="articleId${stat.index}" style="flex: 8%"><span>${article.articleId}</span></td>
										<td id="memberPk${stat.index}" style="flex: 8%"><span>${article.memberPk}</span></td>
										<td id="updateTime${stat.index}" style="flex: 8%"><span class="updateTime" style="font-size:8px">${article.updateTime}</span></td>
										<td id="topicName${stat.index}" style="flex: 8%"><span>${article.topicName}</span></td>

										<td id="content${stat.index}" style="flex: 8%">
											<form action="/admin/toContent" method="POST">
												<input type="hidden" name="articleId" value="${article.articleId}"> 
												<input type="submit" value="內容" style="font-size: 10px; margin: 3px; width: 100%; height: 40px; white-space: normal" />
											</form>
										</td>

										<td id="thumbUp${stat.index}" style="flex: 8%"><span style="font-size:14px">${article.thumbUp}</span></td>
										<td id="unlike${stat.index}" style="flex: 8%"><span style="font-size:14px">${article.unlike}</span></td>
										<td id="views${stat.index}" style="flex: 8%"><span style="font-size:14px">${article.views}</span></td>
										<td id="cover${stat.index}" style="flex: 8%"><span><img style="width: 50px; height: 50px" src="/admin/getArticleCover?articleId=${article.articleId}"></span></td>
										
										<td id="comments${stat.index}" style="flex: 8%">
											<form action="/admin/toCommentDB" method="POST">
												<input type="hidden" name="articleId" value="${article.articleId}">
												<input type="submit" value="留言" style="font-size: 10px; margin: 3px; width: 100%; height: 40px; white-space: normal" />
											</form>
										</td>
										
										<td id="reported${stat.index}" style="flex: 8%">
											<form action="/admin/toStatusDB" method="POST">
												<input type="hidden" name="articleId" value="${article.articleId}">
												<input type="submit" value="檢舉" style="font-size: 10px; margin: 3px; width: 100%; height: 40px; white-space: normal" />
											</form>
										</td>
										
										<td id="status${stat.index}" style="flex: 8%">
											<select id="permissions">
												<c:choose>
													<c:when test="${article.status == 'public'}">
														<option value="public" selected="selected">公開</option>
													</c:when>
													<c:otherwise>
														<option value="public">公開</option>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${article.status == 'hidden'}">
														<option value="hidden" selected="selected">隱藏</option>
													</c:when>
													<c:otherwise>
														<option value="hidden">隱藏</option>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${article.status == 'banned'}">
														<option value="banned" selected="selected">封禁</option>
													</c:when>
													<c:otherwise>
														<option value="banned">封禁</option>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${article.status == 'deleted'}">
														<option value="deleted" selected="selected">刪除</option>
													</c:when>
													<c:otherwise>
														<option value="deleted">刪除</option>
													</c:otherwise>
												</c:choose>
											</select>
										</td>
										
										<td id="update${stat.index}" style="flex: 8%">
											<form action="/admin/toUpdateArticle" method="POST">
												<input type="hidden" name="articleId" value="${article.articleId}">
												<input type="submit" value="修改" style="font-size: 10px; margin: 3px; width: 100%; height: 40px; white-space: normal" />
											</form>
										</td>
										<td id="delete${stat.index}" style="flex: 8%">
										<input type="button" id="delete" value="刪除" style="background-color:#FF7575;font-size: 10px; margin: 3px; width: 100%; height: 40px; white-space: normal" /></td>

									</tr>
								</c:forEach>
							</tbody>
						</table>

						<form method="post">
							<input type="submit" class="btn amado-btn"
								style="background-color: grey"
								formaction="/admin/toNewArticle" value="新增文章">
						</form>
					</div>
				</div>
				
				 <canvas id="myChart" style="width:10;height:10"></canvas>
				
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
										<li class="nav-item"><a class="nav-link"
											href="showAllMember">會員</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/myProjects/showAllEntrusBacktage/1">專案</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/admin/spacereadall.controller">場地</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/admin/showAllcourse">課程</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/admin/testBackstage">測驗</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/admin/forumBackstage">論壇</a></li>
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
	<!-- dataTable -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<!-- Datatable -->
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.js"></script>
	<script>
		
			$(document).ready( function () {
			    $('#myTable').dataTable({
			        "bInfo" : false
			    });
			} );
	
		$(function() {
			var currentUser;
			//確認使用者是否登入並拿到當前使用者 
			$.ajax({
				type : "get",
				url : "/getCurrentUser.do",
				success : function(member) {
					currentUser = member;
				}
			});

		})

		$.ajax({
			type : 'get',
			url : '/admin/findAll',
			contentType : "application/json; charset=utf-8",
			dataType : 'json',

			success : function(data) {
				if (data.length == 0) {
					$('#content').append("<tr><td style='vertical-align: middle ;flex:auto'><span>目前資料庫沒有資料</span></td></tr>");
				}
			},

			error : function() {
				swal('失敗','搜尋文章發生錯誤','error');
			},

		});
		
		$(function() {
			$('#content').on('click','#delete',function() {
				var articleId = $(this).parent('td').siblings().eq(0).children('span').text();
				var thisDeleteButton = $(this);

				Swal.fire({
					title: '即將刪除此篇文章',
					icon: 'warning',
					showCancelButton: true,
					confirmButtonColor: '#3085d6',
					cancelButtonColor: '#d33',
					confirmButtonText: '確定',
					cancelButtonText: '取消'
				}).then((result) => {
					if (result.value) {
						$.ajax({
							type : 'post',
							url : '/admin/deleteArticle',
							data : {
								articleId : articleId,
							},
							success : function() {
								Swal.fire('刪除成功!');
								thisDeleteButton.parent('td').parent('tr').detach();
							},
							error : function() {
								Swal.fire({
									title: '失敗',
									text: '刪除發生錯誤',
									icon: 'error'
								});
							}
						});
					}
				});
			});
		});
		
		$('#content').on('change','#permissions',function(){
			$.ajax({
				type : 'post',
				url : '/updatePermissions',
				data : {
					articleId : $(this).parent().siblings().eq(0).children().text(),
					status : $(this).val(),
				},

				success : function() {
					Swal.fire('文章狀態更新');
					
					
				},

				error : function() {
					swal('失敗','更新發生錯誤','error');
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