<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>UniversalHouse | Home</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/logo.png">

<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<!-- <link rel="stylesheet" href="/amado-master/css/style.css"> -->
<link rel="stylesheet" href="/amado-master/css/memberCenter.css">
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

.footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link
	{
	font-size: 20px;
}

/* #inviteFriendDiv {
                float: right;
            } */

/* 按鈕樣式 */
.cartButton {
	border: 0;
	background-color: #f5f7fa;
	font-size: 14px;
	width: 70px;
	height: 30px;
	margin-right: 10px;
}

.items {
	height: 200px;
}

.itemsMember {
	height: 350px;
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
							<input type="search" name="search" id="search"
								placeholder="Type your keyword...">
							<button class="cartButton" type="submit">
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
				<a href="/"><img src="/amado-master/img/core-img/logo.png"
					alt=""></a>
			</div>
			<!-- Amado Nav -->
			<!-- 左列 -->
			<nav class="amado-nav">
				<ul>
					<li class="nav-item active"><a class="nav-link" href="/">首頁</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/projects/showAllEntrusFront/1">專案</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/space.controller">場地租借</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/showAllProduct">課程</a></li>
					<li class="nav-item"><a class="nav-link" href="/frontDesk">測驗</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/frontPage">論壇</a>
					</li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100" id="loginDiv">
				<a href="/users/memberCenter" id="memberCenterOrBs"
					class="btn amado-btn mb-15">會員中心</a>


			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100">
				<a href="/users/showMemberInfo" class="cart-nav"><img
					src="/amado-master/img/core-img/cart.png" alt="">購物車 </a> <a
					href="#" class="fav-nav"><img
					src="/amado-master/img/core-img/favorites.png" alt="">我的最愛</a> <a
					href="#" class="search-nav"><img
					src="/amado-master/img/core-img/search.png" alt="">搜尋</a>
			</div>
			<!-- Social Button -->
			<div class="social-info d-flex justify-content-between">
				<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
			</div>
		</header>
		<!-- Header Area End -->

		<!-- 這邊開始 -->
		<div class="cart-table-area ">
			<div id="allItem">
				<!-- 會員資訊 area 開始 -->
				<div class="items itemsMember">
					<div class="headphotobox">
						<div class="headphotoDiv">
							<img id="headphoto" src="/images/member/member.png" alt="Product"
								style="width: 100%">
						</div>
					</div>

					<div class="memberInfo">
						<div id="verify"></div>
						<div class="memberDetail">
							<div class="memberDetailList">
								<ul>
									<li>帳號:<span id="memberId"></span></li>
									<li>暱稱:<span id="name"></span></li>
									<li>地區:<span id="location"></span></li>
									<li>電子郵件:<span id="email"></span></li>
									<li>性別:<span id="gender"></span></li>
									<li>生日:<span id="birthday"></span></li>
								</ul>
							</div>
							<div id="modifyDiv">
								<div class="floatRightDiv"></div>
							</div>

							<div id="inviteFriendDiv">
								<div>好友邀請:</div>
								<div id="inviteFriendListDiv" class="hideScrollbar"></div>
								<div class="flexAlignRight">
									<div class="flexAlignRight">
										<a href="/users/showMemberInfo" class="modifyBtn">修改個人資料</a>
									</div>
									<div class="flexAlignRight">
										<a class="modifyBtn" id="inviteFriendBtn">新增好友</a>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- 會員資訊 area 結束 -->


				<!-- 專案資訊 area 開始 -->
				<p class="likehr">案件中心</p>
				<div class="items">
					<div id="msgrecord" class="memberDetail" style="height: 100px">

						<ul style="margin-bottom: 40px">
							<li>我的委託案件 : &nbsp; <a href="/users/projects/showMyEntrus/1"><button
										class="cartButton">前往</button></a>
							</li>
							<li>我的服務案件 : &nbsp; <a
								href="/users/projects/showMyService/1"><button
										class="cartButton">前往</button></a>
							</li>
							<li style="margin-top: 20px">承接的委託項目 : &nbsp; <a
								href="/users/projects/showMyServicingProject/1"><button
										class="cartButton">前往</button></a>
							</li>
							<li style="margin-top: 20px">委託的服務項目 : &nbsp; <a
								href="/users/projects/showMyEntrustingProject/1"><button
										class="cartButton">前往</button></a>
							</li>
						</ul>
					</div>
				</div>
				<!-- 專案資訊 area 結束 -->
				<!-- 測驗 area 開始 -->
				<p class="likehr">測驗中心</p>
				<div class="items">
					<div id="msgrecord" class="memberDetail" style="height: 100px">
						<div class="memberInfo">
							<div class="memberDetail1">
								<form action="/testeralltest" method="get"
									enctype="multipart/form-data">
									<ul style="margin-top: 5px">
										<li>我的測驗： &nbsp; <input type="submit"
											class="cartButton" value="測驗結果"></li>
									</ul>
								</form>
							</div>
						</div>
					</div>
				</div>

				<!-- 測驗 area 結束 -->
				<!-- 課程訂單 area 開始 -->
				<p class="likehr">課程中心</p>
				<div class="items">
					<div id="msgrecord" class="memberDetail" style="height: 100px">

						<ul style="margin-bottom: 40px">
							<li>我的訂單 : &nbsp; <a href="/showOrders"><button
										class="cartButton">前往</button></a>
							</li>

						</ul>
					</div>
				</div>
				<!-- 專案資訊 area 結束 -->
				<!-- 論壇資訊 area 開始-->
				<p class="likehr">論壇中心</p>
				<div class="items">

					<div class="memberInfo">
						<div id="msgrecord" class="memberDetail" style="height: 200px">

							<form action="/users/toUserArticle" method="post">
								<input type="hidden" name="memberPk" class="memberPk">
								<ul style="margin-bottom: 40px">
									<li>我的文章 : &nbsp;
										<button type="submit" id="myArticle" class="cartButton"
											formaction="/users/toUserArticle"></button>
									</li>
									<li>我的最愛 : &nbsp;
										<button type="submit" id="myFavorite" class="cartButton"
											formaction="/users/toUserFavorite"></button>
									</li>
									<li style="margin-top: 20px">閱覽紀錄 : &nbsp;
										<button type="submit" class="cartButton"
											formaction="/users/toViewRecord">查詢</button>
									</li>
									<li style="margin-top: 20px">新增文章 : &nbsp;
										<button type="submit" class="cartButton"
											formaction="/users/toNewArticle">前往</button>
									</li>
								</ul>
							</form>
						</div>
					</div>
				</div>

			</div>
			<!-- 論壇資訊 area 結束-->
			<!-- 場地租借 area 開始 -->
			<p class="likehr">場地租借訂單查詢</p>
			<div class="">
				<!--                     	<div class="memberDetail"> -->
				<table id="memberorder" class="table table-responsive">
					<thead>
						<tr style="text-align: middle;">
							<th style="flex: 30%">訂單編號</th>
							<th style="flex: 50%">使用日期</th>
							<th style="flex: 30%">訂單狀態</th>
							<th style="flex: 60%">場地名稱</th>
							<th style="flex: 50%">下單日期</th>
							<th style="flex: 30%">聯絡人</th>
							<th style="flex: 50%">聯絡方式</th>
							<th style="flex: 30%">費用</th>
							<th style="flex: 30%">支付方式</th>
							<th style="flex: 50%">備註</th>
						</tr>
					</thead>
					<tbody id="memberList">
					</tbody>
				</table>
			</div>
		</div>

		<!-- 場地租借 area 結束 -->
		<!-- 這邊結束 -->
	</div>
	</div>
	<div style="height: 20px"></div>
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
							<a href="/"><img src="/amado-master/img/core-img/logo2.png"
								alt=""></a>
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
										<li class="nav-item active"><a class="nav-link" href="/">首頁</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/projects/showAllEntrusFront/1">專案</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/space.controller">場地租借</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/showAllProduct">課程</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/frontDesk">測驗</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/frontPage">論壇</a></li>
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

	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
			var currentUser;
			//check user if logined
			$.ajax({
				type: "get",
				url: "/getCurrentUser.do",
				success: function (member) {
					//	logined: show user info //else show login button
					let htmlStr = null;
					if (member.length != 0) {
						currentUser = member;
						htmlStr =
							'<a href="/logout" class="btn amado-btn active">登出</a>' +
							'<p class="userInfo" style="margin-bottom:0">使用者: ' + member.name + '</p>' +
							'<p class="userInfo" style="margin-bottom:0">最後登入時間: ' + member.lastLogin + '</p>';
						if (member.permission == 1) {
							$('#memberCenterOrBs').attr('href', '/admin/showAllMember').text('前往後臺');
						}
						if (member.haveImg == 1) {
							$('#headphoto').attr('src', '/ShowMemberImgServlet.do/' + member.memberId)
						}
						$('#memberId').text(member.memberId);
						$('#name').text(member.name);
						$('#location').text(member.location);
						$('#email').text(member.email);
						$('#gender').text(member.gender);
						$('#birthday').text(member.birthday);
						if (member.verification == 1) {
							$('#verify').html('<a title="會員資料已認證" href="/" class="">信箱已認證!</a>');
						}

						initFriendInfo(member);

						//----------------------------------------------------------------------------------------
						//鄭崇浩----------------------------------------------
						//2023/02/15，11:14
						//用來取得論壇資料以及超連結
						$('.memberPk').val(member.memberPk);
						$.ajax({
							type: "post",
							url: '/users/getMemberArticleInfo',
							data: {
								memberPk: member.memberPk,
							},
							success: function (result) {
								$('#myArticle').html('共&nbsp;' + result[0] + '&nbsp;則');
								$('#myFavorite').html('共&nbsp;' + result[1] + '&nbsp;則');
							},
							error: function () {
								console.log('論壇資訊取得錯誤');
							}
						});
						//----------------------------------------------------------------------------------------     

					} else {
						htmlStr = '<a href="/login" class="btn amado-btn active">登入</a>';
					}
					$('#loginDiv').append(htmlStr)
				},
				error: function (member) {
					Swal.fire("response error");
				}
			});

			function initFriendInfo(member) {
				$.ajax({
					type: "post",
					url: "/findUncheckedFriendship/" + member.memberId,
					success: function (friendList) {
						initInviteFriendList(friendList);
					}
				});
			}

			function initInviteFriendList(friendList) {
				friendList.forEach(friend => {
					console.log(friend.memberId);
					inviteFriendstr = '<div class="inviteFriend">'
						+ getMemberImgStr(friend)
						+ '<span class="inviteId">' + friend.memberId + '</span>'
						+ '<button class="btn friendConfirmBtn">接受</button>'
						+ '<button class="btn friendConfirmBtn">拒絕</button>'
						+ '</div>';
					$('#inviteFriendListDiv').append(inviteFriendstr);
				});
			}

			function getMemberImgStr(member) {
				url = member.haveImg == 1
					? "/ShowMemberImgServlet.do/" + member.memberId
					: "/amado-master/img/core-img/member.png";
				let imgHtml = '<img src="' + url + '" alt="no Img">';
				return imgHtml;
			}

			$('#inviteFriendListDiv').on('mouseover', function () {
				$(this).removeClass('hideScrollbar');
			})

			$('#inviteFriendListDiv').on('mouseout', function () {
				$(this).addClass('hideScrollbar');
			})

			$('#inviteFriendBtn').on('click', function () {
				Swal.fire({
					title: '輸入用戶帳號',
					input: 'text',
					inputAttributes: {
						autocapitalize: 'off'
					},
					showCancelButton: true,
					confirmButtonText: '新增好友',
					cancelButtonText: '取消',
					showLoaderOnConfirm: true,
					preConfirm: (memberId) => {
						return fetch(
							'/inviteFriendship/' + currentUser.memberId + '/' + memberId,
							{ method: 'POST' })
							.then(response => response.text())
							.catch(error => {
								Swal.showValidationMessage(
									`請確認輸入的用戶帳號`
									// `Request failed: ${error}`
								)
							})
					},
					allowOutsideClick: () => !Swal.isLoading()
				}).then((result) => {
					// if (result.isConfirmed) {
					if (result) {
						// console.log(result.value)
						Swal.fire({

							title: result.value,
							imageUrl: result.value.avatar_url
						})
					}
				})
			})

			$('body').on('click', '.friendConfirmBtn', function () {
				let friendId = $(this).prev().text();
				friendDiv = $(this).parent();
				// console.log();
				$.ajax({
					type: "post",
					url: "/confirmFriendship/" + currentUser.memberId + "/" + friendId,
					success: function () {
						friendDiv.html('<span style="line-height:50px; width:100%">和' + friendId + '成為好友</span>');
						// friendD.css('height', '40px')
					}
				})
			})

			$('body').on('click', '.sendMail', function () {

				Swal.fire({
					title: '寄發驗證信至' + currentUser.email,
					confirmButtonText: '發送',
					cancelButtonText: '取消',
					showLoaderOnConfirm: true,
					showCancelButton: true,
					preConfirm: () => {
						return fetch(
							"/sendMail.do/" + currentUser.memberId,
							{ method: 'POST' })
							.then(response => response.text())
							.catch(error => {
								Swal.showValidationMessage(
									`發送失敗請稍後再試`
								)
							})
					},
					allowOutsideClick: () => !Swal.isLoading()
				}).then((result) => {
					// if (result.isConfirmed) {
					console.log(result)
					if (result.isConfirmed) {
						// console.log(result.value)
						Swal.fire({
							title: "已將驗證信送至您的信箱，請至信箱確認",
							// imageUrl: result.value.avatar_url
						})
					}
				})
			})
			// <!-- 場地租借 area 開始 -- >

			$.ajax({
				url: "/memberorders.controller",
				type: "GET",
				success: function (data) {
					$('#memberList').empty();

					$.each(data, function (index, mlist) {
						var row = '<tr style="font-size:small; vertical-align: middle;">' +
							'<td style="flex:30% ">' + mlist.orderId + '</td>' +
							'<td style="flex:50% ">' + mlist.orderDate + '</td>' +
							'<td style="flex:30%;background-color:#EDEDED;text-align:center ">' + mlist.status + '</td>' +
							'<td style="flex:60% ">' + mlist.spaceName + '</td>' +
							'<td style="flex:50% ">' + mlist.bookTime + '</td>' +
							'<td style="flex:30% ">' + mlist.cPerson + '</td>' +
							'<td style="flex:50% ">' + mlist.contact + '</td>' +
							'<td style="flex:30% ">' + mlist.spacePrice + '</td>' +
							'<td style="flex:30% ">' + mlist.payment + '</td>' +
							'<td style="flex:50% ">' + mlist.remark + '</td>' +
							'</tr>';

						$('#memberList').append(row);
					});
				},
				error: function (jqXHR, textStatus, errorThrown) {
					console.log(textStatus, errorThrown);
				}
			});
// < !--場地租借 area 結束-- >
	// <!-- 場地租借 area 開始 -- >
// 		$('#testmemberid').on('click',function(e){
// 			e.preventDefault
			
// 			var testmemberid =$('.userInfo').text()
// 			console.log(testmemberid)
// 		})
// 		}
		
	
// < !--場地租借 area 結束-- >

		</script>

</body>

</html>