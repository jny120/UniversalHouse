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
              <h2>修改測驗題庫</h2>
              <hr>
              <p></p>
            </div>
            <div class="row">
              <div class="col-12 col-lg-8">
                <div class="checkout_details_area mt-50 clearfix">
                  <!-- form Start -->
                  <form action="updateSurvey.controller" method="POST" enctype="multipart/form-data"
                    style="margin-left: 80px;">


                    <div class="col-18 mb-3">
                      <label for="survey">測驗標題: </label>

                      <input type="text" class="form-control" name="surveypk" placeholder="" value="${survey.surveypk}"
                        hidden="hidden">
                      <input type="text" class="form-control" name="survey" id="testPk" placeholder=""
                        value="${survey.survey}" readonly>
                      <p style="font-style: italic; color:red;text-align: left" id="repeat">
                      </p>

                    </div>

                    <div class="col-18 mb-3">
                      <label for="">問卷種類: </label>
                      <input type="text" class="form-control" name="surveytype" id="surveytype" placeholder=""
                        value="${survey.surveytype}">
                      <p style="font-style: italic; color:red;text-align: left" id="repeat">
                      </p>
                      <p id="selectop" style="font-style: italic; color:red;text-align: right">
                        &nbsp;</p>
                    </div>




                    <div class="col-18 mb-3">
                      <label for="welcometext">歡迎文字: </label>
                      <textarea class="form-control" name="welcometext" id="welcometext" placeholder=""
                        value="${survey.welcometext}">${survey.welcometext}</textarea>

                      <p style="font-style: italic; color:red;text-align: right">
                        &nbsp;${errors.accommodate}</p>
                    </div>

                    <div class="col-18 mb-3">
                      <label for="endtext">結果文字: </label>
                      <textarea class="form-control" name="endtext" id="endtext" placeholder=""
                        value="${survey.endtext}" required="required">${survey.endtext}</textarea>
                      <!-- <input type="text" > -->
                      <p style="font-style: italic; color:red;text-align: right" id="repeats">
                        &nbsp;${errors.price}</p>
                    </div>
                    <div class="col-18 mb-3" id="img">
                      <label for="testImage">頁面背景圖片 </label>
                      <input style="border-style:none" accept="image/*" type="file" class="" name="testImage"
                        id="testImage">
                      <img src="/admin/ShowsurveyImgServlet.do/${survey.surveypk}" width="200px" height="140px"
                        class="preview" id="blah">
                      <!-- <img src="/amado-master/img/space-img/s.jpg" width="200px" height="140px" class="preview" id="blah"> -->


                    </div>
                    <div class="col-18 mb-3">
                      <button class="btn amado-btn w-100" id="typechange" type="button" value="Confirm">Confirm</button>
                    </div>

                    <!-- <td class="cart_product_img"
                              style="flex:100% ">
          
                              <c:choose>
                                <c:when
                                  test="${spaces.pic == null}">
                                  <img src="/amado-master/img/space-img/s.jpg"
                                    width="200px"
                                    height="140px">
                                </c:when>
                                <c:otherwise>
                                  <img src="spaceShowImg.controller?spaceNo=${spaces.spaceNo}"
                                    width="200px"
                                    height="140px">
                                </c:otherwise>
                              </c:choose>
          
                            </td> -->

                    <!-- form End -->
                  </form>



                  <div style="text-align:center">
                    <input type="reset"
                      style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:50px; border-style:none "
                      value="Reset">
                    <input type="button"
                      style="text-align: center; margin: 10px; color: #4F9D9D; width:80px; height:50px; border-style:none"
                      onclick="history.go(-1)" value="Undo">
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
          testImage.onchange = evt => {
            const [file] = testImage.files
            if (file) {
              blah.src = URL.createObjectURL(file)
            } else {
              $('.preview').attr('src', '/admin/ShowsurveyImgServlet.do/${survey.surveypk}')
            }
          }
          //判斷重複
          // $.ajax({
          //  type: 'post',
          //  url: "/admin/testcenter.controller",
          //  datatype: 'json',
          //  async: 'false',
          //  success: function (response) {
          //   $.each(response, function (index, element) {
          //    $('#testPk').on('keyup', function () {
          //     console.log($('#testPk').val())
          //     if ($('#testPk').val() == element.survey) {
          //      $('#repeat').text('題目名字重複')
          //      $('#typechange').prop("type", "button")
          //      console.log('名字重複')
          //     } else {
          //      $('#repeat').text('')
          //      $('#typechange').prop("type", "submit")
          //     }
          //    })
          //   })
          //  }
          // })
          $('body').on('click', '#typechange', function (e) {
            var sd = $("#welcometext").val($("#welcometext").val().replace(/\n/g, "<br>"));
            $("#endtext").val($("#endtext").val().replace(/\n/g, "<br>"));
            alert(sd.val())
            e.preventDefault
          })
          $('#typechange').on('click', function () {


            Swal.fire({
              title: "確定要修改嗎?",
              text: "按下確定後跳轉頁面",
              icon: "warning",
              showCancelButton: true,
              confirmButtonText: "確定",
              cancelButtonText: "否",
            }).then((result) => {
              if (result.value) {
                $("form").submit();
              }
            })

          })

        })
      </script>

    </body>

    </html>