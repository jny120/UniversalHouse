<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<meta name="description" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<!-- Title  -->
		<title>UniversalHouse | Home</title>

		<!-- Favicon  -->
		<link rel="icon" href="/amado-master/img/core-img/logo.png">

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

			.footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link {
				font-size: 20px;
			}

			/* 跳動圖 */
			.square {
				width: 100px;
				height: 100px;
				background: blue;
				display: block;
				position: relative;
				border-radius: 50%;
				/* animation 參數設定 */
				animation-name: MoveToRight;
				/*動畫名稱，需與 keyframe 名稱對應*/
				animation-duration: 4s;
				/*動畫持續時間，單位為秒*/
				animation-delay: 2s;
				/*動畫延遲開始時間*/
				animation-iteration-count: infinite;
				/*動畫次數，infinite 為無限次*/
			}

			.square1 {
				width: 100px;
				height: 100px;
				background: blue;
				display: block;
				position: relative;
				border-radius: 50%;
				/* animation 參數設定 */
				animation-name: MoveToRight;
				/*動畫名稱，需與 keyframe 名稱對應*/
				animation-duration: 3s;
				/*動畫持續時間，單位為秒*/
				animation-delay: 2s;
				/*動畫延遲開始時間*/
				animation-iteration-count: infinite;
				/*動畫次數，infinite 為無限次*/
			}

			/* 關鍵影格(@keyframe) */
			@keyframes MoveToRight {
				0% {
					left: 0;
				}

				25% {
					left: 20%;
				}

				50% {
					left: 40%;
				}

				75% {
					left: 60%;
				}

				100% {
					left: 80%;
				}
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
				<!-- 左列 -->
				<nav class="amado-nav">
					<ul>
						<li class="active"><a href="/">首頁</a></li>
						<li><a href="/projects/showAllEntrusFront/1">專案</a></li>
						<li><a href="space.controller">場地租借</a></li>
						<li><a href="/showAllProduct">課程</a></li>
						<li><a href="/frontDesk">測驗</a></li>
						<li><a href="frontPage">論壇</a></li>
					</ul>
				</nav>
				<!-- Button Group -->
				<div class="amado-btn-group mt-30 mb-100" id="loginDiv">
					<a href="/users/memberCenter" id="memberCenterOrBs" class="btn amado-btn mb-15">會員中心</a>


				</div>
				<!-- Cart Menu -->
				<div class="cart-fav-search mb-100">
					<a href="/users/showMemberInfo" class="cart-nav"><img src="/amado-master/img/core-img/cart.png"
							alt="">購物車
					</a>
					<a href="#" class="fav-nav"><img src="/amado-master/img/core-img/favorites.png" alt="">我的最愛</a>
					<a href="#" class="search-nav"><img src="/amado-master/img/core-img/search.png" alt="">搜尋</a>
				</div>
				<!-- Social Button -->
				<div class="social-info d-flex justify-content-between">
					<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a href="#"><i
							class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-facebook"
							aria-hidden="true"></i></a> <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
				</div>
			</header>
			<!-- Header Area End -->

			<!-- 這邊開始 -->
			<!-- <div class="row">
				<div class="col-8">
					123
				</div>
				<div class="col-4">
					123
				</div>
			</div> -->
			<div class="container">
				<form>
					<!-- <table border='1'> -->
					<div style="width: 1000px;height: 200px;">
						<!-- <div>
							<a class="square1" style="display: inline-block;" href="/">
								<img src="/amado-master/img/core-img/logo2.png" alt="">
							</a>
						</div>
						<div class="square" style="display: inline-block;"></div> -->
						<img src="/amado-master/img/test-img/your_video_file.gif" style="    width: 800px;
							height: 344px;
							display: flex;
				
							left: 214px;
							top: 35px;
							top: -14px;
					
							left: 460px;
							margin: auto;">
						<Marquee Direction="Right">
							<!-- 
							<a href="/frontPage" class="newanime_text"
								style="color: black;font-size: 16px;"><span>崇浩與他論壇的五十陰影</span> -->

						</Marquee>

					</div>

					<div class="row">
						<div class="col-8">
							<div style="    width: 756px;
							position: relative;
							height: 563px;
							/* background-color: aliceblue; */
							text-align: center;
							top: 168px;
							left: -37px;
							border: solid;
							padding: inherit;
							border-radius: 10%;
							border-color: antiquewhite;" class="delli">
								<ul>
									<li class="memberId" style="font-size: 33px;
									position: absolute;
									left: 309px;
									top: 27px;">
										<span>${totalScore.memberId}的測驗結果</span>
									</li>
									<img id="surveyimg" style="left: 10px;
									display: flex;
									position: absolute;
									top: 32px;
									height: 264px;
									width: 282px;" src="">
									<li class="score" value="${totalScore.fraction}" style="    font-size: 56px;
										text-align: center;
										display: flex;
										position: absolute;
										left: 18px;
   										 top: 296px;">
										分數:${totalScore.fraction}</li>
									<input id="inputRadio" name="inputRadio" value="${totalScore.inputRadio}"
										hidden="hidden">
									<li id="endtext" style="font-size: 20px;
									display: flex;
									/* left: 1091px; */
									position: absolute;
									/* position: fixed; */
									justify-content: flex-end;
									top: 101px;
    left: 305px; "></li>
									<li>
										<div style="    position: absolute;
										bottom: 0;
										left: 32px;
    top: 389px;
									">
											<div class="line-it-button" data-lang="zh_Hant" data-type="share-c"
												data-env="REAL" data-url="http://localhost:8080/TestResult"
												data-color="default" data-size="small" data-count="false" data-ver="3"
												style="display: none;"></div>
										</div>
									</li>
									<li style="    top: 388px;
									position: absolute;
									right: 547px;">分享至line好友</li>
								</ul>
							</div>
							<div class="myChartdiv" style="    border: solid;
							width: 267px;
							height: 260px;
							position: absolute;
							left: 739px;
							top: 168px;
							padding: 1%;
							border-color: antiquewhite;
							border-radius: 10%;
						"><canvas id="myChart" width="100" height="100"></canvas></div>
						</div>
						<div class="col-4" style="top: 497px;">
							<header class="context-box__header">
								<h3 class="context-box__title" style="border-bottom: 1px solid var(--udn-orange); font-size: 24px;    display: inline-block;
									    border-bottom: 1px solid #ee5103;	
									font-weight: 300;
									font-weight: var(--regular-weight);">測驗排行</h3>
								<a href="/rank/pv/2/6638" class="btn context-box__more"></a>
							</header>
							<div class="hottest" style="max-width: 55.333333%;"></div>

							<div style="width: 267px;
										height: 260px;
										position: absolute;
										left: 0px;
										top: 0px;
										padding: 1%;
										border-color: rgb(251, 183, 16);
										border-radius: 10%;
										"></div>

						</div>

					</div>
					<!-- </table> -->
				</form>
			</div>



			<!-- <a calss="home" href='/'>回首頁</a> -->


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
								<a href="/"><img src="/amado-master/img/core-img/logo2.png" alt=""></a>
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
										aria-expanded="false" aria-label="Toggle navigation">
										<i class="fa fa-bars"></i>
									</button>
									<div class="collapse navbar-collapse" id="footerNavContent">
										<ul class="navbar-nav ml-auto">
											<li class="nav-item active"><a class="nav-link" href="/">首頁</a></li>
											<li class="nav-item"><a class="nav-link"
													href="/projects/showAllEntrusFront/1">專案</a>
											</li>
											<li class="nav-item"><a class="nav-link" href="/space.controller">場地租借</a>
											</li>
											<li class="nav-item"><a class="nav-link" href="/showAllProduct">課程</a>
											</li>
											<li class="nav-item"><a class="nav-link" href="/frontDesk">測驗</a>
											</li>
											<li class="nav-item"><a class="nav-link" href="/frontPage">論壇</a>
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
		<script src="https://www.line-website.com/social-plugins/js/thirdparty/loader.min.js" async="async"
			defer="defer"></script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
						console.log(member.length)
						htmlStr =
							'<a href="/logout" class="btn amado-btn active">登出</a>' +
							'<p class="userInfo" style="margin-bottom:0">使用者: ' + member.name + '</p>' +
							'<p class="userInfo" style="margin-bottom:0">最後登入時間: ' + member.lastLogin + '</p>';
						if (member.permission == 1) {
							$('#memberCenterOrBs').attr('href', '/admin/showAllMember').text('前往後臺');
						}
					} else {
						htmlStr = '<a href="/login" class="btn amado-btn active">登入</a>';
					}
					$('#loginDiv').append(htmlStr)
				},
				error: function (member) {
					Swal.fire("response error");
				}
			});
			var field = $('#inputRadio').val()
			console.log(field + "++++++++field")
			$.ajax({
				type: 'post',
				url: 'findsurvey.controller',
				data: { field: field, },
				success: function (result) {
					console.log(result[0].surveypk);
					console.log(result[0].welcometext);
					console.log(result[0].endtext);
					// surveyimg
					$('#surveyimg').attr('src', '/ShowsurveyImgServlet.do/' + result[0].surveypk + '')

					// $('#endtext').text(result[0].endtext)
					$('#endtext').append(result[0].endtext)
				}

			})
			$(document).ready(function () {
				// 定義排行榜URL
				// var url = "your_api_endpoint_for_getting_hottest_news";

				// 使用Ajax發送請求
				$.ajax({
					url: "ShowTester",
					type: "Post",
					dataType: "json",
					success: function (data) {
						// 在成功的回調函數中，對排行榜進行更新
						$(".rounded-thumb__list").empty(); // 清空排行榜

						// var count = {};
						// $.each(data, function (index, item) {
						// 	if (count[item.inputRadio]) {
						// 		count[item.inputRadio]++;
						// 	} else {
						// 		count[item.inputRadio] = 1;
						// 	}
						// });
						// console.log(count);
						var radioFrequency = {};
						$.each(data, function (index, item) {
							if (!radioFrequency[item.inputRadio]) {
								radioFrequency[item.inputRadio] = 0;
							}
							radioFrequency[item.inputRadio]++;
						});

						var radioFrequencyArray = [];
						for (var radio in radioFrequency) {
							radioFrequencyArray.push({ radio: radio, count: radioFrequency[radio] });
						}

						radioFrequencyArray.sort(function (a, b) {
							return b.count - a.count;
						});

						$.each(radioFrequencyArray.slice(0, 5), function (index, item) {
							$('.hottest').append(
								'<div><img data-v-20f1e346="" alt="" height: 180px; width: 180px; src="/ShowsurveyImgbyfield.do/' + item.radio + '"><a href="/frontDesk"class="newanime_text"style=" color: black;font-size: 16px;"><span >' + item.radio + ': ' + item.count + '</span><hr></div>'
							);
						});
						// <a href="/frontPage" class="newanime_text"
						// style = "color: black;font-size: 16px;" > <span>崇浩與他論壇的五十陰影</span>

						// <form action="/testgo.do" method="post" enctype="multipart/form-data">
						// </form >

					},
					error: function () {
						// 在錯誤的回調函數中，提示用戶加載失敗
						$(".rounded-thumb__list").html("<p>加載排行榜失敗，請稍後再試。</p>");
					}
				});
			});
			$(function () {

				var currentUrl = window.location.href;

				$('.line-it-button').attr('data-url', currentUrl)


				console.log($('.score').val() + "+++++++++")
				if ($('.score').val() == 0) {
					$('.score').remove()
					$('.myChartdiv').remove()
					$('#myChart').remove()
					$('.delli').children().remove()
					$('.col-4').remove()
					delliStr = '<ul><li style="vertical-align:middle; top:83px; position: absolute; right: 190px; font-size: 62px; ">感謝填寫問卷!</li></ul><p style="    position: absolute;top: 300px; right: 244px; font-size: 27px;">將在<span id="countdown">5</span> 秒內回到首頁...</p>'
					$('.delli').append(delliStr)
					var countdown = 3;
					setInterval(function () {
						if (countdown <= 0) {
							window.location.href = "/";
						} else {
							document.getElementById("countdown").innerHTML = countdown;
							countdown--;
						}
					}, 1000);
				}
				var ctx = $('#myChart');
				var randomNumber = Math.floor(Math.random() * 101);
				console.log(randomNumber)
				var randomNumber1 = Math.floor(Math.random() * 101);
				console.log(randomNumber1)
				var randomNumber2 = Math.floor(Math.random() * 101);
				console.log(randomNumber2)
				var randomNumber3 = Math.floor(Math.random() * 101);
				console.log(randomNumber3)
				var randomNumber4 = Math.floor(Math.random() * 101);
				console.log(randomNumber4)
				var randomNumber5 = Math.floor(Math.random() * 101);
				console.log(randomNumber5)
				var myChart = new Chart(ctx, {
					type: 'radar', //圖表類型
					borderWidth: 3,

					data: {
						labels: [
							'堅強',
							'勇敢',
							'懶惰',
							'樂觀',
							'活力',
							'好奇心',
							'創造力'
						],
						datasets: [{
							label: '人格特質',
							data: [99, 96, 98, 92, 97, 95, 99],
							fill: true,
							backgroundColor: 'rgba(255, 99, 132, 0.2)',
							borderColor: 'rgb(255, 99, 132)',
							pointBackgroundColor: 'rgb(255, 99, 132)',
							pointBorderColor: '#fff',
							pointHoverBackgroundColor: '#fff',
							pointHoverBorderColor: 'rgb(255, 99, 132)'
						}]
					}
				});
			})
		</script>
		<!-- <script>
			AOS.init({
				duration: 1000,
			});
		</script> -->


	</body>

	</html>