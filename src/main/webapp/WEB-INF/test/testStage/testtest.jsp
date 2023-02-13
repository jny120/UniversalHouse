<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<style type="text/css">
th, td {
	word-break: break-all;
}

.image-upload>input {
	display: none;
}

.summary-table form {
	font-size: 14px;
}

.col-lg-9 {
	-ms-flex: 0 0 100%;
	flex: 0 0 100%;
	max-width: 100%;
}

.section-padding-100 {
	-ms-flex: 0 0 100%;
	flex: 0 0 100%;
	max-width: 100%;
}

.clearfix {
	-ms-flex: 0 0 100%;
	flex: 0 0 100%;
	max-width: 100%;
}

.main-content-wrapper .cart-table-area {
	-ms-flex: 0 0 calc(100% - 320px);
	flex: 0 0 calc(100% - 320px);
	width: calc(100% - 320px);
	max-width: calc(100% - 320px);
}
</style>
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

				<a href="/"><img width="150px" height="150px"
					src="/amado-master/img/core-img/newLogo.png" alt=""></a>
			</div>
			<!-- Amado Nav -->
			<nav class="amado-nav">
				<ul>
					<li><a href="memberBackstage" style="color: white">Member</a></li>
					<li><a href="spaceBackstage" style="color: white">Space</a></li>
					<li><a href="testBackstage" style="color: white">Test</a></li>
					<li><a href="/myProjects/showAllEntrusBacktage/1" style="color: white">Project</a></li>
					<li><a href="forumBackstage" style="color: white">Forum</a></li>
				</ul>
			</nav>

		</header>
		<!-- Header Area End -->

		<!-- 從這邊開始寫-->
		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12  ">

						<div class="cart-title mt-50">
							<h1>TEST (Admin)</h1>

						</div>


						<div style="margin-bottom: 25px;">
							<form action="/insertTest" enctype="multipart/form-data"
								method="GET">
								<input type="submit" value="新增功能">&ensp;&ensp;<input
									type="button" value="圖庫" id="images">
							</form>


						</div>

						<!-- <li><a href="<c:url value='/PushCsv' />">題目</a></li>
          <li><a href="<c:url value='/ImgMaintain.controller' />">照片</a></li> -->

						<form id="form" enctype="multipart/form-data" method="POST">

							<div>

								&ensp; 題庫&ensp;<select name="field" id="sb">
									<option value="心理測驗">心理測驗</option>
									<option value="智力測驗">智力測驗</option>
									<option value="3">魷魚遊戲</option>
									<option value="4">星座測驗</option>
									<option value="5">小小試題</option>
								</select>

								<button type="button" value="送出" id="bt">送出</button>
							</div>

							<table class="table table-responsive" id="testTable" tabindex="1"
								style="table-layout: fixed; outline: none;">

								<thead id="theads" class="" style="display: flex;">

									<tr>
									</tr>
								</thead>

								<tbody id="tests">

								</tbody>

							</table>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- 這邊結束 -->

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
											href="memberBackstage">Member</a></li>
										<li class="nav-item"><a class="nav-link"
											href="spaceBackstage">Space</a></li>
										<li class="nav-item"><a class="nav-link"
											href="projectBackStage">Project</a></li>
										<li class="nav-item"><a class="nav-link"
											href="testBackstage">Test</a></li>
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
</body>
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
<script>
	$(function() {

		$('#images').on('click', function() {
			window.location.href = '/ImgMaintain.controller'
		})

		const testCenterBean = {
			testPk : "",
			testId : "",
			examinationQuestion : "",
			field : "",
			options : "",
			options2 : "",
			options3 : "",
			options4 : "",
		}

		//delete
		$('tbody')
				.on(
						'click',
						'.delete',
						function() {
							let testId = $(this).parent().siblings().eq(0)
									.text();
							$.ajax({
								type : "post",
								url : "deleteTest.do",
								data : {
									testId : testId,
								},
								async : false,
								success : function() {
									Swal.fire("response success");
									// $('html').load(location.href);
								},
								error : function() {
									Swal.fire("response error")
								}
							})
							$('#theads').empty();
							$('#tests').empty();

							let testStr = '<th style="flex: auto;" class="testPk">testPk</th><th style="flex: auto;" class="testId">testId</th><th style="flex: auto;" class="examinationQuestion">Question</th><th style="flex: auto;" class="field">field</th><th style="flex: auto;" class="options">options</th><th style="flex: auto;" class="options2">options2</th><th style="flex: auto;" class="options3">options3</th><th style=" flex: auto;"class="options4">options4</th><th style=" flex: auto;"class="modify">modify</th>';

							if ($('.testPk').length === 0) {
								$('#testTable thead').append(testStr);
							} else {
								null
							}

							data = $('#sb').val();
							// console.log(data);
							var tests;
							// console.log('test')
							$
									.ajax({
										type : "POST",
										url : "ShowTestServlet.controller",
										data : {
											field : data
										},
										success : function(result) {
											// attr('123')
											// console.log(result)
											$
													.each(
															result,
															function(i, test) {
																$(
																		'#testTable tbody')
																		.append(
																				'<tr id= tr' + i + '>');
																console
																		.log(test.testPk)
																testsStr = '<td style="vertical - align: middle; flex:20%;" class="testPk"><span>'
																		+ test.testPk
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:23%;" class="testId"><span>'
																		+ test.testId
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:22%;" class="examinationQuestion"><span>'
																		+ test.examinationQuestion
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:20%;" class="field"><span>'
																		+ test.field
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:23%;" class="options"><span>'
																		+ test.options
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:25%;" class="options2"><span>'
																		+ test.options2
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:20%;" class="options3"><span>'
																		+ test.options3
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:30%;" class="options4"><span>'
																		+ test.options4
																		+ '</span></td>'
																		+

																		'<td style="flex:20%"><input type="button" class="btn toModifyMode"  value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

																$(
																		'#testTable tbody tr')
																		.eq(i)
																		.append(
																				testsStr);

															})

										},
										error : function() {
											attr('321')
										}

									})

						})

		var testCenterBean1 = Object.create(testCenterBean);
		//修改ajax
		$('tbody')
				.on(
						'click',
						'.toModifyMode',
						function() {
							//將testCenter資訊先存起來，修改完後交回
							$('.toModifyMode').removeClass('toModifyMode')
									.addClass('modifying');
							testCenterBean1.testPk = $(this).parent()
									.siblings().eq(0).text();
							testCenterBean1.testId = $(this).parent()
									.siblings().eq(1).text();
							testCenterBean1.examinationQuestion = $(this)
									.parent().siblings().eq(2).text();
							testCenterBean1.field = $(this).parent().siblings()
									.eq(3).text();
							testCenterBean1.options = $(this).parent()
									.siblings().eq(4).text();
							testCenterBean1.options2 = $(this).parent()
									.siblings().eq(5).text();
							testCenterBean1.options3 = $(this).parent()
									.siblings().eq(6).text();
							testCenterBean1.options4 = $(this).parent()
									.siblings().eq(7).text();

							//將表格改成 <input>
							$(this)
									.parent()
									.siblings()
									.eq(0)
									.html(
											'<input type="text" name="testPk" id="testPk" readonly="readonly">');
							$('#testPk').attr("value", testCenterBean1.testPk);
							$(this)
									.parent()
									.siblings()
									.eq(1)
									.html(
											'<input type="text" name="testId" id="testId" readonly="readonly">');
							$('#testId').attr("value", testCenterBean1.testId);
							$(this)
									.parent()
									.siblings()
									.eq(2)
									.html(
											'<input type="text" name="examinationQuestion" id="examinationQuestion">');
							$('#examinationQuestion').attr("value",
									testCenterBean1.examinationQuestion);

							$(this)
									.parent()
									.siblings()
									.eq(3)
									.html(
											'<input type="text" name="field" id="field" disabled="disabled">');
							$('#field').attr("value", testCenterBean1.field);

							$(this)
									.parent()
									.siblings()
									.eq(4)
									.html(
											'<input type="text" name="options" id="options">');
							$('#options')
									.attr("value", testCenterBean1.options);

							$(this)
									.parent()
									.siblings()
									.eq(5)
									.html(
											'<input type="text" name="options2" id="options2">');
							$('#options2').attr("value",
									testCenterBean1.options2);

							$(this)
									.parent()
									.siblings()
									.eq(6)
									.html(
											'<input type="text" name="options3" id="options3">');
							$('#options3').attr("value",
									testCenterBean1.options3);

							$(this)
									.parent()
									.siblings()
									.eq(7)
									.html(
											'<input type="text" name="options4" id="options4">');
							$('#options4').attr("value",
									testCenterBean1.options4);

							$(this)
									.parent()
									.html(
											'<input type="button" id="modifyConfirm" value="確認修改" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button"  value="取消" id="modifyCancle" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;">');
						})

		$('tbody')
				.on(
						'click',
						'#modifyCancle',
						function() {
							$('.modifying').removeClass('modifying').addClass(
									'toModifyMode');
							$(this).parent().siblings().eq(0).text(
									testCenterBean1.testPk);
							$(this).parent().siblings().eq(1).text(
									testCenterBean1.testId);
							$(this).parent().siblings().eq(2).text(
									testCenterBean1.examinationQuestion);
							$(this).parent().siblings().eq(3).text(
									testCenterBean1.field);
							$(this).parent().siblings().eq(4).text(
									testCenterBean1.options);
							$(this).parent().siblings().eq(5).text(
									testCenterBean1.options2);
							$(this).parent().siblings().eq(6).text(
									testCenterBean1.options3);
							$(this).parent().siblings().eq(7).text(
									testCenterBean1.options4);
							$(this)
									.parent()
									.html(
											'<input type="button" class="toModifyMode" value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;">');
						})

		//創建
		$('#bt')
				.on(
						'click',
						function() {
							$('#theads').empty();
							$('#tests').empty();

							let testStr = '<th style="flex: auto;" class="testPk">testPk</th><th style="flex: auto;" class="testId">testId</th><th style="flex: auto;" class="examinationQuestion">Question</th><th style="flex: auto;" class="field">field</th><th style="flex: auto;" class="options">options</th><th style="flex: auto;" class="options2">options2</th><th style="flex: auto;" class="options3">options3</th><th style=" flex: auto;"class="options4">options4</th><th style=" flex: auto;"class="modify">modify</th>';

							if ($('.testPk').length === 0) {
								$('#testTable thead').append(testStr);
							} else {
								null
							}

							data = $('#sb').val();
							// console.log(data);
							var tests;
							// console.log('test')
							$
									.ajax({
										type : "POST",
										url : "ShowTestServlet.controller",
										data : {
											field : data
										},
										success : function(result) {
											// attr('123')
											// console.log(result)
											$
													.each(
															result,
															function(i, test) {
																$(
																		'#testTable tbody')
																		.append(
																				'<tr id= tr' + i + '>');
																console
																		.log(test.testPk)
																testsStr = '<td style="vertical - align: middle; flex:20%;" class="testPk"><span>'
																		+ test.testPk
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:23%;" class="testId"><span>'
																		+ test.testId
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:22%;" class="examinationQuestion"><span>'
																		+ test.examinationQuestion
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:20%;" class="field"><span>'
																		+ test.field
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:23%;" class="options"><span>'
																		+ test.options
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:25%;" class="options2"><span>'
																		+ test.options2
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:20%;" class="options3"><span>'
																		+ test.options3
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:30%;" class="options4"><span>'
																		+ test.options4
																		+ '</span></td>'
																		+

																		'<td style="flex:20%"><input type="button" class="btn toModifyMode"  value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

																$(
																		'#testTable tbody tr')
																		.eq(i)
																		.append(
																				testsStr);

															})

										},
										error : function() {
											attr('321')
										}

									})
						})
		//修改ajax      // alert("修改成功，請重新整理");
		$('tbody')
				.on(
						'click',
						'#modifyConfirm',
						function() {

							var form = $('#form')[0];
							var formData = new FormData(form);
							console.log(form)
							$.ajax({
								type : "POST",
								url : '/admin/UpdataTest.controller',

								data : formData,
								contentType : false,
								cache : false,
								processData : false,
								async : false,
								success : function(response) {
									alert("response success");

								}
							})
							// $('#theads').empty();
							$('#tests').empty();

							data = $('#sb').val();
							// console.log(data);
							var tests;
							// console.log('test')
							$
									.ajax({
										type : "POST",
										url : "ShowTestServlet.controller",
										data : {
											field : data
										},
										success : function(result) {
											// attr('123')
											// console.log(result)
											$
													.each(
															result,
															function(i, test) {
																$(
																		'#testTable tbody')
																		.append(
																				'<tr id= tr' + i + '>');
																console
																		.log(test.testPk)
																testsStr = '<td style="vertical - align: middle; flex:20%;" class="testPk"><span>'
																		+ test.testPk
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:23%;" class="testId"><span>'
																		+ test.testId
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:22%;" class="examinationQuestion"><span>'
																		+ test.examinationQuestion
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:20%;" class="field"><span>'
																		+ test.field
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:23%;" class="options"><span>'
																		+ test.options
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:25%;" class="options2"><span>'
																		+ test.options2
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:20%;" class="options3"><span>'
																		+ test.options3
																		+ '</span></td>'
																		+

																		'<td style="vertical - align: middle; flex:30%;" class="options4"><span>'
																		+ test.options4
																		+ '</span></td>'
																		+

																		'<td style="flex:20%"><input type="button" class="btn toModifyMode"  value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

																$(
																		'#testTable tbody tr')
																		.eq(i)
																		.append(
																				testsStr);

															})

										},
										error : function() {
											attr('321')
										}

									})
						})

	});
</script>
</body>

</html>