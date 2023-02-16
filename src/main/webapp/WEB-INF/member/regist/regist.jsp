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
                        <li><a href="/testBackstage">測驗</a></li>
                        <li><a href="/frontPage">論壇</a></li>
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

            <div class="cart-table-area section-padding-100">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-lg-8">
                            <div class="checkout_details_area mt-50 clearfix">

                                <div class="cart-title" style="text-align: center;">
                                    <h2>註冊會員</h2>
                                    <hr>
                                    <p></p>
                                </div>
                                <form action="regist.do" method="post" style="margin-left: 80px"
                                    enctype="multipart/form-data">

                                    <div class="col-12 mb-3">
                                        <label for="memberId">帳號: </label>
                                        <input type="text" class="form-control" id="memberId" name="memberId"
                                            placeholder="ID" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <label for="text">暱稱: </label>
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Name"
                                            value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <label for="password">密碼: </label>
                                        <input type="password" class="form-control" id="password" name="password"
                                            placeholder="Password" value="">
                                    </div>


                                    <div class="col-12 mb-3">
                                        <label for="email">電子郵件: </label>
                                        <input type="email" class="form-control" id="email" name="email"
                                            placeholder="Email" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <label for="gender">性別: </label>
                                        <select class="w-100 nice-select " id="gender" name="gender">
                                            <option value="default" disabled="true" selected>Please select your
                                                Gender</option>
                                            <option value="男">男</option>
                                            <option value="女">女</option>
                                        </select>
                                    </div>


                                    <!--                                     <div class="custom-control custom-checkbox d-block mb-2"> -->
                                    <!--                                         <input type="checkbox" class="custom-control-input" name="subscribe" id="rm" -->
                                    <!--                                             checked='checked' value="true"> -->

                                    <!--                                         <label class="custom-control-label" for="rm">Subscribe for receive emails from -->
                                    <!--                                             UniversealHosue</label> -->
                                    <!--                                     </div> -->



                                    <div class="cart-btn col-12 mt-100 ">
                                        <input class="btn amado-btn w-100" id="submit" type="submit" value="confirm">
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
        <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
        <!-- Popper js -->
        <script src="<c:url value='/amado-master/js/popper.min.js' />"></script>
        <!-- Bootstrap js -->
        <script src="<c:url value='/amado-master/js/bootstrap.min.js' />"></script>
        <!-- Plugins js -->
        <script src="../../"></script>
        <!-- Active js -->
        <script src="<c:url value='/amado-master/js/active.js' />"></script>
        <script>
            $(function () {

                $("#memberId").blur(function () {
                    if ($(this).val() == "" && $(this).siblings().length < 2) {
                        $(this).parent().append('<span class="errorMsg" style="color: red; margin-left: 20px">Please enter ID</span>')
                    } else if ($(this).val() != "") {
                        $(this).parent().children('span').remove();
                    }
                    ifChangeToSubmit();
                });
                $("#name").blur(function () {
                    console.log($(this).siblings().length)
                    if ($(this).val() == "" && $(this).siblings().length < 2) {
                        $(this).parent().append('<span class="errorMsg" style="color: red; margin-left: 20px">Please enter name</span>')
                    } else if ($(this).val() != "") {
                        $(this).parent().children('span').remove();
                    }
                    ifChangeToSubmit();
                });

                $("#password").blur(function () {
                    if ($(this).val() == "" && $(this).siblings().length < 2) {
                        $(this).parent().append('<span class="errorMsg" style="color: red; margin-left: 20px">Please enter password</span>')
                    } else if ($(this).val() != "" && varifyPassword()) {
                        $(this).parent().children('span').remove();
                    } else if ($(this).val() != "" && !varifyPassword()) {
                        $(this).parent().children('span').remove();
                        $(this).parent().append('<span class="errorMsg" style="color: red; margin-left: 20px">The password must be eight characters or more and contain at least one uppercase character, at least one lowercase character and at least one number.</span>')
                    }
                    ifChangeToSubmit();
                });

                function varifyPassword() {
                    let password = $("#password").val();
                    if (password.match(/[a-z]/g) && password.match(/[A-Z]/g) && password.match(/[0-9]/g) &&
                        password.match(/[^a-zA-Z\d]/g) && password.length >= 8) {
                        return true;
                    } else {
                        return false;
                    }
                }

                $("#email").blur(function () {
                    if ($(this).val() == "" && $(this).siblings().length < 2) {
                        $(this).parent().append('<span class="errorMsg" style="color: red;  margin-left: 20px">Please enter email</span>')
                    } else if ($(this).val() != "") {
                        $(this).parent().children('span').remove();
                    }
                    ifChangeToSubmit();
                });

                //確認是否有選擇性別
                $("#gender").blur(function () {
                    if ($(this).val() == null && $(this).siblings().length < 2) {
                        $(this).parent().after('<span class="errorMsg" id="genderErrorMsg" style="color: red;  margin-left: 20px">Please select gender</span>')
                    } else {
                        $('#genderErrorMsg').remove();
                    }
                    console.log($(this).val())
                    ifChangeToSubmit();
                });

                var ifChangeToSubmit = function () {
                    (checkAllFilled() && varifyPassword()) ?
                        $('#submit').removeAttr("type").attr("type", "submit") :
                        $('#submit').removeAttr("type").attr("type", "button");
                }

                $("#submit").click(function () {
                    if (!checkAllFilled() || !varifyPassword()) {
                        alert('please fill all item');
                    }
                })

                $('form').submit(function () {
                    if (!checkAllFilled) {
                        return false;
                    }
                })

                function checkAllFilled() {
                    if ($("#memberId").val() != "" && $("#name").val() != "" && $("#password").val() != "" && $("#email").val() != "" && $("#gender").val() != null) {
                        return true;
                    } else {
                        return false;
                    }
                }
            });

        </script>

    </body>

    </html>