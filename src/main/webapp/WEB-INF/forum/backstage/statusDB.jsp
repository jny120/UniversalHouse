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
<title>Universal House : 狀態資料庫</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/logo.png">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/style.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.css">
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
					<li><a href="/myProjects/showAllEntrusBacktage/1">專案</a></li>
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
						<form id="form" enctype="multipart/form-data" method="post">

							<table class="table table-responsive" id="myTable">

								<thead>
									<tr>
										<th style="flex: 8%">文章編號</th>
										<th style="flex: 8%">會員編號</th>
										<th style="flex: 8%">檢舉狀態</th>
										<th style="flex: 8%">檢舉內容</th>
										<th style="flex: 8%">更新</th>
										<th style="flex: 8%">刪除紀錄</th>
									</tr>
								</thead>

								<tbody id="content">
									<c:choose>

										<c:when test="${empty status}">
											<tr>
												<td><span>目前資料庫沒有資料</span></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</c:when>

										<c:otherwise>
											<c:forEach var="status" varStatus="stat" items="${status}">

												<tr id="${stat.index}">
													<td style="vertical-align: middle; flex: auto"><span>${status.articleId}</span></td>
													<td style="vertical-align: middle; flex: auto"><span>${status.memberPk}</span></td>
													<td style="vertical-align: middle; flex: auto"><span>${status.reported}</span></td>
													<td style="vertical-align: middle; flex: auto"><span>${status.reportedReason}</span></td>
													<td style="vertical-align: middle; flex: auto"><input type="button" id="update" value="更新檢舉狀態" style="font-size: 10px; margin: 3px; width: 100%; height: 40px; white-space: normal"></td>
													<td style="vertical-align: middle; flex: auto"><input type="button" id="delete" value="刪除紀錄" style="background-color:#FF7575;background-color:red;font-size: 10px; margin: 3px; width: 100%; height: 40px; white-space: normal"></td>
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
								<input type="submit" class="btn amado-btn"
									style="background-color: grey; float: right"
									formaction="/admin/forumBackstage" value="返回" />
							</form>
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
	<script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
	
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.js"></script>
	
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
	
	$(document).ready( function () {
	    $('#myTable').dataTable({
	        "bInfo" : false
	    });
	} );
	
	$('#content').on('click', '#update', function() {
		  var thisDeleteButton= $(this); 
		  var articleId = thisDeleteButton.parent().siblings().eq(0).text(); 
		  var memberPk = thisDeleteButton.parent().siblings().eq(1).text(); 

		  Swal.fire({
		    title: "更新檢舉狀態",
		    text: "確定更新檢舉狀態嗎?",
		    icon: "question",
		    showCancelButton: true,
		    confirmButtonColor: "#3085d6",
		    cancelButtonColor: "#d33",
		    confirmButtonText: "確定",
		    cancelButtonText: "取消"
		  }).then((result) => {
		    if (result.value) {
		      $.ajax({ 
		        type : 'post', 
		        url :'/updateStatus', 
		        data : {
		          reported : 0,
		          articleId : articleId,
		          memberPk : memberPk,
		        },

		        success : function() { 
		          Swal.fire({
		            title: "更新成功",
		            text: "更新成功!",
		            icon: "success"
		          });
		          thisDeleteButton.parent().siblings().eq(2).children('span').text('0');
		          if($('#content').children('tr').first().children('td').text() == ""){
		            $('#content').append('<tr><td><span>目前資料庫沒有資料</span></td></tr>');
		          }
		        },

		        error : function(thrownError) { 
		          Swal.fire({
		            title: "更新失敗",
		            text: "更新未完成",
		            icon: "error"
		          });
		          console.log(thrownError);
		        }
		      });
		    }
		  });
		});
	
	$('#content').on('click', '#delete', function() { 
		Swal.fire("刪除紀錄");
		$(this).parent().parent('tr').detach();
				
	})
	</script>
</body>

</html>