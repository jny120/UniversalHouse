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
	
			<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
			<link rel="stylesheet" href="/amado-master/css/spaceDT.css">
			
			
			<style type="text/css">
				@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap');
				/*主體欄位*/
				body {
                    font-family: 'Noto Sans TC', sans-serif;
                    font-size: 18px;
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
                
				th,td {
					word-break: break-all;
				}
				.col-lg-8 {
				    -ms-flex: 0 0 100%;
				    flex: 0 0 100%;
				    max-width: 100%;
				}
				.section-padding-100-0{
				    -ms-flex: 0 0 100%;
				    flex: 0 0 100%;
				    max-width: 100%;
				}
				.clearfix{
				    -ms-flex: 0 0 100%;
				    flex: 0 0 100%;
				    max-width: 100%;
				}
				.insert-btn{
					align: left; 
					font-weight: bold;
					text-align: center; 
					color:#4F4F4F; 
					width:150px; 
					height:30px; 
					border-style:none;
					
				}
				.insert-btn:hover{
					transform: scale(1.05);
				}
                #myTable tr:hover{

	            background-color: #DFE7F2;
	            color: #000000;
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
						<a href="/"><img src="/amado-master/img/core-img/newLogo.png" alt=""></a>
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
	                        <div class="cart-title mt-50">
	                            <h2><b>場地租借-場地資訊 管理後台</b></h2>
                            
							<div style="width:auto;">
							<div>
								<form action="/admin/insertspacemain.controller" style="float: left">
									<input style="font-size: 16px;" class="insert-btn btn"  type="submit" value="＋新增場地資料">
								</form>
							</div>
							<div>
								<form action="/admin/orderreadall.controller/1" style="float: right">
									<input style="font-size: 16px;" class="amado-btn btn"  type="submit" value="訂單系統">
								</form>
							</div>
	                        <div style="height: 10px"></div>
							
<!-- 		                        <form action="spacequery.controller" style="float: right; width: 370px"> -->
<!-- 									<label style="float: left;vertical-align: middle">Search By City:&nbsp;&nbsp;</label> -->
<!-- 									<input style="float: left; height:30px; border-color: slategray; border-radius:0.05px "type="search" name="city" placeholder="關鍵字"> -->
<!-- 									<input style="float: right; height:30px; border-style:none " type="submit" name="query" value="search"> -->
<!-- 								</form> -->
	                        </div>
	                        <div style="height: 50px"></div>

      <!-- table Start -->
      					<div class="cart-table clearfix">
			                 <table id="myTable" class="table table-responsive" >
                                <thead>
                                    <tr style="text-align: middle;">
										<th style="flex:40%">No.</th>
										<th style="flex:70%" >場地名稱</th>
										<th style="flex:40%" >縣市</th>
										<th style="flex:60%">地址</th>
										<th style="flex:70%">容納人數</th>
										<th style="flex:50%" >型態</th>
										<th style="flex:50%" >$每日</th>
										<th style="flex:65%" >電話</th>
										<th style="flex:60%" >信箱</th>
										<th style="flex:60%" >設施</th>
										<th style="flex:100%" >介紹</th>
<!-- 										<th style="flex:60%" >status</th> -->
										<th style="flex:100%" >圖片</th>
										<th style="flex:60%" ></th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="spaces" items="${spaces}">
										<tr style="font-size:small; vertical-align: middle;">
											<td style="flex:40% " >${spaces.spaceNo}</td>
											<td style="flex:70% " >${spaces.spaceName}</td>
											<td style="flex:40% " >${spaces.city}</td>
											<td style="flex:60% " >${spaces.address}</td>
											<td style="flex:70%; text-align: center; " >${spaces.accommodate}</td>
											<td style="flex:50% " >${spaces.spaceType}</td>
											<td style="flex:50%; text-align: center; " >$${spaces.price}</td>
											<td style="flex:65% ">${spaces.phone}</td>
											<td style="flex:60% " >${spaces.email}</td>
											<td style="flex:60% " >${spaces.facility_1}</td>
											<td style="flex:100%; overflow:auto " >${spaces.intro}</td>
<!-- 											<td style="flex:60% "> -->
<%-- 												<c:choose> --%>
<%-- 					                                <c:when test="${spaces.status == 0}"> --%>
<!-- 					                                   <h6  style="color:#CE0000">租借中</h6> -->
<%-- 					                                </c:when> --%>
<%-- 					                                <c:when test="${spaces.status == 1}"> --%>
<!-- 					                                    <h5  style="color:#006000">開放中</h5> -->
<%-- 					                                </c:when> --%>
<%-- 					                        	</c:choose> --%>
<!-- 											</td>  -->
					
											<td  class="cart_product_img" style="flex:100% ">
											
												<c:choose>
					                                <c:when test="${spaces.pic.length() == 0}">
					                                   <img src="/amado-master/img/space-img/s.jpg" width="200px" height="140px">
					                                </c:when>
					                                <c:when test="${spaces.pic.length() != 0}">
														<img src="spaceShowImg.controller?spaceNo=${spaces.spaceNo}" width="200px" height="140px">
					                                </c:when>
					                        	</c:choose>
					                        	
											</td>
											<td style="flex:60% ">
												<form action="spacepreupdate.controller?spaceNo=${spaces.spaceNo}" method="post">
													<input type="submit" value="修改" class="page-link">
												</form>
												<button id="delete" class="page-link" value="${spaces.spaceNo}">刪除</button>
											</td>
										</tr>
									</c:forEach>
								
                                </tbody>
                            </table>
                        </div>
                    </div>
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
			
			<!-- DataTable -->
		    <script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
		    <script src="//cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css"></script>
		    <script src="//cdn.datatables.net/responsive/2.4.0/css/responsive.dataTables.min.css"></script>
			<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>
		
		
			<script>
			
		// 	<<DataTable>>
		// 		$(document).ready( function () {
		// 		    $('#myTable').DataTable();
		// 		} );
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
				
				$(document).ready(function () {
				    $('#myTable').DataTable(
// 				    		{
// 				        columnDefs: [
// 				            {
// 				                targets: [0],
// 				                orderData: [0, 1],
// 				            },
// 				            {
// 				                targets: [1],
// 				                orderData: [1, 0],
// 				            },
// 				            {
// 				                targets: [4],
// 				                orderData: [4, 0],
// 				            },
// 				        ],
// 				    }
				    		);
				});
				
		
				
		    	$('tbody').on('click','#delete',function(){
		    		let spaceNo = $(this).parent().siblings().eq(0).text();
		    		$.ajax({
		    			type: "post",
		    			url: 'spacedelete.controller',
		    			data:{ spaceNo :spaceNo} ,
		    			success : function() { 
							alert("刪除成功!") 
							location.reload()},
						error : function(thrownError) { 
							alert("刪除1筆場地資訊!") 
							location.reload()}
		    		});
		    	})
		    	
		    
		       </script>

		</body>

		</html>