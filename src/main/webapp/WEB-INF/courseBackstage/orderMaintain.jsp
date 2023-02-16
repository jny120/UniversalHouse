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
            <link rel="stylesheet" href="/amado-master/style.css">
            <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
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

                th,
                td {
                    word-break: break-all;
                }

                .main-content-wrapper .cart-table-area table thead tr th {
                    font-size: 16px
                }

                .image-upload>input {
                    display: none;
                }

                .footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link {
                    font-size: 20px
                }

                .main-content-wrapper .header-area .amado-nav li a {
                    color: white
                }
                
                .delete {
						background-color: #555555;
						border: none;
						color: white;
						padding: 3px 7px;
						text-align: center;
						text-decoration: none;
						display: inline-block;
						font-size: 16px;
						border-radius: 4px;
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
                        <a href="/"><img src="/amado-master/img/core-img/logo.png" alt=""></a>
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

                <!-- 從這邊開始寫-->
				<div class="cart-table-area section-padding-100">
						<div class="container-fluid">
							<!-- <div class="row"> -->
							<div>
								<div class="cart-title mt-50">
									<h2>全部訂單</h2>
								</div>
								
								
								

								<div class="clearfix">
									<form id="form" enctype="multipart/form-data" method="POST">
										<table class="table table-responsive" id="myTable" style="text-align:center;">
											<thead>
												<tr>
													
													<th style="flex:60%">訂單編號</th>
													<th style="flex:60%">會員編號</th>
													<th style="flex:60%">會員名稱</th>
													<th style="flex:60%">信箱</th>
													<th style="flex:60%">總金額</th>
													<th style="flex:60%">訂單成立時間</th>
													<th style="flex:60%">操作</th>
												</tr>
											</thead>
											<tbody id='tb'>
												<c:forEach items="${orders}" var="allOrders">
													<tr>
														<td style="flex:60%">${allOrders.orderNo}</td>
														<td style="flex:60%">${allOrders.memberPk}</td>
														<td style="flex:60%">${allOrders.name}</td>
														<td style="flex:60%">${allOrders.email}</td>
														<td style="flex:60%">${allOrders.totalPrice}</td>
														<td style="flex:60%">${allOrders.orderDate}</td>
														
														<td style="flex:60%">

													
															<input type="button" value="刪除" class="delete">
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</form>
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
                                                    <a class="nav-link"
                                                        href="/myProjects/showAllEntrusBacktage/1">專案</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/spacereadall.controller">場地</a>
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
            <!-- dataTable -->
            <script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
            <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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
                
                
                $(document).ready(function () {
						$('#myTable').DataTable();

					});

					$('#tb').on('click', '.delete', function () {
						let orderNo = $(this).parent().siblings().eq(0).text();
						let td = $(this).parent().parent();
						$.ajax({
							type: 'post',
							url: '/admin/deleteOrder',
							data: {
								orderNo: orderNo,
							},
							success: function () {
								$(this).parent().parent().remove();
								Swal.fire('刪除成功!', '已刪除該筆資料,請重新整理!', 'success');
								td.remove()


							},
							error: function (thrownError) {
								Swal.fire({
									icon: 'error',
									title: 'Oops...',
									text: 'Something went wrong!',
									footer: '<a href="">Why do I have this issue?</a>'
								})
							}
						});
					})
            </script>

        </body>

        </html>