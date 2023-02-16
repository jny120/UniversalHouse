<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta name="description" content="">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

			<!-- Title  -->
			<title>Universal House : Backstage</title>

			<!-- Favicon  -->
			<link rel="icon" href="/amado-master/img/core-img/logo.png">

			<!-- Core Style CSS -->
			<link rel="stylesheet" href="/amado-master/css/core-style.css">
			<link rel="stylesheet" href="/amado-master/css/style.css">
			
			<style>
			@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap');
				/*主體欄位*/
				body {
                    font-family: 'Noto Sans TC', sans-serif;
                    font-size: 16px;
                }
                /*左側欄位*/
                .main-content-wrapper .header-area .amado-nav li a {
                    font-family: 'Noto Sans TC', sans-serif;
                    font-size: 20px;
                }
                /*欄位表頭*/
                .main-content-wrapper .cart-table-area table thead tr th {
                    font-size: 13px;
                    font: bolder;
                }
                .image-upload>input {
                    display: none;
                }
                /*foot欄位*/
                .footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link {
                    font-size: 20px
                }
                 .main-content-wrapper .header-area .amado-nav li a { 
                    color: white 
                 }
			.nice-select {
		    width: 300px;
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
						<a href="/">
						<img src="/amado-master/img/core-img/newLogo.png" alt=""></a>
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

						<a href="/"><img width="150px" height="150px" src="/amado-master/img/core-img/newLogo.png"
								alt=""></a>
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

<!-- 從這邊開始寫-->
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title" style="text-align: center;">
                                <h2><b>場地租借 管理後台</b></h2>
                                正在修改<i> ${update.spaceName} </i>的場地資料
                                <hr>
                            </div>

<!-- form Start -->         <form action="spaceupdate.controller?confirm=${update.spaceNo}" method="POST" enctype="multipart/form-data"  style="margin-left: 80px;">
                                

                                <div class="col-18 mb-3">
                                    <label for="spaceName">場地名稱: </label>
                                    <input type="text" class="form-control" name="spaceName" id="spaceName" placeholder=""
                                        value="${update.spaceName}">
                                    <p style="font-style: italic; color:red;text-align: right">&nbsp;${errors.spaceName}</p>
                                        
                                </div>
                                <div class="col-18 mb-3">
                                    <label for="city">所在縣市: </label>
                                 	<select name="city" class="w-100" >
										<option value="台北市"<c:if test="${update.city=='台北市'}"><c:out value="selected" /></c:if>>台北市</option>
										<option value="新北市"<c:if test="${update.city=='新北市'}"><c:out value="selected" /></c:if>>新北市</option>
										<option value="桃園市"<c:if test="${update.city=='桃園市'}"><c:out value="selected" /></c:if>>桃園市</option>
										<option value="新竹市"<c:if test="${update.city=='新竹市'}"><c:out value="selected" /></c:if>>新竹市</option>
									</select>
									<p style="font-style: italic; color:red;text-align: right">&nbsp;${errors.city}</p>
                                </div>
                                <div class="col-18 mb-3">
                                    <label for="address">詳細地址: </label>
                                    <input type="text" class="form-control"  name="address" id="address" placeholder="不輸入縣市"
                                        value="${update.address}">
                                    <p style="font-style: italic; color:red;text-align: right">&nbsp;${errors.address}</p>
                                </div>
                                <div class="col-18 mb-3">
                                    <label for="accommodate">容納人數: </label>
                                    <input type="number" class="form-control" name="accommodate" id="accommodate" placeholder=""
                                        value="${update.accommodate}">
                                    <p style="font-style: italic; color:red;text-align: right">&nbsp;${errors.accommodate}</p>
                                </div>
                                <div class=" col-18 mb-3">
                                    <label for="spaceType">場地型態: </label>
									<select  class="w-100" name="spaceType">
										<option value="商務會議"<c:if test="${update.spaceType=='商務會議'}"><c:out value="selected" /></c:if>>商務會議</option>
										<option value="多功能"<c:if test="${update.spaceType=='多功能'}"><c:out value="selected" /></c:if>>多功能</option>
										<option value="烹飪教室"<c:if test="${update.spaceType=='烹飪教室'}"><c:out value="selected" /></c:if>>烹飪教室</option>
										<option value="藝文展演"<c:if test="${update.spaceType=='藝文展演'}"><c:out value="selected" /></c:if>>藝文展演</option>
										<option value="多媒體"<c:if test="${update.spaceType=='多媒體'}"><c:out value="selected" /></c:if>>多媒體</option>
									</select>
									<p style="font-style: italic; color:red;text-align: right">&nbsp;${errors.spaceType}</p>
                                </div>
                                <div class="col-18 mb-3">
                                    <label for="price">租金價位(每日): </label>
                                    <input type="number" class="form-control" name="price" id="price" placeholder="$"
                                        value="${update.price}">
                                    <p style="font-style: italic; color:red;text-align: right">&nbsp;${errors.price}</p>
                                </div>
                                <div class="col-18 mb-3">
                                    <label for="phone">電話: </label>
                                    <input type="text" class="form-control" name="phone" id="phone" placeholder=""
                                        value="${update.phone}">
                                    <p style="font-style: italic; color:red;text-align: right">&nbsp;${errors.phone}</p>
                                </div>
                                <div class="col-18 mb-3">
                                    <label for="email">E-mail: </label>
                                    <input type="text" class="form-control" name="email" id="email" placeholder=""
                                        value="${update.email}">
                                    <p style="font-style: italic; color:red;text-align: right">&nbsp;${errors.email}</p>
                                </div>
                                <div class="col-18 mb-3">
                                    <label >提供設施列表: </label>
									<br>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
									<input type="checkbox" name="facility1" value="會議桌"<c:if test="${f0==1}"><c:out value="checked" /></c:if>>&nbsp;會議桌
									<input type="checkbox" name="facility2" value="無線WIFI"<c:if test="${f1==1}"><c:out value="checked" /></c:if>>&nbsp;無線WIFI
									<input type="checkbox" name="facility3" value="桌椅"<c:if test="${f2==1}"><c:out value="checked" /></c:if>>&nbsp;桌椅
									<input type="checkbox" name="facility4" value="投影機(幕)"<c:if test="${f3==1}"><c:out value="checked" /></c:if>>&nbsp;投影機(幕)
									<input type="checkbox" name="facility5" value="螢幕"<c:if test="${f4==1}"><c:out value="checked" /></c:if>>&nbsp;螢幕
									<br>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
									<br>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
									<input type="checkbox" name="facility6" value="白板設備"<c:if test="${f5==1}"><c:out value="checked" /></c:if>>&nbsp;白板設備
									<input type="checkbox" name="facility7" value="音響設備"<c:if test="${f6==1}"><c:out value="checked" /></c:if>>&nbsp;音響設備
									<input type="checkbox" name="facility8" value="烹飪設備"<c:if test="${f7==1}"><c:out value="checked" /></c:if>>&nbsp;烹飪設備
									<input type="checkbox" name="facility9" value="電腦設備"<c:if test="${f8==1}"><c:out value="checked" /></c:if>>&nbsp;電腦設備
									<input type="checkbox" name="facility10" value="洗手間"<c:if test="${f9==1}"><c:out value="checked" /></c:if>>&nbsp;洗手間
                                </div>
                                <div class="col-18 mb-3">
                                    <label for="intro">簡介: </label>
                                    <textarea name="intro" style="height: 150px;vertical-align:top; resize: none"  class="form-control" placeholder="輸入介紹">${update.intro}</textarea>
                                    <p style="font-style: italic; color:red;text-align: right">&nbsp;${errors.intro}</p>
                                </div>
                                <div class="col-18 mb-3">
                                    修改圖片:
                                    <span></span>
                                   				<c:choose>
					                                <c:when test="${update.pic.length() == 0}">
					                                   <img src="/amado-master/img/space-img/s.jpg" width="600px" height="420px">
					                                </c:when>
					                                <c:when test="${update.pic.length() != 0}">
														<img src="spaceShowImg.controller?spaceNo=${update.spaceNo}" width="600px" height="420px">
					                                </c:when>
					                        	</c:choose>
                                   
                                    <input style="border-style:none" type="file" class="" name="pic" id="pic"  value="${update.pic}">
                                </div>
                                <div class="col-12">
                                <br>
                                    <p style="font-style: italic; color:red;text-align: right">&nbsp;${errors.msg}&nbsp;</p>
                                </div>
                                <div class="col-18 mb-3">
                                    <button class="btn amado-btn w-100" type="submit" value="Confirm">確認後更新</button>
                                </div>
                                <div style="text-align:center">
                                    <input type="button"  style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:50px; border-style:none" onclick="history.go(-1)" value="取消">
                                </div>

 <!-- form End -->			</form> 
                        </div>

                    </div>
                </div>
                <input type="text" class="custom-control-input" id="test1">
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
										<button class="navbar-toggler" type="button" data-toggle="collapse"
											data-target="#footerNavContent" aria-controls="footerNavContent"
											aria-expanded="false" aria-label="Toggle navigation"><i
												class="fa fa-bars"></i></button>
										<div class="collapse navbar-collapse" id="footerNavContent">
											<ul class="navbar-nav ml-auto">
                                                <li class="nav-item">
                                                    <a class="nav-link" href="showAllMember">會員</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/myProjects/showAllEntrusBacktage/1">專案</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/spacereadall.controller">場地租借</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/showAllcourse">課程</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/testBackstage">測驗</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/forumBackstage">論壇</a>
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
			
			<script>
			$(function () {
                var currentUser;
                //確認使用者是否登入並拿到當前使用者 
                $.ajax({
                    type: "get",
                    url: "/getCurrentUser.do",
                    success: function (member) {
                        currentUser = member;
                    }
                });


            })
			</script>

		</body>

		</html>