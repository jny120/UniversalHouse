<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<meta name="description" content="">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

			<!-- Title  -->
			<title>UniversalHouse - Furniture Ecommerce Template | Home</title>

			<!-- Favicon  -->
			<link rel="icon" href="img/core-img/favicon.ico">

			<!-- Core Style CSS -->
			<link rel="stylesheet" href="/amado-master/css/core-style.css">
			<!-- <link rel="stylesheet" href="/amado-master/css/style.css"> -->
			<style>
				@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap');

				body {
					font-family: 'Noto Sans TC', sans-serif;
					font-size: 20px;
				}

				.main-content-wrapper .header-area .amado-nav li a {
					font-family: 'Noto Sans TC', sans-serif;
					font-size: 20px;
				}

				.image-upload>input {
					display: none;
				}

				th,
				td {
					word-break: break-all;
				}

				.image-upload>input {
					display: none;
				}

				.checkout_details_area form .form-control {
					font-size: 20px;
				}

				.checkout_details_area form .nice-select {
					font-size: 20px;
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
									<input type="search" name="search" id="search" placeholder="Type your keyword...">
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
						<a href="/"><img src="/amado-master/img/core-img/logo.png" alt=""></a>
					</div>
					<!-- Amado Nav -->
					<!-- ?????? -->
					<nav class="amado-nav">
						<ul>
							<li class="active"><a href="/">??????</a></li>
							<li><a href="/projects/showAllEntrusFront/1">??????</a></li>
							<li><a href="spaceAdminSystem.controller">????????????</a></li>
							<li><a href="/">??????</a></li>
							<li><a href="/testBackstage">??????</a></li>
							<li><a href="/frontPage">??????</a></li>
						</ul>
					</nav>
					<!-- Button Group -->
					<div class="amado-btn-group mt-30 mb-100" id="loginDiv">
						<a href="/users/memberCenter" id="memberCenterOrBs" class="btn amado-btn mb-15">????????????</a>


					</div>
					<!-- Cart Menu -->
					<div class="cart-fav-search mb-100">

						<a href="/users/chatBox" class="cart-nav"><img src="/images/member/chat2.png" style="width:21px"
								alt="">?????????
						</a>
						<a href="/users/showMemberInfo" class="cart-nav"><img src="/amado-master/img/core-img/cart.png"
								alt="">?????????
						</a>
						<a href="#" class="fav-nav"><img src="/amado-master/img/core-img/favorites.png" alt="">????????????</a>
						<a href="#" class="search-nav"><img src="/amado-master/img/core-img/search.png" alt="">??????</a>
					</div>
					<!-- Social Button -->
					<div class="social-info d-flex justify-content-between">
						<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"><i
								class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-twitter"
								aria-hidden="true"></i></a>
					</div>
				</header>
				<!-- Header Area End -->

				<div class="cart-table-area section-padding-100">
					<div class="container-fluid">
						<div class="row">
							<div class="col-12 col-lg-8">
								<div class="checkout_details_area mt-50 clearfix">

									<div class="cart-title" style="text-align: center;">
										<h2>????????????</h2>
										<hr>
										<p></p>
									</div>

									<form action="#" style="margin-left: 80px;" id="form">
										<div class="row">
											<div class="col-md-6 mb-3">
												<div>
													<label for="memberId">??????: </label> <input type="text"
														class="form-control" id="memberId" readonly name="memberId">
												</div>
												<div>
													<label for="name">??????: </label> <input type="text"
														class="form-control" id="name" name="name">
												</div>
											</div>
											<div class="col-md-6 mb-3">

												<div class="image-upload">
													<label for="memberImage"> <img id="img"
															src="/amado-master/img/core-img/member.png" alt="Product"
															style="width: 100%">
													</label> <input id="memberImage" name="memberImage" type="file">
												</div>

											</div>
											<div class="col-12 mb-3" id="locDiv">
												<label for="location">??????: </label>

											</div>
											<div class="col-12 mb-3">
												<div class="col-12 mb-3" id="verification">
													<label for="email">????????????: </label>
												</div>
												<input type="text" class="form-control" id="email"
													placeholder="${LoginOK.email}" name="email">

											</div>


											<div class="col-12 mb-3">
												<label for="gender">??????: </label> <input type="text" class="form-control"
													id="gender" placeholder="${LoginOK.gender}" value="">
											</div>
											<div class="col-12 mb-3">
												<label for="birthday">??????: </label>
												<input placeholder="date" name="birthday" class="form-control"
													type="text" onfocus="(this.type='date')" id="birthday">
												<!-- <input type="date" class="form-control" id="birthday"
													placeholder="" name="birthday"> -->
											</div>

											<!-- <div class="col-12 mb-3">
												<label for="permission">??????: </label>
												<input type="text" class="form-control" id="permission"
													placeholder="${LoginOK.permission}" readonly="readonly"
													name="permission">
											</div> -->
											<div class="cart-btn col-12 mt-100">
												<input class="btn amado-btn w-100" id="confirm" type="button"
													value="????????????">
											</div>
										</div>
									</form>
								</div>

							</div>
						</div>
						<input type="text" class="custom-control-input" id="test1">
					</div>
				</div>
			</div>
			</div>
			<!-- ##### Main Content Wrapper End ##### -->

			<!-- ##### Newsletter Area Start ##### -->
			<section class="newsletter-area section-padding-100-0">
				<div class="container">
					<div class="row align-items-center">
						<!-- Newsletter Text -->
						<div class="col-12 col-lg-6 col-xl-7">
							<div class="newsletter-text mb-100">
								<h2>
									Subscribe for a <span>25% Discount</span>
								</h2>
								<p>Nulla ac convallis lorem, eget euismod nisl. Donec in
									libero sit amet mi vulputate consectetur. Donec auctor interdum
									purus, ac finibus massa bibendum nec.</p>
							</div>
						</div>
						<!-- Newsletter Form -->
						<div class="col-12 col-lg-6 col-xl-5">
							<div class="newsletter-form mb-100">
								<form action="#" method="post">
									<input type="email" name="email" class="nl-email" placeholder="Your E-mail"> <input
										type="button" value="Subscribe">
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- ##### Newsletter Area End ##### -->

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
								<!-- Copywrite Text -->
								<p class="copywrite">
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									Copyright &copy;
									<script>
										document.write(new Date().getFullYear());
									</script>
									All rights reserved | This template is made with <i class="fa fa-heart-o"
										aria-hidden="true"></i> by <a href="https://colorlib.com"
										target="_blank">Colorlib</a> &
									Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</p>
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
												<li class="nav-item active"><a class="nav-link" href="/">Home</a></li>
												<li class="nav-item"><a class="nav-link" href="shop.html">aaa</a>
												</li>
												<li class="nav-item"><a class="nav-link"
														href="product-details.html">Product</a></li>
												<li class="nav-item"><a class="nav-link" href="cart.html">Cart</a>
												</li>
												<li class="nav-item"><a class="nav-link"
														href="checkout.html">Checkout</a>
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

			<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
			<!-- Popper js -->

			<script src="/amado-master/js/popper.min.js"></script>
			<!-- Bootstrap js -->
			<script src="/amado-master/js/bootstrap.min.js"></script>
			<!-- Plugins js -->
			<script src="/amado-master/js/plugins.js"></script>
			<!-- Active js -->
			<script src="/amado-master/js/active.js"></script>
			<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
			<script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
			<script>
				$(function () {
					user = null;
					function loadMember(member) {
						let time = new Date(user.birthday);
						let YYYY = time.getFullYear();
						let MM = time.getMonth() + 1;
						let DD = time.getDate();
						let birthday = YYYY + '-' + MM + '-' + DD;
						$('#birthday').attr('placeholder', birthday);
						if (member.haveImg == true) {
							console.log('haveImg')
							$('#img').attr('src', '/ShowMemberImgServlet.do/' + member.memberId)
						}
						$('#memberId').attr('placeholder', member.memberId);
						$('#name').attr('placeholder', member.name);

						let selectStr = '<select class="w-100 nice-select" id="location" name="location">' +
							'<option value="??????" id="Keelung">??????</option>' +
							'<option value="??????" id="New Taipei">??????</option>' +
							'<option value="??????" id="Taipei">??????</option>' +
							'<option value="??????" id="Taoyuan">??????</option>' +
							'<option value="??????" id="Hsinchu">??????</option>' +
							'<option value="??????" id="Miaoli">??????</option>' +
							'<option value="??????" id="Taichung">??????</option>' +
							'<option value="??????" id="Changhua">??????</option>' +
							'<option value="??????" id="Nantou">??????</option>' +
							'<option value="??????" id="Yunli">??????</option>' +
							'<option value="??????" id="Chiayi">??????</option>' +
							'<option value="??????" id="Taina">??????</option>' +
							'<option value="??????" id="Kaohsiung">??????</option>' +
							'<option value="??????" id="Pingtung">??????</option>' +
							'<option value="??????" id="Yilan">??????</option>' +
							'<option value="??????" id="Hualien">??????</option>' +
							'<option value="??????" id="Taitung">??????</option>' +
							'<option value="??????" id="Penghu">??????</option>' +
							'<option value="??????" id="Kinmen">??????</option>' +
							'<option value="??????" id="Lienchiang">??????</option></select>';
						console.log()
						if ($('#locDiv select').length == 0) {
							$('#locDiv').append(selectStr);
						}
						$('#location option[value="' + member.location + '"]').attr("selected", true);
						$('#email').attr('placeholder', member.email);
						$('#gender').attr('placeholder', member.gender);
						let vrfcStr = member.verification == 1 ?
							'<span> ????????? </span>'
							: '<input type="button" class="btn sendMail" value="send mail" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;">';

						if ($('#verification').children().length < 2) {
							$('#verification').append(vrfcStr);
						}
						if (member.permission == 0) {
							$('#permission').attr('placeholder', 'user');
						} else {
							$('#permission').attr('placeholder', 'admin');
						}

					}

					$.ajax({
						type: "get",
						url: "/getCurrentUser.do",
						success: function (member) {
							console.log(member)
							currentUser = member;
							//	logined: show user info //else show login button
							let htmlStr = null;
							if (member.length != 0) {
								htmlStr =
									'<a href="/logout" class="btn amado-btn active">??????</a>' +
									'<p class="userInfo" style="margin-bottom:0">?????????: ' + member.name + '</p>' +
									'<p class="userInfo" style="margin-bottom:0">??????????????????: ' + member.lastLogin + '</p>';
								if (member.permission == 1) {
									$('#memberCenterOrBs').attr('href', '/admin/showAllMember').text('????????????');
								}
							} else {
								htmlStr = '<a href="/login" class="btn amado-btn active">Login</a>';
							}
							$('#loginDiv').append(htmlStr)

							user = member;
							loadMember(user);

						},
						error: function (member) {
							Swal.fire("response error");
						}
					});

					$('#birthday').on('blur', function () {
						let newDate = $(this).val();
						$(this).attr('text', 'date').attr('value', newDate);
					})

					$('#confirm').on('click', function () {
						var form = $('#form')[0];
						var formData = new FormData(form);
						$.ajax({
							type: "POST",
							url: "/modifyMemberInfo/modifyByMember.do/" + user.memberId,
							enctype: "multipart/form-data",
							data: formData,
							contentType: false,
							cache: false,
							processData: false,
							success: function (member) {
								loadMember(member);
								Swal.fire("????????????");
							},
							error: function (member) {
								console.log(member)
								Swal.fire("response error");
							}
						});
					})

					$('body').on('click', '.sendMail', function () {
						$.ajax({
							type: "post",
							url: "/sendMail.do/" + user.memberId,
							success: function (result) {
								Swal.fire("??????????????????????????????????????????????????????")
							},
							error: function (result) {
								Swal.fire("???????????????????????????")
							}
						});
					})

				})
			</script>

		</body>

		</html>