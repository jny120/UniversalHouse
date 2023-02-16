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
<title>Universal House : 後台新增文章</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/logo.png">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<link rel="stylesheet" href="/amado-master/style.css">
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
				<div class="row">

					<div class="col-12" style="margin: auto">

						<div class="checkout_details_area mt-50 clearfix">

							<div class="cart-title" style="text-align: center;">
								<h2>後台管理系統 : 新增文章</h2>
								<hr>
								<p></p>
							</div>

							<form action="#" method="post" id="newForm"
								style="margin-left: 80px" enctype="multipart/form-data">
								
								<input type="hidden" id="quickInsert" name="quickInsert" value="false" />
								<input type="hidden" id="content" name="content" /> 
								<input type="hidden" id="memberPk" name="memberPk" />

								<div style="margin-bottom: 80px" class="col-5">
									<label for="status">隱私狀態</label> <select
										class="w-100 nice-select" id="status" name="status">
										<option value="public" selected>公開</option>
										<option value="hidden">隱藏</option>
										<option value="banned">封禁</option>
										<option value="deleted">被刪除</option>
									</select>
								</div>

								<div style="margin-bottom: 80px" class="col-5">
									<label for="topicName">領域</label> <select
										class="w-100 nice-select" id="topicName" name="topicName">
										<option>設計</option>
										<option>資訊</option>
										<option>文書</option>
										<option>生活</option>
										<option>影視</option>
										<option>顧問</option>
									</select>
								</div>

								<div style="margin-bottom: 30px" class="col-5">
									<label for="thumbUp">喜歡</label> <input type="number"
										class="form-control" id="thumbUp" name="thumbUp" value="0"
										min="0" />
								</div>

								<div style="margin-bottom: 40px" class="col-5">
									<label for="unlike">不喜歡</label> <input type="number"
										class="form-control" id="unlike" name="unlike" value="0"
										min="0" />
								</div>

								<div style="margin-bottom: 40px" class="col-12 mt-100">
									<label for="cover">封面圖片</label> 
									<input type="file" class="btn" name="cover" id="cover" accept="image/gif, image/jpeg, image/png" multiple />
									<div style="float: right; padding-right:500px" id="c" class="preview-container">
										<img style="width:100px;height:100px;display: none;" id="preview" alt="COVER">
									</div>
								</div>

								<div class="col-12 mb-3">
									<label for="title">標題</label> <input type="text"
										class="form-control" id="title" name="title"
										value="${param.title}" required />
								</div>

								<div class="col-12 mb-3">
									<label for="content">內容</label>
									<textarea id="editor" required></textarea>
								</div>

								<div class="cart-btn col-12 mt-100">
									<input type="button" class="btn amado-btn" id="quick" value="一鍵新增" />
									<input type="button" class="btn amado-btn" id="send" value="送出" />
								</div>

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
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script
		src="https://cdn.ckeditor.com/ckeditor5/36.0.0/super-build/ckeditor.js"></script>
	<script type="text/javascript">

		var quickContent = '<p><img class="articleImg" style="-webkit-text-stroke-width:0px;border-radius:5px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:40px 0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;" src="https://d11vq4vh3begny.cloudfront.net/blog_img/9vl/b2729.png" alt=""></p><div class="articleImg" style="-webkit-text-stroke-width:0px;border-radius:5px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:40px 0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;"><figure style="border-width:0px;display:block;font:inherit;margin:0px;padding:0px;text-size-adjust:100%;vertical-align:baseline;"><figcaption style="border-width:0px;color:rgba(0, 0, 0, 0.4);display:block;font-family:inherit;font-size:0.8125em;font-stretch:inherit;font-style:inherit;font-variant:inherit;font-weight:inherit;line-height:inherit;margin:0px;padding:0px;text-size-adjust:100%;vertical-align:baseline;">&nbsp;</figcaption></figure></div><div class="articlePart" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:2;margin:0px 0px 40px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-break:break-all;word-spacing:0px;"><p style="border-width:0px;font:inherit;letter-spacing:0.5px;margin:0px;padding:0px;text-align:justify;text-size-adjust:100%;vertical-align:baseline;">從事室內設計師正職工作一陣子的你，想要轉型跨出接案第一步?以下必備技能請先準備好!</p></div><p><img class="articleImg" style="-webkit-text-stroke-width:0px;border-radius:5px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:40px 0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;" src="https://d11vq4vh3begny.cloudfront.net/blog_img/YE/b4380.png" alt="室內設計基礎理論、客製化能力"></p><div class="articleImg" style="-webkit-text-stroke-width:0px;border-radius:5px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:40px 0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;"><figure style="border-width:0px;display:block;font:inherit;margin:0px;padding:0px;text-size-adjust:100%;vertical-align:baseline;"><figcaption style="border-width:0px;color:rgba(0, 0, 0, 0.4);display:block;font-family:inherit;font-size:0.8125em;font-stretch:inherit;font-style:inherit;font-variant:inherit;font-weight:inherit;line-height:inherit;margin:0px;padding:0px;text-size-adjust:100%;vertical-align:baseline;">室內設計基礎理論、客製化能力</figcaption></figure></div><div class="articleTit" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:0px 0px 10px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;"><h2 class="hl-H3" style="border-width:0px;color:rgb(0, 0, 0);font-family:inherit;font-size:1.5em;font-stretch:inherit;font-style:inherit;font-variant:inherit;line-height:inherit;margin:0px;padding:0px 0px 10px;text-size-adjust:100%;vertical-align:baseline;"><strong>一、室內設計基礎理論</strong></h2></div><div class="articlePart" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:2;margin:0px 0px 40px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-break:break-all;word-spacing:0px;"><p style="border-width:0px;font:inherit;letter-spacing:0.5px;margin:0px;padding:0px;text-align:justify;text-size-adjust:100%;vertical-align:baseline;">室內設計基本硬實力，不斷更新瞭解各種工法知識、多元用料方式與設計新理念等，才能應對各種不同案件。</p></div><div class="articleTit" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:0px 0px 10px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;"><h2 class="hl-H3" style="border-width:0px;color:rgb(0, 0, 0);font-family:inherit;font-size:1.5em;font-stretch:inherit;font-style:inherit;font-variant:inherit;line-height:inherit;margin:0px;padding:0px 0px 10px;text-size-adjust:100%;vertical-align:baseline;"><strong>二、客製化能力</strong></h2></div><div class="articlePart" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:2;margin:0px 0px 40px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-break:break-all;word-spacing:0px;"><p style="border-width:0px;font:inherit;letter-spacing:0.5px;margin:0px;padding:0px;text-align:justify;text-size-adjust:100%;vertical-align:baseline;">客戶層的來源包羅萬象，在喜好與習性上皆不相同，必須就各類型案主需求加以規劃並設計出令案主滿意的作品。</p></div><p><img class="articleImg" style="-webkit-text-stroke-width:0px;border-radius:5px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:40px 0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;" src="https://d11vq4vh3begny.cloudfront.net/blog_img/Gm0/b2731.png" alt="自主提案能力、多元的溝通"></p><div class="articleImg" style="-webkit-text-stroke-width:0px;border-radius:5px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:40px 0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;"><figure style="border-width:0px;display:block;font:inherit;margin:0px;padding:0px;text-size-adjust:100%;vertical-align:baseline;"><figcaption style="border-width:0px;color:rgba(0, 0, 0, 0.4);display:block;font-family:inherit;font-size:0.8125em;font-stretch:inherit;font-style:inherit;font-variant:inherit;font-weight:inherit;line-height:inherit;margin:0px;padding:0px;text-size-adjust:100%;vertical-align:baseline;">自主提案能力、多元的溝通</figcaption></figure></div><div class="articleTit" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:0px 0px 10px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;"><h2 class="hl-H3" style="border-width:0px;color:rgb(0, 0, 0);font-family:inherit;font-size:1.5em;font-stretch:inherit;font-style:inherit;font-variant:inherit;line-height:inherit;margin:0px;padding:0px 0px 10px;text-size-adjust:100%;vertical-align:baseline;"><strong>三、自主提案能力</strong></h2></div><div class="articlePart" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:2;margin:0px 0px 40px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-break:break-all;word-spacing:0px;"><p style="border-width:0px;font:inherit;letter-spacing:0.5px;margin:0px;padding:0px;text-align:justify;text-size-adjust:100%;vertical-align:baseline;">主動出擊提案是提升接案成功率的核心，且能提高在接案市場的競爭力，被動等案主找不如學習積極提案。</p></div><div class="articleTit" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:0px 0px 10px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;"><h2 class="hl-H3" style="border-width:0px;color:rgb(0, 0, 0);font-family:inherit;font-size:1.5em;font-stretch:inherit;font-style:inherit;font-variant:inherit;line-height:inherit;margin:0px;padding:0px 0px 10px;text-size-adjust:100%;vertical-align:baseline;"><strong>四、多元的溝通</strong></h2></div><div class="articlePart" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:2;margin:0px 0px 40px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-break:break-all;word-spacing:0px;"><p style="border-width:0px;font:inherit;letter-spacing:0.5px;margin:0px;padding:0px;text-align:justify;text-size-adjust:100%;vertical-align:baseline;">室內設計師所面對的不單只是案主，還有各種工班工種，在多元的合作環境下切換不同溝通方式是必備能力之一。</p></div><p><img class="articleImg" style="-webkit-text-stroke-width:0px;border-radius:5px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:40px 0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;" src="https://d11vq4vh3begny.cloudfront.net/blog_img/KJG/b2732.png" alt="趨勢洞察能力、現場監工能力"></p><div class="articleImg" style="-webkit-text-stroke-width:0px;border-radius:5px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:40px 0px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;"><figure style="border-width:0px;display:block;font:inherit;margin:0px;padding:0px;text-size-adjust:100%;vertical-align:baseline;"><figcaption style="border-width:0px;color:rgba(0, 0, 0, 0.4);display:block;font-family:inherit;font-size:0.8125em;font-stretch:inherit;font-style:inherit;font-variant:inherit;font-weight:inherit;line-height:inherit;margin:0px;padding:0px;text-size-adjust:100%;vertical-align:baseline;">趨勢洞察能力、現場監工能力</figcaption></figure></div><div class="articleTit" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:0px 0px 10px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;"><h2 class="hl-H3" style="border-width:0px;color:rgb(0, 0, 0);font-family:inherit;font-size:1.5em;font-stretch:inherit;font-style:inherit;font-variant:inherit;line-height:inherit;margin:0px;padding:0px 0px 10px;text-size-adjust:100%;vertical-align:baseline;"><strong>五、趨勢洞察能力</strong></h2></div><div class="articlePart" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:2;margin:0px 0px 40px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-break:break-all;word-spacing:0px;"><p style="border-width:0px;font:inherit;letter-spacing:0.5px;margin:0px;padding:0px;text-align:justify;text-size-adjust:100%;vertical-align:baseline;">熟悉建材的運用，才能瞭解工地用料是否符合你的設計，並適時更新分析場趨勢及建案市場走向。</p></div><div class="articleTit" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:inherit;margin:0px 0px 10px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-spacing:0px;"><h2 class="hl-H3" style="border-width:0px;color:rgb(0, 0, 0);font-family:inherit;font-size:1.5em;font-stretch:inherit;font-style:inherit;font-variant:inherit;line-height:inherit;margin:0px;padding:0px 0px 10px;text-size-adjust:100%;vertical-align:baseline;"><strong>六、現場監工能力</strong></h2></div><div class="articlePart" style="-webkit-text-stroke-width:0px;border-width:0px;color:rgb(0, 0, 0);font-family:&quot;Noto Sans TC&quot;, Arial, Helvetica, &quot;Microsoft JhengHei&quot;, sans-serif;font-size:16px;font-stretch:inherit;font-style:normal;font-variant-caps:normal;font-variant-east-asian:inherit;font-variant-ligatures:normal;font-variant-numeric:inherit;font-weight:400;letter-spacing:normal;line-height:2;margin:0px 0px 40px;orphans:2;padding:0px;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-size-adjust:100%;text-transform:none;vertical-align:baseline;white-space:normal;widows:2;word-break:break-all;word-spacing:0px;"><p style="border-width:0px;font:inherit;letter-spacing:0.5px;margin:0px;padding:0px;text-align:justify;text-size-adjust:100%;vertical-align:baseline;">實際熟悉工地上的所有細節流程並親自監工把關，掌握整體建案進度與每個流程的順暢度。</p></div>';
	
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

	
	
	CKEDITOR.ClassicEditor.create(document.getElementById("editor"), {
        toolbar: {
            items: [
                'heading','bold', 'italic', 'strikethrough', 'underline', 'removeFormat', '|',
                'bulletedList', 'numberedList', 'todoList', '|', 'outdent', 'indent', '|','undo', 'redo','-',
                'fontSize', 'fontFamily', 'fontColor', 'fontBackgroundColor', 'highlight', '|',
                'alignment', '|',
                'link', 'insertImage', 'blockQuote', 'insertTable', 'mediaEmbed', 'codeBlock',
                'specialCharacters', 'horizontalLine'
            ],
            shouldNotGroupWhenFull: true
        },

        list: {
            properties: {
                styles: true,
                startIndex: true,
                reversed: true
            }
        },

        heading: {
            options: [
                { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' },
                { model: 'heading5', view: 'h5', title: 'Heading 5', class: 'ck-heading_heading5' },
                { model: 'heading6', view: 'h6', title: 'Heading 6', class: 'ck-heading_heading6' }
            ]
        },

        placeholder: '',

        fontFamily: {
            options: [
                'default',
                'Arial, Helvetica, sans-serif',
                'Courier New, Courier, monospace',
                'Georgia, serif',
                'Lucida Sans Unicode, Lucida Grande, sans-serif',
                'Tahoma, Geneva, sans-serif',
                'Times New Roman, Times, serif',
                'Trebuchet MS, Helvetica, sans-serif',
                'Verdana, Geneva, sans-serif'
            ],
            supportAllValues: true
        },

        fontSize: {
            options: [10, 12, 14, 'default', 18, 20, 22],
            supportAllValues: true
        },

        htmlSupport: {
            allow: [
                {
                    name: /.*/,
                    attributes: true,
                    classes: true,
                    styles: true
                }
            ]
        },

        htmlEmbed: {
            showPreviews: true
        },

        link: {
            decorators: {
                addTargetToExternalLinks: true,
                defaultProtocol: 'https://',
                toggleDownloadable: {
                    mode: 'manual',
                    label: 'Downloadable',
                    attributes: {
                        download: 'file'
                    }
                }
            }
        },

        mention: {
            feeds: [
                {
                    marker: '@',
                    feed: [
                        '@apple', '@bears', '@brownie', '@cake', '@cake', '@candy', '@canes', '@chocolate', '@cookie', '@cotton', '@cream',
                        '@cupcake', '@danish', '@donut', '@dragée', '@fruitcake', '@gingerbread', '@gummi', '@ice', '@jelly-o',
                        '@liquorice', '@macaroon', '@marzipan', '@oat', '@pie', '@plum', '@pudding', '@sesame', '@snaps', '@soufflé',
                        '@sugar', '@sweet', '@topping', '@wafer'
                    ],
                    minimumCharacters: 1
                }
            ]
        },

        removePlugins: [
            'CKBox',
            'CKFinder',
            'EasyImage',
            'RealTimeCollaborativeComments',
            'RealTimeCollaborativeTrackChanges',
            'RealTimeCollaborativeRevisionHistory',
            'PresenceList',
            'Comments',
            'TrackChanges',
            'TrackChangesData',
            'RevisionHistory',
            'Pagination',
            'WProofreader',
            'MathType'
        ]
    }).then(editor => {
    	
    	$('#demoImage').hide();
    	
    	$('#quick').click(function () {
   			if($('#quickInsert').attr('value') != "true"){
   				$('#title').attr('value','你渴望力量嗎?Java，新時代的最佳夥伴');
   				$('#c').append('<div id="ocaImage"><img style="width:100px;height:100px;" id="demoImage" src="/images/forum/OneClickAdd.png"/></div>');
				editor.setData(quickContent);

				$('#quickInsert').attr('value','true');
        		$('#demoImage').show();
        		$('#cover').hide();
        		
   			} else {
   				
   				$('#title').attr('value','');
				editor.setData('');

				$('#quickInsert').attr('value','false');
        		$('#ocaImage').remove();
        		$('#cover').show();
   			}
       	});
    	
    	$('#newForm').on('click','#send',function(){
			
    		Swal.fire({
    			title: '即將新增文章',
    			text: "確定要送出？",
    			icon: 'warning',
    			showCancelButton: true,
    			confirmButtonColor: '#3085d6',
    			cancelButtonColor: '#d33',
    			confirmButtonText: '確定',
    			cancelButtonText: '取消',
    		}).then((result) => {
    			if (result.value) {
    				$('#content').attr('value', editor.getData());
    				
    				var newForm = new FormData($('#newForm')[0]);
    				
    				$.ajax({
    					type : 'post',
    					url : '/admin/newArticle',
    					enctype : 'multipart/form-data',
    					data : newForm,
    					contentType: false,
    					cache: false,
    					processData: false,
    					
    					success : function(article) {
    						Swal.fire({
    							title: '新增成功！',
    							text: "將跳轉回後台",
    							icon: 'success',
    						}).then(function(){
    							location.assign('forumBackstage');
    						});
    					},
    			
    					error : function() {
    						Swal.fire({
    							title: '新增失敗！',
    							text: "請稍後再試",
    							icon: 'error',
    						});
    					}
    					
    				});
    			}
    		});
    	});
    });		

	$('#cover').change(function () {
        if (!this.files.length) {
            $('#preview').hide();
            return;
        }
        const file = this.files[0];
        const reader = new FileReader();

        reader.onload = function (e) {
            $('#preview').attr('src', e.target.result);
            $('#preview').show();
        };

        reader.readAsDataURL(file);
    });
	
	</script>
</body>
</html>