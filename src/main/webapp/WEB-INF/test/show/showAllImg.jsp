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

      <style>
        .main-content-wrapper .header-area .amado-nav li a {
          font-size: 14px;
          text-transform: uppercase;
          position: relative;
          z-index: 1;
          padding: 20px 0;
          display: block;
          line-height: 0.9;
          color: #C0C0C0;

          font-weight: normal;
        }

        .main-content-wrapper .cart-table-area table thead tr th {
          border-top: none;
          border-bottom: none;
          -webkit-box-flex: 0;
          -ms-flex: 0 0 25%;
          flex: 0 0 25%;
          width: 25%;
          max-width: 25%;
          font-size: 18px;
          color: #1f1d1dbb;
          text-transform: capitalize;
          font-weight: 400;
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

            <a href="/"><img width="150px" height="150px" src="/amado-master/img/core-img/newLogo.png" alt=""></a>
          </div>
          <!-- Amado Nav -->
          <nav class="amado-nav">
            <ul>
              <li><a href="memberBackstage" style="color:white">Member</a></li>
              <li><a href="spaceBackstage" style="color:white">Space</a></li>
              <li><a href="testBackstage" style="color:white" id="openShopSideBar1">Test</a></li>
              <div class="catagories-menu" id="showShopSideBar1">
                <ul>
                  <li><a href="/admin/insertTest" style="text-shadow: 0px 0px 5px #C0C0C0;">存入功能</a>
                  </li>
                  <li><a href="/admin/ImgMaintain.controller" style="text-shadow: 0px 0px 5px #C0C0C0;">圖庫功能</a></li>
                  <!-- <li><a href="#" style="text-shadow: 0px 0px 5px #C0C0C0;">設計</a></li>
                                <li><a href="#" style="text-shadow: 0px 0px 5px #C0C0C0;">資訊</a></li>
                                <li><a href="#" style="text-shadow: 0px 0px 5px #C0C0C0;">影視</a></li>
                                <li><a href="#" style="text-shadow: 0px 0px 5px #C0C0C0;">顧問</a></li> -->
                </ul>
              </div>
              <li><a href="projectBackstage" style="color:white">Project</a></li>
              <li><a href="forumBackstage" style="color:white">Forum</a></li>
            </ul>
          </nav>

        </header>
        <!-- Header Area End -->

        <!-- 從這邊開始寫-->
        <div class="cart-table-area section-padding-100">
          <div class="container-fluid">
            <div class="row">

              <div class="cart-title mt-50">
                <h1>Image (Admin)</h1>
                <input type="button" id="home"
                  style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:40px; border-style:none"
                  value="HOME">
                <input type="button"
                  style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:40px; border-style:none"
                  onclick="history.go(-1)" value="Undo">
              </div>
            </div>
            <form id="form" enctype="multipart/form-data" method="POST">
              <table>
                <thead>
                  <tr style="flex: 100%; font-size: 18px;width:800px">
                    <th>image</th>
                    <th class="t1" for="imageNumber">imageNumbe</th>
                    <th>image</th>
                  </tr>
                </thead>
                <tbody class="tbody">
                  <c:forEach var="showAllImg" items="${test}">
                    <tr>
                      <td style="flex: auto;">${showAllImg.imagePk}</td>
                      <td style="flex: auto;">${showAllImg.imageNumber}</td>
                      <td style="flex: auto;"><img height='300' width='240'
                          src="images.controller/${showAllImg.imagePk}"></td>
                      <td style="flex:auto">
                        <!-- <input type="button" class="btn toModifyMode" value="modify"
                        style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"> -->
                        <input type="button" class="btn delete" value="delete"
                          style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;">
                      </td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
              </from>
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
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent"
                      aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i
                        class="fa fa-bars"></i></button>
                    <div class="collapse navbar-collapse" id="footerNavContent">
                      <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                          <a class="nav-link" href="memberBackstage">Member</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="spaceBackstage">Space</a>
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
      <script>
        if ($('#showShopSideBar1').hide()) {
          $('#showShopSideBar2').show();
        } else if ($('#showShopSideBar2').show()) {
          $('#showShopSideBar1').hide();
        }

        $('#openShopSideBar1').mouseover(function () {
          $('#showShopSideBar1').show();
        })

        $('#openShopSideBar1').mouseout(function () {
          $('#showShopSideBar1').hide();
        })

        $('#showShopSideBar1').mouseover(function () {
          $(this).show();
        })

        $('#showShopSideBar1').mouseout(function () {
          $(this).hide();
        })

        $('#openShopSideBar2').mouseover(function () {
          $('#showShopSideBar2').show();
        })

        $('#openShopSideBar2').mouseout(function () {
          $('#showShopSideBar2').hide();
        })

        $('#showShopSideBar2').mouseover(function () {
          $(this).show();
        })

        $('#showShopSideBar2').mouseout(function () {
          $(this).hide();
        })
        $(function () {

          const gallery = {
            imagePk: "",
            imageNumber: "",
            testImage: "",
          }
          var gallery1 = Object.create(gallery);
          $('tbody').on('click', '.toModifyMode', function () {
            $('.toModifyMode').removeClass('toModifyMode').addClass('modifying');
            gallery1.imagePk = $(this).parent().siblings().eq(0).text();
            gallery1.imageNumber = $(this).parent().siblings().eq(1).text();
            gallery1.testImage = $(this).parent().siblings().eq(2).text();


            $(this).parent().siblings().eq(1).html('<input type="text" name="imageNumber" id="imageNumber">');
            $('#imageNumber').attr("value", gallery1.imageNumber);



            $(this).parent().html('<input type="button" id="modifyConfirm" value="確認修改" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button"  value="取消" id="modifyCancle" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;">');
          })
          $('tbody').on('click', '#modifyCancle', function () {
            $('.modifying').removeClass('modifying').addClass('toModifyMode');
            $(this).parent().siblings().eq(0).text(gallery1.imagePk);
            $(this).parent().siblings().eq(1).text(gallery1.imageNumber);
            $(this).parent().html('<input type="button" class="toModifyMode" value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;">');
          })

          //修改ajax      // alert("修改成功，請重新整理");
          $('tbody').on('click', '#modifyConfirm', function () {

            var form = $('#form')[0];
            var formData = new FormData(form);
            console.log(form)
            $.ajax({
              type: "POST",
              url: 'UpdataImgNumber',

              data: formData,
              contentType: false,
              cache: false,
              processData: false,
              async: false,
              success: function () {
                alert("response success");

              }
            })
            // $('#theads').empty();
            $('#tests').empty();

            data = $('#sb').val();
            // console.log(data);
            var tests;
            // console.log('test')
            $.ajax({
              type: "POST",
              url: "ImgMaintain.controller",
              // data: { field: data },
              success: function (result) {
                // attr('123')
                // console.log(result)
                $.each(result, function (i, test) {
                  $('#testTable tbody').append('<tr id= tr' + i + '>');
                  console.log(test.testPk)
                  testsStr =
                    // '<td style="vertical - align: middle; flex:auto;" class="testPk"><span>' + test.imagePk + '</span></td>' +

                    '<td style="vertical - align: middle; flex:auto;" class="testId"><span>' + test.imageNumber + '</span></td>' +

                    // '<td style="vertical - align: middle; flex:auto;" class="examinationQuestion"><span>' + test.testImage + '</span></td>' +

                    '<td style="flex:auto"><input type="button" class="btn toModifyMode"  value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

                  $('#testTable tbody tr').eq(i).append(testsStr);

                })


              },
              error: function () {
                attr('321')
              }

            })
          })


          // /deleteImg.do
          $('tbody').on('click', '.delete', function () {
            let imagePk = $(this).parent().siblings().eq(0).text();
            $.ajax({
              type: "post",
              url: "deleteImg.do",
              data: {
                imagePk: imagePk,
              },
              async: false,
              success: function () {
                window.location.reload()
                // $('html').load(location.href);
              },
              error: function () {
                window.location.reload()
              }

            })

          })
        })

      </script>
    </body>

    </html>