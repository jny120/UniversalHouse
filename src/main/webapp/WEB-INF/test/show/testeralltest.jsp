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
        <!-- <link rel="stylesheet" href="/css/ordersystem.css"> -->
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap');
            /* 
   .psychoTestListPad {
    border-radius: 10%;
    background-color: #555;
   } */

            .main-content-wrapper .cart-table-area {
                FONT-WEIGHT: 100;
                z-index: 1;
                -webkit-box-flex: 0;
                flex: 0 0 calc(100% - 320px);
                width: calc(100% - 320px);
                max-width: calc(100% - 320px);
                PADDING: 0;
            }

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

            .psychoTestListPad ul li.picture img {
                width: 280px;
                height: 200px;

            }



            .psychoTestListPad ul {
                border-radius: 5%;
                width: 305px;
                height: auto;
                display: inline-block;
                background: cornsilk;
                ;
                margin-right: 1%;
                MARGIN-LEFT: 1%;
                margin-bottom: 40px;
                padding: 30px 25px;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            .psychoTestListPad ul li.script {
                text-align: left;
                height: 13em;
                overflow-y: hidden;
            }

            .psychoTestListPad ul li.title {
                color: #454949;
                font-size: 1em;
                display: flex;
            }


            .psychoTestListPad ul li {
                text-align: center;

                color: #555;
            }

            .psychoTestListPad ul.toSignup li.tobeMamber a[data-v-20f1e346] {
                background: #ff888a;
                font-size: 20px;
            }

            li {

                text-align: -webkit-match-parent;
            }


            li>input.btn_toTest {

                width: 100%;
                padding: 10px 0;
                color: #b1b1b1;
                background: #2a2a2a;
                margin: 0 auto;
                border-radius: 5px;
                border: springgreen;
            }

            .toSignup {
                float: left;
                width: 50%;

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
            <div class=" cart-table-area section-padding-100">
                <div class=""
                    style="/* width: 1219.24px; *//* margin-bottom: -8px; */position: inherit;/* top: -100px; */">
                    <img src="/amado-master/img/test-img/your_video_file.gif"
                        style="width: 800px;height: 250px;display: flex;/* position: absolute; */left: 214px;top: 35px;margin: auto;">
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-10" style="padding: 0;bottom: -40px;">

                                <div data-v-394ec870="" id="main" class="main"><!---->
                                    <div data-v-20f1e346="" class="psychoCount">
                                        <div data-v-20f1e346="" class="psychoTestListPad">
                                            <input type="hidden" id="testname" value="${memberids}" >

                                        </div>

                                    </div>
                                </div>
                            </div>

                             <div class="col-2"
                style="padding: 0%;margin: 0%;width: 250px;height: 800px;display: flex;flex-direction: column;bottom: -40px;">
                <div
                  style="/*border:1px black solid;*/ background-color: #f2f2f2;width: 197px;height: 206px; text-align: center;border-bottom-left-radius: 10px ;border-bottom-right-radius: 10px; margin-top: 3px;">
                  <a href="http://localhost:8080/spacedetail.controller/3003" class="ec-products" data-gtm="精選商品" data-sn="1680" style=""><img style="height: auto;
                      max-width: 100%;
                      width: 197px;" src="/amado-master/img/test-img/3003.jpg"></a>
                  <a href="http://localhost:8080/spacedetail.controller/3003" class="newanime_text"
                    style="color: rgba(255, 123, 22, 0.963);font-size: 16px;"><span>任何場地 我們都有</span><br>
                    <font color="#F04F75">台北創造極限共享空間</font>
                  </a>
                </div>
                <div
                  style="/*border:1px black solid;*/ background-color: #f2f2f2;width: 197px;height: 206px; text-align: center;border-bottom-left-radius: 10px ;border-bottom-right-radius: 10px; margin-top: 10px;">
                  <a href="http://localhost:8080/projects/projectFront/1036" class="ec-products" data-gtm="精選商品" data-sn="1680" style=""><img style="height: auto;
                    max-width: 100%;
                    width: 197px;" src="/amado-master/img/test-img/2023-02-16_100206.png"></a>
                  <a href="http://localhost:8080/projects/projectFront/1036" class="newanime_text"
                    style="color: rgba(255, 123, 22, 0.963);font-size: 16px;"><span>專案平台-專案委託</span><br>
                    <font color="#F04F75">採訪撰稿</font>
                  </a>
                </div>
                <div
                  style="/*border:1px black solid;*/ background-color: #f2f2f2;width: 197px;height: 231px; text-align: center;border-bottom-left-radius: 10px ;border-bottom-right-radius: 10px; margin-top: 10px;">
                  <a href="http://localhost:8080/showDetail/1" class="ec-products" data-gtm="精選商品" data-sn="1680" style=""><img style="height: auto;
                  max-width: 100%;
                  width: 197px;" src="/amado-master/img/test-img/course10.png"></a>
                  <a href="http://localhost:8080/showDetail/1" class="newanime_text"
                    style="color: rgba(255, 123, 22, 0.963);font-size: 16px;"><span>前端課程開賣</span><br> <font color="#F04F75">前端入門(一)HTML&CSS</font></a>
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
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


        <script>
            $(function () {


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
                            // console.log(member.length)
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


                var testname = $('#testname').val()
                console.log(testname)
                $.ajax({
                    type: 'get',
                    url: "/findmembertest.controller",
                    data: { memberId: testname },
                    datatype: 'json',
                    async: 'false',
                    success: function (response) {
                        $.each(response, function (index, element) {
                            console.log(element)
                            // if (element.shelves == "上架")
                            if (element.fraction != null)
                                $('.psychoTestListPad').append(

                                    '<form action="/testgo.do" method="get" enctype="multipart/form-data"><input type="hidden" name="surveypk" value="' + element.id + '"><input type="hidden" name="survey" value="' + element.inputRadio + '"><input type="hidden" name="" value="' + element.memberId + '"><ul data-v-20f1e346="" class="toSignup height_R2"><li data-v-20f1e346="" name="" class="name">' + "題庫:" + element.inputRadio + '</li><li data-v-20f1e346="" class="name">' + "分數:" + element.fraction + '</li><li data-v-20f1e346="" class="picture"><div style="position:relative;"><img data-v-20f1e346="" alt="" height: 100px; width: 100px; src="/ShowsurveyImgServlets.do/' + element.inputRadio + '"></div ><li data-v-20f1e346="" class="tobeMamber"><input type="button" data-v-20f1e346="" value="開始測驗" class="btn_toTest CGc toSignup" id="testgo"></li><li data-v-14420c92="" data-v-20f1e346="" class="linkPad"></li></ul ></form > '


                                )
                        })
                    }
                })

                // var indexPage = 1;
                // $(document).ready(function () {
                //   load(indexPage);
                // });
                // function change(page) {
                //   indexPage = page;
                //   load(indexPage);
                // }
                // function load(indexPage) {
                //   $.ajax({
                //     type: 'post',
                //     url: '/testfindAllByPage/' + indexPage,
                //     dataType: 'JSON',
                //     contentType: 'application/json',
                //     success: function (response) {
                //       $('.psychoTestListPad').empty("");
                //       if (response == null) {
                //         $('table').prepend("<tr><td colspan='2'>暫無資料</td></tr>");
                //       } else {
                //         // var table = $('.psychoTestListPad');
                //         $.each(response, function (index, element) {
                //           console.log(element)
                //           $('.psychoTestListPad').append(
                //             '<form action="/testgo.do" method="post" enctype="multipart/form-data"><input type="hidden" name="surveypk" value="' + element.surveypk + '"><input type="hidden" name="survey" value="' + element.survey + '"><ul data-v-20f1e346="" class="toSignup height_R2"><li data-v-20f1e346="" class="title">' + element.survey + '</li><li data-v-20f1e346="" class="picture"><img data-v-20f1e346="" alt="" height: 180px; width: 180px; src="/ShowsurveyImgServlet.do/' + element.surveypk + '"><br></li><li data-v-20f1e346="" class="name">' + element.surveytype + '</li><li data-v-20f1e346="" class="script">' + element.welcometext + '</li><li data-v-20f1e346="" class="tobeMamber"><input type="button" data-v-20f1e346="" value="開始測驗" class="btn_toTest CGc toSignup" id="testgo"></li><li data-v-14420c92="" data-v-20f1e346="" class="linkPad"></li></ul></form>')
                //         })

                //       }

                //       error:function(){
                //         console.log("error")
                //       }
                //     }
                //   })
                // }


                $('body').on('click', '#testgo', function (e) {
                    e.preventDefault();
                    var form = $(this).closest('form');
                    if ($('#testname').val() == 'undefined') {
                        Swal.fire({
                            title: '請先登入會員',
                            icon: 'error',
                        });
                    } else {
                        $(form).find('input[type="button"]').attr('type', 'submit');
                        form.submit();
                    }
                });

                // $('.radiocolor input').click(function () {
                //   console.log('123')
                //   var next = $(this).closest('.questionBox').next('.questionBox');
                //   $('html, body').animate({
                //     scrollTop: next.offset().top
                //   }, 1000);
                // });
            })
        </script>

    </body>

    </html>