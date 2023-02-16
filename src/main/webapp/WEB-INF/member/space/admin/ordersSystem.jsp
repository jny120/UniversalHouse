<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
				 #ordersystem tr:hover{

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
	                            <h2><b>場地租借-訂單系統 管理後台</b></h2>
                            
							<div style="width:auto;">
							<div>
								<form action="/admin/exportcsv.controller" style="float: left">
									<input style="font-size: 16px;" class="insert-btn btn"  type="submit" value="輸出CSV">
								</form>
							</div>
<!-- 							<div> -->
<!-- 								<form action="/admin/spaceorderchart.controller" style="float: left"> -->
<!-- 									<input style="font-size: 16px;" class="insert-btn btn"  type="submit" value="圖表分析"> -->
<!-- 								</form> -->
<!-- 							</div> -->
							<div>
								<form action="/admin/spacereadall.controller" style="float: right">
									<input style="font-size: 16px;" class="amado-btn btn"  type="submit" value="返回場地資訊">
								</form>
							</div>
	                        <div style="height: 10px"></div>
	                        </div>
	                        <div style="height: 50px"></div>

      <!-- table Start myTable-->
      					<div class="cart-table clearfix">
 <!-- Filters-->
<!--  						 <input type="search" class="light-table-filter" data-table="table table-responsive" placeholder="請輸入關鍵字"> -->
			                 <table id="ordersystem" class="table table-responsive" >
                                <thead>
                                    <tr style="text-align: middle;">
										<th style="flex:40%" >No.</th>
										<th style="flex:40%" >會員帳號</th>
										<th style="flex:40%" >場地編號</th>
										<th style="flex:60%" >名稱</th>
										<th style="flex:60%" >使用日</th>
										<th style="flex:50%" >費用</th>
										<th style="flex:40%" >狀態</th>
										<th style="flex:60%;text-align:center" >顯示更多</th>
										<th style="flex:40%" ></th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="sOrders" items="${sOrders}" varStatus="status">
				      				<form action="/admin/updateStatus.controller?orderId=${sOrders.orderId}" method="post">
										<tr style="font-size:small; vertical-align: middle;">
											<td style="flex:40% " >${sOrders.orderId}</td>
											<td style="flex:40% " >${sOrders.memberId}</td>
											<td style="flex:40% " >${sOrders.spaceNo}</td>
											<td style="flex:60% " >${spaces[status.index].spaceName}</td>
											<td style="flex:60% " ><fmt:formatDate value="${sOrders.orderDate}" pattern="yyyy-MM-dd"/></td>
											<td style="flex:50% " >${spaces[status.index].price}</td>
											<td style="flex:40% " >
												<select name="status">
													<option value="預訂中" style="color:red" <c:if test="${sOrders.status=='預訂中'}"><c:out value="selected" /></c:if>>預訂中</option>
													<option value="已支付" style="color:green"  <c:if test="${sOrders.status=='已支付'}"><c:out value="selected" /></c:if>>已支付</option>
													<option value="完成" <c:if test="${sOrders.status=='完成'}"><c:out value="selected" /></c:if>>完成</option>
													<option value="取消" style="color:grey"  <c:if test="${sOrders.status=='取消'}"><c:out value="selected" /></c:if>>取消</option>
												</select>
											</td>
											<td style="flex:60%;;text-align:center ">
												<a href="#" class="expand-button"><img src="/amado-master/img/space-img/more.png" width="20px" alt="123"></a>
											</td>
											<td style="flex:40% ">
												<input type="submit" value="修改" class="page-link">
											</td>
										</tr>
										<tr class="expandable-details" style="background-color:aliceblue;font-size:small; vertical-align: middle;">
											<td style="flex:30%;" ><b style="float:right">訂購人 </b></td>
											<td style="flex:50%;float:left" >${sOrders.cPerson}</td>
											<td style="flex:30%;" ><b style="float:right">電話 </b></td>
											<td style="flex:50%;" >${sOrders.contact}</td>
											<td style="flex:30%;"  colspan="2"><b style="float:right">下單日期 </b></td>
											<td style="flex:50%;" ><fmt:formatDate value="${sOrders.bookTime}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
											<td style="flex:30%;"  colspan="2"><b style="float:right">支付方式 </b></td>
											<td style="flex:50%;" >${sOrders.payment}</td>
											<td style="flex:30%;"  colspan="2"><b style="float:right">備註 </b></td>
											<td style="flex:50%;" >${sOrders.remarks}</td>
										</tr>
					      			</form>
									</c:forEach>
								
                                </tbody>
                            </table>
                        </div>
					<!-- Pagination -->
		              	<div class="row">
							<div class="col-12">
								<nav aria-label="navigation">
									<ul class="pagination justify-content-end mt-50">
										<c:forEach var="i" begin="1" end="${totalPages}" step="1">
											<li class="page-item"><a class="page-link" href="${i}">${i}</a></li>
										</c:forEach>
<%-- 										<li style="text-align: center; padding: 10px; font-size: 10px">${thisPage}/${totalPages}</li> --%>
									</ul>
								</nav>
							</div>
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
			
            //確認使用者是否登入並拿到當前使用者 
			 $(function () {
                    var currentUser;
                    $.ajax({
                        type: "get",
                        url: "/getCurrentUser.do",
                        success: function (member) {
                            currentUser = member;
                        }
                    });


                })
                
			// 訂單"顯示更多"按鈕
			 $(document).ready(function() {
	            $(".expand-button").click(function(e) {
	                        e.preventDefault();
	                    $(this).closest("tr").next(".expandable-details").toggle();
	            });
	            $(".expandable-details").hide();  
	        });
            
 

			 
				 

				
		    
		       </script>

		</body>

		</html>