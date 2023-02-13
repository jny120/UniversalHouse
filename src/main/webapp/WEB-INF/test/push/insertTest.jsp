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
            <link rel="icon" href="/amado-master/img/core-img/favicon.ico">

            <!-- Core Style CSS -->
            <link rel="stylesheet" href="/amado-master/css/core-style.css">
            <link rel="stylesheet" href="/amado-master/css/style.css">

            <style>
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
                            <li><a href="/admin/memberBackstage" style="color:white">Member</a></li>
                            <li><a href="/admin/spacereadall.controller" style="color:white">Space</a></li>
                            <li><a href="/admin/testBackstage" style="color:white">Test</a></li>
                            <li><a href="/myProjects/showAllEntrusBacktage/1" style="color:white">Project</a></li>
                            <li><a href="/admin/forumBackstage" style="color:white">Forum</a></li>
                        </ul>
                    </nav>

                </header>
                <!-- Header Area End -->

                <!-- 從這邊開始寫-->
                <div class="cart-table-area section-padding-100">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12 col-lg-8">
                                <div class="checkout_details_area mt-50 clearfix">

                                    <div class="cart-title" style="text-align: center;">
                                        <h2>Create Space Data</h2>
                                        <hr>
                                        <p></p>
                                    </div>
                                    <form action="PushCsv.do" method="POST" enctype="multipart/form-data"
                                        style="margin-left: 80px;">


                                        <div class="col-18 mb-3">
                                            <label for="spaceName">
                                                <h4>測驗試題:</h4>
                                            </label>

                                        </div>


                                        <div class="col-18 mb-3">
                                            <label for="pushCsv">上傳試題 </label>
                                            <input style="border-style:none" type="file" class="" name="file"
                                                id="pushCsv">
                                        </div>
                                        <div class="col-12">
                                            <p style="font-style: italic; color:red;text-align: right">
                                                &nbsp;${errors.msg}&nbsp;</p>
                                        </div>
                                        <div class="col-18 mb-3">
                                            <button class="btn amado-btn w-100" type="submit"
                                                value="Confirm">Confirm</button>
                                        </div>
                                        <!-- <div style="text-align:center">
                                            <input type="reset"
                                                style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:50px; border-style:none "
                                                value="Reset">
                                            <input type="button"
                                                style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:50px; border-style:none"
                                                onclick="history.go(-1)" value="Undo">
                                        </div> -->

                                        <!-- form End -->
                                    </form>
                                    <!-- form Start -->
                                    <form action="PushTestImage.do" method="POST" enctype="multipart/form-data"
                                        style="margin-left: 80px;">


                                        <div class="col-18 mb-3">
                                            <label for="imgNumber">
                                                <h4>圖片上傳:</h4>
                                            </label>
                                            <input type="text" class="form-control" name="answer" id="answer"
                                                placeholder="" value="">
                                            <p style="font-style: italic; color:red;text-align: right">
                                                <!-- &nbsp;${errors.spaceName}</p> -->

                                        </div>

                                        <div class="col-18 mb-3">
                                            <label for="pic">Upload Picture </label>
                                            <input style="border-style:none" type="file" class="" name="image"
                                                id="image" accept="image/gif, image/jpeg, image/png">
                                        </div>
                                        <div class="col-12">
                                            <p style="font-style: italic; color:red;text-align: right">
                                                &nbsp;${errors.msg}&nbsp;</p>
                                        </div>
                                        <div class="col-18 mb-3">
                                            <button class="btn amado-btn w-100" type="submit"
                                                value="Confirm">Confirm</button>
                                        </div>
                                        <div style="text-align:center">
                                            <input type="reset"
                                                style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:50px; border-style:none "
                                                value="Reset">
                                            <input type="button"
                                                style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:50px; border-style:none"
                                                onclick="history.go(-1)" value="Undo">
                                        </div>

                                        <!-- form End -->
                                    </form>
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
                                                    <a class="nav-link" href="memberBackstage">Member</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="spacereadall.controller">Space</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="projectBackStage">Project</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="testBackstage">Test</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="forumBackstage">Forum</a>
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

        </body>

        </html>