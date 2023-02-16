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


        .nice-select {
          width: 300px;
        }

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


            <div class="cart-title" style="text-align: center;">
              <h2>新增題庫</h2><input type="button" value="一鍵輸入" id="inputtext" style="display: flex; position: absolute;
              top: 120px;
              right: 20px;">
              <hr>

            </div>
            <div class="row">
              <div class="col-12 col-lg-8">
                <div class="checkout_details_area mt-50 clearfix">
                  <!-- form Start -->
                  <form action="InsertNewSurvey.controller" method="POST" enctype="multipart/form-data"
                    style="margin-left: 80px;">


                    <div class="col-18 mb-3">
                      <label for="survey">測驗標題: </label>
                      <input type="text" class="form-control" name="survey" id="testPk" placeholder="" value="">
                      <p style="font-style: italic; color:red;text-align: left" id="repeats">
                      </p>

                    </div>

                    <div class="col-18 mb-3 sort-by-date d-flex align-items-center mr-15">
                      <label for="">問卷種類: </label>
                      <select id="surveytype" class="surveytype" name="surveytype">
                        <option class="surveytype1" value="none" selected disabled hidden>請選擇</option>
                        <option class="surveytype1" value="心理測驗">心理測驗</option>
                        <option class="surveytype1" value="問卷調查">問卷調查</option>
                      </select>
                      <p id="selectop" style="font-style: italic; color:red;text-align: right">
                        &nbsp;</p>
                    </div>




                    <div class="col-18 mb-3">
                      <label for="welcometext">歡迎文字: </label>
                      <textarea style="width:630px; height:150px; border:none;" class="form-control"
                        name="textareawelcometext" id="textareawelcometext" placeholder=""
                        required="required"></textarea>
                      <input type="text" class="form-control" name="welcometext" id="welcometext" placeholder=""
                        value="" hidden="hidden">
                      <!-- <p style="font-style: italic; color:red;text-align: right">
                        &nbsp;${errors.accommodate}</p> -->
                    </div>

                    <div class="col-18 mb-3">
                      <label for="endtext">結果文字: </label>
                      <textarea style="width:630px; height:150px; border:none;" class="form-control" name="endareatext"
                        id="endareatext" placeholder="" value="" required="required"></textarea>
                      <input type="text" class="form-control" name="endtext" id="endtext" placeholder="" value=""
                        hidden="hidden">
                      <!-- <input type="textarea" style="width:630px; height:150px; border:none;" class="form-control"
                        name="endtext" id="endtext" placeholder="" value="" required="required"> -->
                      <!-- <p style="font-style: italic; color:red;text-align: right" id="repeats">
                        &nbsp;${errors.price}</p> -->
                    </div>
                    <div class="col-18 mb-3" id="img">
                      <label for="testImage">頁面背景圖片 </label>
                      <input style="border-style:none" accept="image/*" type="file" class="" name="testImage"
                        id="testImage">

                      <img src="/amado-master/img/space-img/s.jpg" width="200px" height="140px" class="preview"
                        id="blah">


                    </div>
                    <div class="col-18 mb-3">
                      <button class="btn amado-btn w-100" id="typechange" type="submit" value="Confirm">上傳</button>
                    </div>



                    <!-- form End -->
                  </form>



                  <div style="text-align:center">
                    <input type="reset"
                      style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:50px; border-style:none "
                      value="回首頁" onclick="window.location.href='http://localhost:8080/admin/showAllMember'">
                    <input type="button"
                      style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:50px; border-style:none"
                      onclick="history.go(-1)" value="回前一頁">
                  </div>

                  <!-- form End -->

                </div>

              </div>
              <div div class="col-12 col-lg-4">
                <div class="checkout_details_area mt-50 clearfix">


                  <!-- form Start -->

                </div>
              </div>
            </div>
            <!-- <input type="text" class="custom-control-input" id="test1"> -->
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
                          <a class="nav-link" href="showAllMember">會員</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="/myProjects/showAllEntrusBacktage/1">專案</a>
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
      <!-- <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script> -->
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

          $.ajax({
            type: 'post',
            url: "/admin/testcenter.controller",
            datatype: 'json',
            async: 'false',
            success: function (response) {
              $('#testPk').on('keyup', function () {
                var testPkValue = $(this).val();
                var hasDuplicate = false;
                $.each(response, function (index, element) {
                  if (testPkValue === element.survey) {
                    hasDuplicate = true;
                    return false; // 跳出$.each循環
                  }
                });
                if (hasDuplicate) {
                  $('#repeats').text('題目名字重複').show();
                  $('#typechange').prop("type", "button");
                  console.log('名字重複');
                } else {
                  $('#repeats').hide();
                  $('#typechange').prop("type", "submit");
                }
              });
            }
          });

          // inputtext
          $('#inputtext').on('click', function () {
            console.log('123')
            $('#testPk').val('魅力四射')

            $('#textareawelcometext').val('這是一個名為「魅力四射」的心理測驗，包含10道題目，評估個人的性格特質和應對能力，總分10-40分，挑戰你的自我認知，發掘你的潛能！')
            $('#endareatext').val('10-20分：您是一個比較內向、安靜的人，可能喜歡獨處和思考，對於與人交往和新環境可能有些不安和適應上的困難，建議多嘗試新事物，增加自信和自我挑戰，以發掘更多的潛能和機會。\n'

              + '21-30分：您是一個比較平衡的人，對自己和周圍的環境有較好的掌控和應對能力，對於挑戰和新事物有一定的興趣和嘗試，但同時也會注重自己的需要和空間，建議保持這種平衡，多挑戰自己，維持個人成長和發展。\n'

              + '31-40分：您是一個比較外向、積極和有創造力的人，對於新事物和挑戰有較強的動力和熱情，喜歡與人交流和合作，對於自己和他人都有較高的期望和要求，建議多保持這種積極性和創造力，但也要注意適當地放松和休息，以避免過度疲憊和壓力。\n'

              + '0 - 3分：比較不穩定，容易感到焦慮和內疚。')
            $('#testImage').trigger('click');
          })



          //textarea增加換行符號
          $('body').on('click', '#typechange', function (e) {
            var sd = $("#welcometext").val($("#textareawelcometext").val().replace(/\n/g, "<br>"));
            $("#endtext").val($("#endareatext").val().replace(/\n/g, "<br>"));
            // alert(sd.val())
            e.preventDefault
          })






          $('#typechange').on('click', function () {

            console.log($('.surveytype1').val())
          })

          testImage.onchange = evt => {
            const [file] = testImage.files
            if (file) {
              blah.src = URL.createObjectURL(file)
            } else {
              $('.preview').attr('src', '/amado-master/img/space-img/s.jpg')
            }
          }





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

        })
      </script>

    </body>

    </html>