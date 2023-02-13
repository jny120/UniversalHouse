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
<link rel="stylesheet" href="/amado-master/style.css">

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
                <a href="/"><img width="150px" height="150px" src="/amado-master/img/core-img/newLogo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li><a href="memberBackstage" style="color:white">Member</a></li>
                    <li><a href="spaceBackstage" style="color:white">Space</a></li>
                    <li><a href="testBackstage" style="color:white">Test</a></li>
                    <li><a href="/myProjects/showAllEntrusBacktage/1" style="color:white">Project</a></li>
                    <li><a href="forumBackstage" style="color:white">Forum</a></li>
                </ul>
            </nav>

        </header>
        <!-- Header Area End -->


        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div>
                    <div class="cart-title mt-50">
                        <h2>後台管理系統</h2>
                    </div>

                    <div class="clearfix">
                        <form id="form" enctype="multipart/form-data" method="post">
                            <table class="table table-responsive" id="myTable">
                                <thead>
                                    <tr>
                                        <th style="flex: auto">ArticleId</th>
                                        <th style="flex: auto">MemberPk</th>
                                        <th style="flex: auto">UpdateTime</th>
                                        <th style="flex: auto">TopicName</th>
                                        <th style="flex: auto">Title</th>
                                        <th style="flex: auto">Content</th>
                                        <th style="flex: auto">Status</th>
                                        <th style="flex: auto">ThumbUp</th>
                                        <th style="flex: auto">Unlike</th>
                                        <th style="flex: auto">Views</th>
                                        <th style="flex: auto">Image(s)</th>
                                        <th style="flex: auto">Comment(s)</th>
                                        <th style="flex: auto">Update</th>
                                        <th style="flex: auto">Delete</th>
                                    </tr>
                                </thead>

                                <tbody id="content"></tbody>

                            </table>
                        </form>

                        <form method="post">
                            <input type="submit" class="btn amado-btn" style="background-color:grey" formaction="toNewArticle_backstage" value="新增文章">
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
        <div class="container">
            <div class="row align-items-center">
                <!-- Single Widget Area -->
                <div class="col-12 col-lg-4">
                    <div class="single_widget_area">
                        <!-- Logo -->
                        <div class="footer-logo mr-50">
                            <a href="/"><img width="200px" height="200px" src="/amado-master/img/core-img/newLogo.png" alt=""></a>
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
                                        <li class="nav-item"><a class="nav-link" href="memberBackstage">Member</a></li>
										<li class="nav-item"><a class="nav-link" href="projectBackStage">Project</a></li>
										<li class="nav-item"><a class="nav-link" href="spaceBackstage">Space</a></li>
										<li class="nav-item"><a class="nav-link" href="courseBackStage">Course</a></li>
										<li class="nav-item"><a class="nav-link" href="testBackstage">Test</a></li>
										<li class="nav-item"><a class="nav-link" href="forumBackstage">Forum</a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="/amado-master/js/popper.min.js"></script>
    <script src="/amado-master/js/bootstrap.min.js"></script>
    <script src="/amado-master/js/plugins.js"></script>
    <script src="/amado-master/js/active.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script type="text/javascript">
     window.onload = function () {
         $.ajax({
             type: 'post',
             url: '/admin/findAll_backstage',
             contentType: "application/json; charset=utf-8",
             dataType: 'json',

             success: function (data) {

                 if (data.length == 0) {
                     $('#content').append("<tr><td style='vertical-align: middle ;flex:auto'><span>目前資料庫沒有資料</span></td></tr>");
                 }

                 $.each(data, function (index, value) {

                     $('#content').append("<tr id='tr" + index + "'></tr>");

                     $('#tr' + index).append("<td id='articleId" + index + "' style='vertical-align: middle ;flex:auto'><span></span></td>");
                     $('#articleId' + index).children('span').html(value.articleId);

                     $('#tr' + index).append("<td id='memberPk" + index + "' style='vertical-align: middle ;flex:auto'><span></span></td>");
                     $('#memberPk' + index).children('span').html(value.memberPk);

                     $('#tr' + index).append("<td id='updateTime" + index + "' style='vertical-align: middle ;flex:auto'><span></span></td>");
                     $('#updateTime' + index).children('span').html(value.updateTime.replace("T","").slice(0,15));

                     $('#tr' + index).append("<td id='topicName" + index + "' style='vertical-align: middle ;flex:auto'><span></span></td>");
                     $('#topicName' + index).children('span').html(value.topicName);

                     $('#tr' + index).append("<td id='title" + index + "' style='vertical-align: middle ;flex:auto'><span></span></td>");
                     $('#title' + index).children('span').html(value.title);
                     if (value.title.length > 20) {
                         $('#title' + index).children('span').html(value.title.substring(0, 20) + "...");
                     }

                     $('#tr' + index).append("<td id='content" + index + "' style='vertical-align: middle ;flex:auto'><span></span></td>");
                     if (value.content.length > 20) {
                         $('#content' + index).children('span').html(value.content.substring(0, 20) + "...");
                     }

                     $('#tr' + index).append("<td id='status" + index + "' style='vertical-align: middle ;flex:auto'><span></span></td>");
                     $('#status' + index).children('span').html(value.status);

                     $('#tr' + index).append("<td id='thumbUp" + index + "' style='vertical-align: middle ;flex:auto'><span></span></td>");
                     $('#thumbUp' + index).children('span').html(value.thumbUp);

                     $('#tr' + index).append("<td id='unlike" + index + "' style='vertical-align: middle ;flex:auto'><span></span></td>");
                     $('#unlike' + index).children('span').html(value.unlike);

                     $('#tr' + index).append("<td id='views" + index + "' style='vertical-align: middle ;flex:auto'><span></span></td>");
                     $('#views' + index).children('span').html(value.views);

                     $('#tr' + index).append("<td id='images" + index + "' style='flex:auto'></td>");
                     $('#images' + index).append('<form action="/admin/toImageDB_backstage" method="POST"><input type="hidden" name="articleId" value="' + value.articleId + '"><input type="submit" value="圖片" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal"/></form>');

                     $('#tr' + index).append("<td id='comments" + index + "' style='flex:auto'></td>");
                     $('#comments' + index).append('<form action="/admin/toCommentDB_backstage" method="POST"><input type="hidden" name="articleId" value="' + value.articleId + '"><input type="submit" value="留言" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal" /></form>');

                     $('#tr' + index).append("<td id='update" + index + "' style='flex:auto'></td>");
                     $('#update' + index).append('<form action="/admin/toUpdateArticle_backstage" method="POST"><input type="hidden" name="articleId" value="' + value.articleId + '"><input type="submit" value="修改" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal" /></form>');

                     $('#tr' + index).append("<td id='delete" + index + "' style='flex:auto'></td>");
                     $('#delete' + index).append('<input type="button" id="delete" value="刪除" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal" />');

                 });
             },

             error: function () {
                 $('#content').html('發生錯誤');
             },

         });
     }


     $(function () {
         $('#content').on('click', '#delete', function () {
             var articleId = $(this).parent('td').siblings().eq(0).children().text();

             var thisDeleteButton = $(this);
             var check = confirm('確定刪除?');

             if (check) {
                 $.ajax({
                     type: 'post',
                     url: '/admin/deleteArticle_backstage',
                     data: {
                         articleId: articleId,
                     },

                     success: function () {
                         alert('刪除成功!');
                         thisDeleteButton.parent('td').parent('tr').detach();
                     },

                     error: function () {
                         alert('刪除失敗!');
                     },

                 });

             }

         });
     });
    </script>
</body>

</html>