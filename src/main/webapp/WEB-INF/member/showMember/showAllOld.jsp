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
                    font-size: 16px;
                    text-align: center;
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

                .main-content-wrapper .cart-table-area table tbody tr td {
                    display: flex;
                    flex-direction: column;
                    text-align: center;
                }

                .main-content-wrapper .cart-table-area table tbody tr {
                    border-bottom: 1pt solid #dee2e6;
                }

                #form {
                    width: 100%;
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
                            <li class="active"><a href="/">??????</a></li>
                            <li><a href="/admin/showAllMember">??????</a></li>
                            <li><a href="/myProjects/showAllEntrusBacktage/1">??????</a></li>
                            <li><a href="/admin/spacereadall.controller">????????????</a></li>
                            <li><a href="/admin/showAllcourse">??????</a></li>
                            <li><a href="/admin/testBackstage">??????</a></li>
                            <li><a href="/admin/forumBackstage">??????</a></li>
                        </ul>
                    </nav>
                    <!-- Button Group -->
                    <div class="amado-btn-group mt-30 mb-100" id="loginDiv">
                        <a href="/" id="memberCenterOrBs" class="btn amado-btn mb-15">????????????</a>
                    </div>

                </header>
                <!-- Header Area End -->

                <!-- ??????????????????-->
                <div class="cart-table-area ">
                    <div class="container-fluid">
                        <div class="cart-title mt-50">
                            <h1 style="color: rgb(133, 133, 133)">????????????</h2>
                        </div>
                        <!-- <div class="row"> -->
                        <div class="cart-title mt-50">
                            <h2>????????????</h2>
                        </div>
                        <div style="display: flex; flex-direction: row;">
                            <div class="clearfix"
                                style="display: flex; padding-right: 50px;  flex-grow: 2; flex-shrink: 2; flex-basis: 0%;">
                                <form id="form" enctype="multipart/form-data" method="POST">

                                    <table class="table table-responsive" id="memberTable">
                                        <!-- <thead style="display: table-header-group;"> -->
                                        <thead>
                                            <!-- <a href="/chart" class="btn" style="font-size:10px; margin: 3px; width: 100px; height: 40px; white-space: normal;>????????????</a> -->

                                            <tr>
                                                <th style=" flex-shrink:1;" class="img">??????</th>
                                                <th style="flex-shrink:1;" class="id">??????</th>
                                                <th style="flex-shrink:1;" class="name">??????</th>
                                                <th style="flex-shrink:1;" class="pwd">??????</th>
                                                <th style="flex-shrink:1;" class="loc">??????</th>
                                                <th style="flex-shrink:1;" class="email">????????????</th>
                                                <th style="flex-shrink:1;" class="gender">??????</th>
                                                <th style="flex-shrink:1;" class="btd">??????</th>
                                                <th style="flex-shrink:1;" class="rt">????????????</th>
                                                <th style="flex-shrink:1;" class="ll">??????????????????</th>
                                                <th style="flex-shrink:1;" class="vrfc">??????</th>
                                                <th style="flex-shrink:1;" class="perm">??????</th>
                                                <th style="flex-shrink:1;" class="">??????</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                            <div style="display: flex; flex-direction:column; display: flex; padding-top:80px"
                                clss="clearfix ">
                                <div>
                                    <p>????????????/????????????</p>
                                    <hr>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowimg" id="ifShowimg"
                                        checked="true">
                                    <label class="custom-control-label" for="ifShowimg">??????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowid" id="ifShowid"
                                        checked="true">
                                    <label class="custom-control-label" for="ifShowid">??????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowname"
                                        id="ifShowname" checked="true">
                                    <label class="custom-control-label" for="ifShowname">??????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowpwd" id="ifShowpwd">
                                    <label class="custom-control-label" for="ifShowpwd">??????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowloc" id="ifShowloc">
                                    <label class="custom-control-label" for="ifShowloc">??????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowemail"
                                        id="ifShowemail">
                                    <label class="custom-control-label" for="ifShowemail">????????????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowgender"
                                        id="ifShowgender">
                                    <label class="custom-control-label" for="ifShowgender">??????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowbtd" id="ifShowbtd">
                                    <label class="custom-control-label" for="ifShowbtd">??????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowrt" id="ifShowrt">
                                    <label class="custom-control-label" for="ifShowrt">????????????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowll" id="ifShowll">
                                    <label class="custom-control-label" for="ifShowll">??????????????????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowvrfc"
                                        id="ifShowvrfc">
                                    <label class="custom-control-label" for="ifShowvrfc">??????</label>
                                </div>
                                <div class="custom-control custom-checkbox" style="display: inline-flex;">
                                    <input type="checkbox" class="custom-control-input" name="ifShowperm"
                                        id="ifShowperm" checked="true">
                                    <label class="custom-control-label" for="ifShowperm">??????</label>
                                </div>
                            </div>
                        </div>
                        <!-- </div> -->
                    </div>

                </div>


                <!-- ???????????? -->

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
                                                    <a class="nav-link" href="showAllMember">??????</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link"
                                                        href="/myProjects/showAllEntrusBacktage/1">??????</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/spacereadall.controller">??????</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/showAllcourse">??????</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/testBackstage">??????</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="/admin/forumBackstage">??????</a>
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
                    //??????????????????????????????????????????????????? 
                    $.ajax({
                        type: "get",
                        url: "/getCurrentUser.do",
                        success: function (member) {
                            currentUser = member;
                        }
                    });

                    //for ???????????????table ????????????users
                    var members;
                    let upgradeToAdminBtn = '<input type="button" class="btn upgradeToAdminBtn" value="????????????" style=" width: 100%; height: 40px; white-space: normal;">';
                    let degradeToUserBtn = '<input type="button" class="btn degradeToUserBtn" value="????????????" style=" width: 100%; height: 40px; white-space: normal;">';
                    $.ajax({
                        type: "POST",
                        url: "/admin/showAllMember.do",
                        success: function (result) {
                            members = result;
                            $.each(members, function (i, member) {

                                $('#memberTable tbody').append('<tr id= tr' + i + '></tr>');

                                //??????member????????????????????????????????????default??????
                                let imgStr = '<td style="vertical-align: middle;flex:auto;" class="img"><img src="/images/member/member.png"alt="Product" style="width:100%"></td>';
                                $('#memberTable tbody tr').eq(i).append(imgStr);
                                if (member.haveImg == true) {
                                    $('#tr' + i).children().eq(0).children().attr('src', '/ShowMemberImgServlet.do/' + member.memberId)
                                }

                                //???????????????????????????,?????????????????????????????????
                                let vrfcStr = member.verification == 1 ?
                                    '<td style="flex-shrink:1;" class="vrfc"><span> ????????? </span></td>'
                                    : '<td style="flex-shrink:1;" class="vrfc"><input type="button" class="btn sendMail" value="send mail" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

                                let userIdentity = member.permission == 1 ?
                                    '?????????' : '??????';
                                let permStr;
                                let funcStr;

                                if (member.permission == 0) {
                                    permStr = '<td style="flex-shrink:1;" class="perm"><span>'
                                        + userIdentity + '</span>' + upgradeToAdminBtn + '</td>';
                                    funcStr = '<td style="flex-shrink:1;"><input type="button" class="btn toModifyMode" value="??????" style="margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="??????" style="margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

                                } else {
                                    permStr = '<td style="flex-shrink:1;" class="perm"><span>'
                                        + userIdentity + '</span>' + degradeToUserBtn + '</td>';
                                    funcStr = '<td style="flex-shrink:1;"><input type="button" class="btn toModifyMode" value="??????" style="margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

                                }



                                tdStr =
                                    '<td style="flex-shrink:1;" class="id"><span>' + member.memberId + '</span></td>' +

                                    '<td style="flex-shrink:1;" class="name"><span>' + member.name + '</span></td>' +

                                    '<td style="flex-shrink:1;" class="pwd"><span>' + member.password + '</span></td>' +

                                    '<td style="flex-shrink:1;" class="loc"><span>' + member.location + '</span></td>' +

                                    '<td style="flex-shrink:1;" class="email"><span>' + member.email + '</span></td>' +

                                    '<td style="flex-shrink:1;" class="gender"><span>' + member.gender + '</span></td>' +

                                    '<td style="flex-shrink:1;" class="btd";><span>' + member.birthday + '</span></td>' +

                                    '<td style="flex-shrink:1;" class="ll"><span>' + member.lastLogin + '</span></td>' +

                                    '<td style="flex-shrink:1;" class="rt"><span>' + member.registTime + '</span></td>'

                                    + vrfcStr + permStr + funcStr;

                                $('#memberTable tbody tr').eq(i).append(tdStr);

                            });

                            //??????dataTable
                            // $('#memberTable').DataTable({
                            //     "lengthMenu": [10, 15],
                            //     "search": "??????:",
                            //     "paginate": {
                            //         "first": "?????????",
                            //         "previous": "?????????",
                            //         "next": "?????????",
                            //         "last": "????????????"
                            //     },
                            // });
                            $('#memberTable_filter').append(
                                '<a href="/admin/chart" class="btn" style="background-color:antiquewhite;float:right;padding:.2rem .75rem">????????????</a>'

                            )

                            //??????????????????????????????
                            // for (i = 4; i < items.length; i++) {

                            //     $('.' + item[i]).attr('style', function () {
                            //         return $(this).attr('style') + 'display: none';
                            //     })
                            // }

                            let items = ["img", "id", 'name', "pwd", "loc", "email", "gender", "btd", "rt", "ll", "vrfc", "perm"]
                            items.forEach(item => {
                                if (!$('#ifShow' + item).is(':checked')) {
                                    $('.' + item).attr('style', function () {
                                        return $(this).attr('style') + 'display: none';
                                    })
                                }
                            });


                        },
                        error: function (xhr, status, error) {
                            alert(xhr.responseText);
                        }
                    })

                    //????????????check box -> ???????????????id collumn				
                    let items = ["img", "id", 'name', "pwd", "loc", "email", "gender", "btd", "rt", "ll", "vrfc", "perm"]
                    items.forEach(item => {
                        $('#ifShow' + item).on('click', function () {

                            if (!$(this).is(':checked')) {

                                $('.' + item).css("display", "none");
                            } else {
                                $('.' + item).css("display", "");
                            }
                        })
                    });

                    member = {
                        memberId: "",
                        name: "",
                        password: "",
                        location: "",
                        email: "",
                        gender: "",
                        birthday: "",
                        registerTime: "",
                        lastLogin: "",
                        memberImgSrc: ""
                    };
                    var member1 = Object.create(member);
                    $('tbody').on('click', '.toModifyMode', function () {
                        //???member???????????????????????????????????????
                        member1.memberId = $(this).parent().siblings().eq(1).children().text();
                        member1.name = $(this).parent().siblings().eq(2).children().text();
                        member1.password = $(this).parent().siblings().eq(3).children().text();
                        member1.location = $(this).parent().siblings().eq(4).children().text();
                        member1.email = $(this).parent().siblings().eq(5).children().text();
                        member1.gender = $(this).parent().siblings().eq(6).children().text();
                        member1.birthday = $(this).parent().siblings().eq(7).children().text();
                        member1.registerTime = $(this).parent().siblings().eq(8).children().text();
                        member1.lastLogin = $(this).parent().siblings().eq(9).children().text();
                        member1.memberImgSrc = $(this).parent().siblings().eq(0).find('img').attr('src');

                        //??????????????? <input>
                        url = member1.memberImgSrc.includes('.do')
                            ? "/ShowMemberImgServlet.do/" + member1.memberId
                            : "/amado-master/img/core-img/member.png";
                        let img = '<label for="memberImage"><img src="' + url + '" alt="Product" style="width:100%"></label><input type="file" name="memberImage" id="memberImage" style="width: 100%; display:none">';

                        $(this).parent().siblings().eq(0).html(img);

                        $(this).parent().siblings().eq(2).children().html(
                            '<input type="text" name="name" id="name" class="form-control"> ');
                        $('#name').attr("placeholder", member1.name);

                        $(this).parent().siblings().eq(3).children().html(
                            '<input type="text" name="password" id="password" class="form-control">');
                        $('#password').attr("placeholder", member1.password);

                        // $(this).parent().siblings().eq(4).children().html(
                        //     '<input type="text" name="location" id="location" class="form-control"> ');                     
                        let selectStr = '<select class="w-100 nice-select" id="location" name="location">' +
                            '<option value="??????" id="Keelung">??????</option>' +
                            '<option value="??????" id="New Taipei">??????</option>' +
                            '<option value="??????" id="Taipei">??????</option>' +
                            '<option value="??????" id="Taoyuan">??????</option>' +
                            '<option value="??????" id="Hsinchu">??????</option>' +
                            '<option value="??????" id="Miaoli">??????</option>' +
                            '<option value="??????" id="Taichung">??????</option>' +
                            '<option value="??????" id="Changhua">??????</option>' +
                            '<option value="??????" id="Nantou">??????</option>' +
                            '<option value="??????" id="Yunli">??????</option>' +
                            '<option value="??????" id="Chiayi">??????</option>' +
                            '<option value="??????" id="Taina">??????</option>' +
                            '<option value="??????" id="Kaohsiung">??????</option>' +
                            '<option value="??????" id="Pingtung">??????</option>' +
                            '<option value="??????" id="Yilan">??????</option>' +
                            '<option value="??????" id="Hualien">??????</option>' +
                            '<option value="??????" id="Taitung">??????</option>' +
                            '<option value="??????" id="Penghu">??????</option>' +
                            '<option value="??????" id="Kinmen">??????</option>' +
                            '<option value="??????" id="Lienchiang">??????</option></select>';
                        $(this).parent().siblings().eq(4).children().html(selectStr);
                        $('#location option[value="' + member1.location + '"]').attr("selected", true);




                        $(this).parent().siblings().eq(5).children().html(
                            '<input type="email" name="email" id="email" class="form-control">');
                        $('#email').attr("placeholder", member1.email);

                        $(this).parent().siblings().eq(7).children().html(
                            '<input type="date" name="birthday" id="birthday" class="form-control">');
                        $('#birthday').attr("placeholder", member1.birthday);

                        $(this).parent().html(
                            '<input type="button" class="btn" id="modifyConfirm" value="confirm" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;">' +

                            '<input type="button" class="btn " id="modifyCancle" value="cancel" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;">'
                        );
                        //remove Class toModifyMode????????????????????????
                        $('.toModifyMode').removeClass('toModifyMode').addClass('modifying');
                    })

                    //????????????
                    $('tbody').on('click', '#modifyCancle', modifyCancel);
                    function modifyCancel() {

                        console.log(member1)
                        //????????????modify button?????????????????????
                        $('.modifying').removeClass('modifying').addClass('toModifyMode');

                        $('#modifyCancle').parent().siblings().eq(2).html('<span></span>');
                        $('#modifyCancle').parent().siblings().eq(3).html('<span></span>');
                        $('#modifyCancle').parent().siblings().eq(4).html('<span></span>');
                        $('#modifyCancle').parent().siblings().eq(5).html('<span></span>');
                        $('#modifyCancle').parent().siblings().eq(7).html('<span></span>');

                        $('#modifyCancle').parent().siblings().eq(2).children().text(member1.name);
                        $('#modifyCancle').parent().siblings().eq(3).children().text(member1.password);
                        $('#modifyCancle').parent().siblings().eq(4).children().text(member1.location);
                        $('#modifyCancle').parent().siblings().eq(5).children().text(member1.email);
                        $('#modifyCancle').parent().siblings().eq(7).children().text(member1.birthday);


                        if (member1.modified) {
                            url = member1.haveImg == 1 ?
                                "/ShowMemberImgServlet.do/" + member1.memberId :
                                "/amado-master/img/core-img/member.png";
                        } else {
                            url = member1.memberImgSrc.includes('.do') ?
                                "/ShowMemberImgServlet.do/" + member1.memberId :
                                "/amado-master/img/core-img/member.png";
                        }

                        img = '<img src="' + url + '"alt="Product" style="width: 100%">';
                        $('#modifyCancle').parent().siblings().eq(0).html(img);

                        $('#modifyCancle').parent().html('<input type="button" class="btn toModifyMode" value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;" >');

                    }

                    //????????????????????????????????????
                    function varifyPassword() {
                        let password = $("#password").val();
                        //??????????????????????????????
                        if (password.match(/[a-z]/g) && password.match(/[A-Z]/g) && password.match(/[0-9]/g) &&
                            password.match(/[^a-zA-Z\d]/g) && password.length >= 8) {
                            return true;
                        } else {
                            return false;
                        }
                    }
                    $('tbody').on('blur', '#password', function () {
                        // user??????password input???, blur????????????????????????, ??????????????????
                        //???????????????????????????
                        if ($(this).val() != '' && !varifyPassword()) {
                            //????????????submit??????button????????????
                            $('#modifyConfirm').removeAttr('modifyConfirm').attr('id', 'checkError');
                            if ($(this).siblings().length < 1) {
                                console.log($(this).siblings().length)
                                $(this).parent().append('<span class="errorMsg" id="errorPwd" style="color: red; font-size: 4px; margin-left: 20px">????????????????????? 8 ???????????????????????????????????????????????????????????????????????????????????????????????????</span>')
                            }
                        } else {
                            $('#checkError').removeAttr('checkError').attr('id', 'modifyConfirm');
                            $('#errorPwd').remove();
                        }
                    })

                    //??????????????????dao??????????????????

                    $('tbody').on('click', '#modifyConfirm', function () {
                        var form = $('#form')[0];
                        console.log(form)
                        var formData = new FormData(form);
                        console.log(formData)
                        let memberId = $(this).parent().siblings().eq(1).children().text();
                        formData.append("memberId", memberId);

                        $.ajax({
                            type: "post",
                            url: "/admin/modifyByAdmin.do",
                            enctype: "multipart/form-data",
                            contentType: false,
                            cache: false,
                            processData: false,
                            data: formData,
                            success: function (result) {
                                Swal.fire("update success");
                                member1 = result;
                                member1.modified = true;
                                modifyCancel();
                            },
                            error: function (result) {
                                Swal.fire("update error")
                            }
                        });
                    })



                    //????????????
                    $('tbody').on('click', '.delete', function () {
                        let memberId = $(this).parent().siblings().eq(1).children().text();
                        $.ajax({
                            type: "post",
                            url: "/users/delete.do/" + memberId,
                            // data: memberId,
                            success: function (result) {
                                Swal.fire("response success")
                                //???????????????tr
                                // $(this).parent().remove();
                            },
                            error: function (result) {
                                Swal.fire("response error")
                            }
                        });
                    })

                    //???????????????
                    $('tbody').on('click', '.sendMail', function () {
                        let memberId = $(this).parent().siblings().eq(1).children().text();
                        $.ajax({
                            type: "post",
                            url: "/sendMail.do/" + memberId,
                            success: function (result) {
                                Swal.fire("??????????????????????????????????????????????????????")
                            },
                            error: function (result) {
                                Swal.fire("response error")
                            }
                        });
                    })

                    $('tbody').on('click', '.upgradeToAdminBtn', function () {
                        let memberId = $(this).parent().siblings().eq(1).children().text();
                        // console.log($(this).parent().html())
                        // $(this).parent().html('<span>?????????</span>');
                        let td = $(this).parent();
                        $.ajax({
                            type: "post",
                            url: "/admin/upgradeToAdmin.do/" + memberId,
                            success: function (result) {
                                td.html('<span>?????????</span>' + degradeToUserBtn);
                                Swal.fire("??????: " + result.memberId + " ????????????????????????");
                            },
                            error: function (result) {
                                Swal.fire("response error");
                            }
                        });
                    });

                    $('tbody').on('click', '.degradeToUserBtn', function () {
                        let memberId = $(this).parent().siblings().eq(1).children().text();
                        let td = $(this).parent();
                        $.ajax({
                            type: "post",
                            url: "/admin/degradeToUser.do/" + memberId,
                            success: function (result) {
                                td.html('<span>??????</span>' + upgradeToAdminBtn);
                                Swal.fire("??????: " + result.memberId + " ?????????????????????");
                            },
                            error: function (result) {
                                Swal.fire("response error");
                            }
                        });
                    });






                })
            </script>

        </body>

        </html>