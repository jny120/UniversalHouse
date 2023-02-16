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

                .image-upload>input {
                    display: none;
                }

                #aaa {
                    display: flex;
                    align-items: flex-end;
                    justify-content: space-between;
                }

                .aaa {
                    float: right;
                }

                #endtext-text {
                    white-space: pre-wrap;
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

                <div class="cart-table-area ">
                    <div class="container-fluid">
                        <div class="cart-title mt-50">
                            <h1 style="color: rgb(133, 133, 133)">測驗後臺管理</h2>
                        </div>
                        <!-- <div class="row"> -->
                        <form id="form" class="form" enctype="multipart/form-data" method="POST">

                            <div class="cart-title mt-50" id="aaa">
                                <h2>題目修改</h2><input type="button" calss="aaa" value="修改" id="insertpage">
                                <input id="survey" type="text" value="${surveytype.survey}" hidden="hidden">
                            </div>
                            <!-- <select class="optionsis">
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            </select> -->



                            <div style="display: flex; flex-direction: row;">
                                <div class="clearfix"
                                    style="display: flex; padding-right: 50px;  flex-grow: 2; flex-shrink: 2; flex-basis: 0%;">

                                    <!-- <form id="form" class="form" enctype="multipart/form-data" method="POST"> -->

                                    <table class="table table-responsive" id="testTable">

                                        <thead>

                                            <tr style="width: 1100px;">
                                                <th style=" flex-shrink:1;" class="testpk" hidden="hidden">testpk
                                                </th>
                                                <th style="flex-shrink:30;" class="testId">題號(testId)</th>
                                                <th style="flex-shrink:20;" class="field">field</th>
                                                <th style="flex-shrink:1;" class="eq">examinationQuestion</th>
                                                <th style="flex-shrink:6;" class="options">options</th>
                                                <th style="flex-shrink:6;" class="answer">answer</th>
                                                <th style="flex-shrink:30;" class="">刪除</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <div>


                                            </div>
                                        </tbody>
                                    </table>

                                    <!-- <input type="button" value="送出" id="insertpage"> -->
                                    <!-- </form> -->
                                </div>
                                <div style="display: flex; flex-direction:column; display: flex;" clss="clearfix">


                                </div>
                            </div>
                            <!-- </div> -->
                        </form>
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
                    console.log($('#survey').val())
                    var field = JSON.stringify($('#survey').val())
                    console.log(field)
                    $.ajax({
                        type: "POST",
                        url: "ShowTestServlet.controller",
                        data: { field: field },
                        success: function (result) {
                            console.log(result)
                            var a = 0;
                            var b = 1;
                            $.each(result, function (i, test) {
                                console.log(test)
                                let testStr = '<td style="flex-shrink:1;"class="testpk" hidden="hidden"><input type="text" id="testpk" name="testpk" class="testpk" value="' + test.testpk + '" hidden="hidden"></td><td style="flex-shrink:30;" class="testId"><input  type="text" name="testId" id="testId" readonly="readonly" class="form-control" value=' + b + '></td><td style="flex-shrink:20;" class="field"><input type="text" name="field" id="field" value="${surveytype.survey}" readonly="readonly" class="form-control"></td><td style="flex-shrink:1;" class="examinationquestion"><input type="text" name="examinationquestion" id="examinationquestion" placeholder="' + test.examinationquestion + '" value="' + test.examinationquestion + '" class="form-control"></td><td style="flex-shrink:6;" class="options"><input type="text" name="options" id="options" class="form-control" value="' + test.options + '" placeholder="' + test.options + '"><br><input type="text" name="options2" id="options2" class="form-control" value="' + test.options2 + '" placeholder="' + test.options2 + '"></td><td style="flex-shrink:6;" class="options"><input type="text" name="answer" id="answer" class="form-control" value="' + test.answer + '" placeholder="' + test.answer + '"><br><input type="text" name="answer2" id="answer2" class="form-control" value="' + test.answer2 + '" placeholder="' + test.answer2 + '"></td>' + '<td style="flex-shrink:30;"><input type="button" class="btn delete" value="刪除" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';
                                $('#testTable tbody').append('<tr style="border: 1px solid#17a2b8; border-collapse: collapse; width: 100%;" class= "testis ' + a + '">');
                                $('#testTable tbody tr').eq(a++).append(
                                    testStr);
                                b++

                            })
                        }

                    })
                    $('#insertpage').on('click', function () {

                        let testbean = [];
                        $('.testis').each(function () {
                            var obj = {};
                            obj.testpk = $(this).find('#testpk').val()
                            obj.testId = $(this).find('#testId').val()
                            obj.examinationquestion = $(this).find('#examinationquestion').val()
                            obj.field = $(this).find('#field').val()
                            obj.options = $(this).find('#options').val()
                            obj.options2 = $(this).find('#options2').val()
                            obj.options3 = $(this).find('#options3').val()
                            obj.options4 = $(this).find('#options4').val()
                            obj.answer = $(this).find('#answer').val()
                            obj.answer2 = $(this).find('#answer2').val()
                            obj.answer3 = $(this).find('#answer3').val()
                            obj.answer4 = $(this).find('#answer4').val()
                            testbean.push(obj);
                            console.log(obj)
                        })
                        var jsonSre = JSON.stringify(testbean);

                        console.log("88888" + jsonSre)

                        Swal.fire({
                            title: "確定要修改?",
                            text: "",
                            icon: "warning",
                            showCancelButton: true,
                            confirmButtonText: "是",
                            cancelButtonText: "否",
                        }).then((result) => {
                            if (result.value) {
                                $.ajax({
                                    type: "post",
                                    url: "/admin/insertNewTestPage",
                                    contentType: "application/json",
                                    cache: false,
                                    processData: false,
                                    data: jsonSre,
                                    success: function (result) {
                                        Swal.fire({
                                            title: "修改成功!",
                                            text: "修改成功確認後跳轉頁面",
                                            icon: "success",
                                            showCancelButton: false,
                                            confirmButtonText: "OK",
                                        }).then((result) => {
                                            if (result.value) {
                                                window.location.href = "/admin/testBackstage";
                                            }
                                        });

                                    },
                                    error: function (result) {
                                        Swal.fire("update error")
                                    }
                                })
                            }
                        })

                    })
                    $('tbody').on('click', '.delete', function () {
                        let testpk = $('#testpk').val()
                        console.log(testpk + "testpk");
                        Swal.fire({
                            title: "確定要刪除嗎?",
                            text: "如果刪除後無法回復請確認後再操作",
                            icon: "warning",
                            showCancelButton: true,
                            confirmButtonText: "是",
                            cancelButtonText: "否",
                        }).then((result) => {
                            if (result.value) {
                                $.ajax({
                                    type: "post",
                                    url: "/admin/deleteTest.do",
                                    data: {
                                        testpk: testpk,
                                    },
                                    async: false,
                                    success: function () {
                                        Swal.fire({
                                            title: "刪除!",
                                            text: "此筆資料已刪除",
                                            icon: "success",
                                            showCancelButton: false,
                                            confirmButtonText: "OK",
                                        }).then((result) => {
                                            if (result.value) {
                                                location.reload();
                                            }
                                        });
                                    },
                                    error: function () {
                                        Swal.fire({
                                            title: "刪除!",
                                            text: "此筆資料已刪除",
                                            icon: "success",
                                            showCancelButton: false,
                                            confirmButtonText: "OK",
                                        }).then((result) => {
                                            if (result.value) {
                                                location.reload();
                                            }
                                        });
                                    }
                                });
                            }
                        });
                    });
                    // $('tbody').on('click', '.delete', function () {

                    //     let testpk = $(this).parent().siblings().eq(0).attr('value');
                    //     console.log(testpk)
                    //     $.ajax({
                    //         type: "post",
                    //         url: "/admin/deleteTest.do",
                    //         data: {
                    //             testpk: testpk,
                    //         },
                    //         async: false,
                    //         success: function () {
                    //             Swal.fire("response success");
                    //             // $('html').load(location.href);
                    //             location.reload();
                    //         },
                    //         error: function () {
                    //             Swal.fire({
                    //                 title: "response success",
                    //                 icon: "success",
                    //                 showCancelButton: false,
                    //                 confirmButtonText: "OK",
                    //             }).then((result) => {
                    //                 if (result.value) {
                    //                     location.reload();
                    //                 }
                    //             });

                    //         }
                    //     })
                    // })
                })
            </script>

        </body>

        </html>