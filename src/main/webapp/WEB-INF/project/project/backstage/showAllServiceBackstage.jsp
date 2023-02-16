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
<title>管理所有服務案件</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/style.css">

<!-- 中文字style -->
<style>

/* 字型import */
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&family=Tourney:wght@100&display=swap')
	;

/* 字型套用 */
body {
	font-family: 'Noto Sans TC', sans-serif;
}

.titleStyle {
	font-family: 'Roboto', sans-serif;
	font-size: 20px;
}

.titleStyle li ul li {
	font-family: 'Noto Sans TC', sans-serif;
	font-size: 20px;
}

.fontSize {
	font-family: 'Noto Sans TC', sans-serif;
	font-size: 20px;
}

.main-content-wrapper .header-area .amado-nav li a {
	font-size: 20px;
}

/* 按鈕移入css */
.font-size2 :hover {
	color: #FBB710;
}

.main-content-wrapper .header-area .amado-nav li a::after {
	background-color: #212529;
}

/* 按鈕樣式 */
.cartButton {
	border: 0;
	background-color: #f5f7fa;
	font-size: 14px;
	width: 70px;
	height: 30px;
	margin-right: 10px;
	box-shadow: 0 0 10px 0.5px lightgray;
}

/* 下拉式選單css */
.showShopSideBar1 {
	background-color: #f5f7fa;
	padding: 10px;
}

.showShopSideBar2 {
	background-color: #f5f7fa;
	padding: 10px;
}

.cart {
	margin-top: 25px;
}

/* 右側畫面置中及大小控制 */
.main-content-wrapper .amado_product_area {
	position: relative;
	z-index: 1;
	-webkit-box-flex: 0;
	-ms-flex: 0 0 calc(95% - 550px);
	flex: 0 0 calc(95% - 300px);
	width: calc(95% - 300px);
	max-width: calc(95% - 300px);
	margin-left: auto;
	margin-right: auto;
	margin-top: 100px;
}

.main-content-wrapper .cart-table-area {
	position: relative;
	z-index: 1;
	-webkit-box-flex: 0;
	-ms-flex: 0 0 calc(95%);
	flex: 0 0 calc(95%);
	width: calc(95%);
	max-width: calc(95%);
	margin: auto;
}

/* 左側欄位大小控制  */
.main-content-wrapper .header-area {
	height: 1100px;
}

.amado-nav {
	height: 600px
}

/* 表格欄位大小控制 */
.cart_product_ins {
	width: 35%;
}

.cart_product_img {
	width: 10%;
}

.cart_product_desc {
	width: 20%;
	height: 100%;
}

.price {
	height: 100%;
	padding-top: 50%;
}

.product-topbar .total-products p {
	margin: 0;
}

.theadColor {
	background-color: rgb(225, 225, 225);
}

.theadColor tr th {
	font-size: 14px;
	padding: 5px;
	text-align: center;
}

.cart-table {
	height: 750px;
}

.qty {
	width: auto;
}

.lastupdate {
	width: 20%;
}

.table td {
	text-align: center;
}

.main-content-wrapper .header-area {
	color: white;
}

.main-content-wrapper .header-area .amado-nav li a {
	color: white;
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
					<li class="active"><a href="/">首頁</a></li>
					<li><a href="/admin/showAllMember">會員</a></li>
					<li><a href="/admin/projects/showAllEntrusBacktage/1">專案</a>
						<ul>

							<li><a href="/admin/projects/showAllEntrusBacktage/1">管理所有委託案件</a></li>
							<li><a href="/admin/projects/saveEntrusAction">新增委託案件</a></li>
							<li><a href="/admin/projects/showAllServiceBacktage/1">管理所有服務案件</a></li>
							<li><a href="/admin/projects/saveServiceAction">新增服務案件</a></li>
						</ul></li>
					<li><a href="/admin/spacereadall.controller">場地租借</a></li>
					<li><a href="/admin/showAllcourse">課程</a></li>
					<li><a href="/admin/testBackstage">測驗</a></li>
					<li><a href="/admin/forumBackstage">論壇</a></li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100">
				<a href="/projects/showAllEntrusFront/1" class="btn amado-btn mb-15">返回前台</a>
			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100"></div>
		</header>
		<!-- Header Area End -->

		<div class="amado_product_area">
			<div class="container-fluid">

				<div class="row">
					<div class="col-12">
						<div
							class="product-topbar d-xl-flex align-items-end justify-content-between">
							<!-- Total Products -->
							<div class="total-products">
								<h5>管理所有服務案件</h5>
							</div>
							<!-- Sorting -->
							<div class="product-sorting d-flex">
								<div class="sort-by-date d-flex align-items-center"></div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-12 col-sm-6">
						<form action="/admin/projects/selectAllServiceBackstage/1">
							<input type="text" name="findPJName" placeholder="　請輸入專案名稱"
								class="ip1"><span> </span><input class="cartButton"
								type="submit" value="確認">
						</form>
					</div>
					<div class="col-12 col-sm-6">
						<form action="#" id="form2" style="text-align: right">
							<input type="submit" form="form2" id="putOn" class="cartButton"
								value="上架" onclick="isOK()" /> <input type="submit"
								form="form2" id="putOn" class="cartButton" value="下架"
								onclick="isNO()" />
						</form>
					</div>
				</div>
				<hr />


				<div class="cart-table clearfix">

					<table class="table table-responsive col-12">
						<c:if test="${ empty project}">
							<h5 style="text-align: center">查無案件資料</h5>
						</c:if>
						<c:if test="${not empty project}">
							<thead class="theadColor">
								<tr>
									<th class="col-md-1"><input type="checkbox" id="checkAll"></th>
									<th class="col-md-1">編號</th>
									<th class="col-md-4">名稱</th>
									<th class="col-md-2">會員帳號</th>
									<th class="col-md-2">報價</th>
									<th class="col-md-1">狀態</th>
									<th class="col-md-1">
										<!-- 我要報價 -->
									</th>
								</tr>
							</thead>
							<tbody id="tb">
								<c:forEach var="pj" items="${project}">
									<tr>
										<td><input type="checkbox" name="divide[]"
											class="checkTd" value="${pj.pjID}" /></td>
										<td>${pj.pjID}</td>
										<td class="cart_product_ins"><a
											href="/admin/projects/projectBackstage/${pj.pjID}"
											class="font-size2"><h6>${pj.pjName}</h6></a></td>
										<td class="lastupdate">${pj.member.memberId}</td>
										<td class="cart_product_desc">${pj.pjPrice}</td>
										<td class="cart_product_img">${pj.pjStatus}</td>
										<td class="qty"><input id="delete" class="cartButton"
											type="button" value="刪除" /></td>
									</tr>
								</c:forEach>
						</c:if>
						</tbody>
					</table>
				</div>

				<div class="row">
					<div class="col-12">
						<!-- Pagination -->
						<nav aria-label="navigation">
							<ul class="pagination justify-content-end mt-50">
								<c:forEach var="i" begin="1" end="${totalPages}" step="1">
									<li class="page-item"><a class="page-link" href="${i}">${i}</a></li>
								</c:forEach>
								<li style="text-align: center; padding: 10px; font-size: 10px">${nowPage}/${totalPages}</li>
							</ul>
						</nav>
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
										<li class="nav-item"><a class="nav-link"
											href="memberBackstage">Member</a></li>
										<li class="nav-item"><a class="nav-link"
											href="spaceBackstage">Space</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/admin/projects/showAllEntrusBacktage/1">Project</a></li>
										<li class="nav-item"><a class="nav-link"
											href="testBackStage">Test</a></li>
										<li class="nav-item"><a class="nav-link"
											href="forumBackstage">Forum</a></li>
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
	<!-- 我額外增加的script -->
	<script>
		if ($('#showShopSideBar1').show()) {
			$('#showShopSideBar2').hide();
		} else if ($('#showShopSideBar2').show()) {
			$('#showShopSideBar1').hide();
		}

		$('#openShopSideBar1').mouseover(function() {
			$('#showShopSideBar1').show();
		})

		$('#openShopSideBar1').mouseout(function() {
			$('#showShopSideBar1').hide();
		})

		$('#showShopSideBar1').mouseover(function() {
			$(this).show();
		})

		$('#showShopSideBar1').mouseout(function() {
			$(this).hide();
		})

		$('#openShopSideBar2').mouseover(function() {
			$('#showShopSideBar2').show();
		})

		$('#openShopSideBar2').mouseout(function() {
			$('#showShopSideBar2').hide();
		})

		$('#showShopSideBar2').mouseover(function() {
			$(this).show();
		})

		$('#showShopSideBar2').mouseout(function() {
			$(this).hide();
		})

		$('#tb').on('click', '#delete', function() {
			var yes = confirm('確定要刪除嗎？');

			if (yes) {
				var pjID = $(this).parent().siblings().eq(1).text();
				console.log(pjID);
				$.ajax({
					type : 'post',
					url : '/admin/projects/deleteProject',
					data : {
						pjID : pjID,
					},

					success : function() {
						alert("刪除成功，請重新整理")
					}
				});
			}
		})

		let content = $('.content').length;
		$('#tb').on('click', '.checkTd', function() {
			if ($(this).prop('checked')) {
				$(this).closest('tr').addClass('active')
			} else {
				$(this).closest('tr').removeClass('active')
			}

			let checkContent = $('tr.active').length;

			if (content == checkContent) {
				$('#checkAll').prop('checked', true);
			} else {
				$('#checkAll').prop('checked', false);
			}
		})

		$('#checkAll').on(
				'click',
				function() {
					if ($(this).prop('checked')) {
						$('.checkTd').prop('checked', true).closest('tr')
								.addClass('active')
					} else {
						$('.checkTd').prop('checked', false).closest('tr')
								.removeClass('active')
					}
				})

		function isOK() {
			var divs = $("input[name='divide[]']:checked").map(function() {
				return $(this).val();
			}).get();
			for (let i = 0; i < divs.length; i++) {
				var pjID = divs[i];
				var pjStatus = "上架中";

				$.ajax({
					type : 'POST',
					url : '/admin/projects/updateProject',
					data : {
						pjID : pjID,
						pjStatus : pjStatus
					}
				});
			}
			alert("上架成功，請重新整理")
		}

		function isNO() {
			var divs = $("input[name='divide[]']:checked").map(function() {
				return $(this).val();
			}).get();
			for (let i = 0; i < divs.length; i++) {
				var pjID = divs[i];
				var pjStatus = "已下架";

				$.ajax({
					type : 'POST',
					url : '/admin/projects/updateProject',
					data : {
						pjID : pjID,
						pjStatus : pjStatus
					}
				});
			}
			alert("下架成功，請重新整理")
		}
	</script>
</body>

</html>