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

        input#del {
          position: absolute;
          top: 40px;
          left: 1000px;
        }

        input#dels {
          position: absolute;
          top: 40px;
          left: 1000px;
        }

        input#updown {
          position: absolute;
          top: 40px;
          left: 850px;
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

        #testArea {
          /* border: solid #4F9D9D; */
          height: 50%;
          display: flex;
          flex-wrap: wrap;
          align-content: flex-start;
          padding-left: 22px;
        }

        #testAreas {
          /* border: solid #4F9D9D; */
          height: 50%;
          display: flex;
          flex-wrap: wrap;
          align-content: flex-start;
          padding-left: 22px;
        }

        .testItem2 {
          text-align: center;
          cursor: pointer;
          align-items: center;
          border-radius: 10%;
          margin: 10px 0 0 10px;
          width: 200px;
          height: 200px;
          color: azure;
          background-color: #212529;
        }

        .testItem2 img {
          border-top-left-radius: 10%;
          border-top-right-radius: 10%;
          height: 100px;
          max-width: 100%;
        }

        .testItem {
          /* display: flex; */
          text-align: center;
          /* justify-content: center; */
          /* align-items: center; */
          cursor: pointer;
          align-items: center;
          border-radius: 10%;
          /* border: solid #4F9D9D; */
          margin: 10px 0 0 10px;
          /* width: 19%;
                    height: 25%; */
          width: 200px;
          height: 300px;
          text-align: left;
          /* padding: 5%; */

          color: azure;
          background-color: #212529;
        }

        .testItem span {
          padding: 5%;
        }

        .testItem input {
          border-top-left-radius: 10%;
          border-top-right-radius: 10%;
          height: 180px;
          max-width: 100%;
          width: 200px
        }

        .testItem img {
          border-top-left-radius: 10%;
          border-top-right-radius: 10%;

        }

        #sdsa {
          border-bottom-left-radius: 10%;
          border-bottom-right-radius: 10%;
          width: 200px;
          height: 200px;
        }

        .checkbox-container {
          display: inline-block;
          position: relative;
        }

        .checkbox-container input[type="checkbox"] {
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          opacity: 0;
        }

        .checkbox-container .checkmark {
          position: absolute;
          top: 13px;
          left: 13px;
          height: 25px;
          width: 25px;
          background-color: #fff;
          border: 1px solid #000;
          border-radius: 13px;
        }

        .checkbox-container input[type="checkbox"]:checked~.checkmark:after {
          content: "";
          position: absolute;
          display: block;
          left: 6.5px;
          top: 3px;
          width: 10px;
          height: 14px;
          border: solid #000;
          /* background-color: slateblue; */
          border-width: 0 5px 5px 0;
          transform: rotate3d(5, 1, 12, 45deg);
          border-radius: 3px;
        }

        .modal {
          z-index: 10000;
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
              <li><a href="/admin/testBackstage" id="openShopSideBar1">測驗</a></li>
              <div class="catagories-menu" id="showShopSideBar1">
                <ul>
                  <li><a href="/admin/insertTest" style="text-shadow: 0px 0px 5px #C0C0C0;">存入功能</a>
                  </li>
                  <li><a href="/admin/showtester" style="text-shadow: 0px 0px 5px #C0C0C0;">測驗結果</a></li>
                  <li><a href="/admin/showQuestionResults" style="text-shadow: 0px 0px 5px #C0C0C0;">問卷調查結果</a></li>
                </ul>
              </div>
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

        <div class="cart-table-area section-padding-100 emailmargin" style="margin-top: auto;">
          <div class="container-fluid">
            <div class="row">


            </div>

          </div>
          <input type="button" value="上架/下架" id="updown" style="position: absolute;top: 40px;left: 40px;">
          <div class="upordown">

          </div>
          <input type="button" value="刪除" id="del">
          <div id="testArea" class="testinput row">

            <div class="testItem2">
              <img id="sdsa" width="150px" height="150px" src="/amado-master/img/test-img/v878-mind-50.jpg"
                class="clickimg">

            </div>

          </div>
          <hr class="hrremove" style=" border: 2px solid #212529;
          ">






          <div id="testAreas" class="testinputs row">
            <div class="email">
              <input type="button" value="寄送問卷" id="email" style="    position: absolute;
              top: 40px;
              left: 171px;
          ">
            </div>
            <!-- <div style="background-color: #000;width: 400px;height: 400px;">

            </div> -->
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
      <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.min.js"></script>
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
          })

          $('.clickimg').on('click', function () {
            window.location.href = '/admin/insertTest'

          });

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




          $.ajax({
            type: "post",
            url: "/admin/survey.controller",
            datatype: 'json',
            async: 'false',
            success: function (response) {

              // console.log(123)
              $.each(response, function (index, element) {
                console.log(element)
                if (element.surveytype == "心理測驗") {
                  $('.testinput').append(
                    // style="cursor: pointer;"
                    '<form action="/admin/testBackstage1" method="Post" enctype="multipart/form-data"><div class="testItem"><input type="hidden" name="surveypk" value="' + element.surveypk + '"><input type="image" name="surveypk" width="180px" height="150px"  onclick="submit()" src="/admin/ShowsurveyImgServlet.do/' + element.surveypk + '"><span>' + element.survey + '<br>' + element.surveytype +
                    '</span></div ></form > '
                  )
                } else if (element.surveytype == "問卷調查") {
                  $('.testinputs').append(
                    // style="cursor: pointer;"
                    '<form action="/admin/testBackstage1" method="Post" enctype="multipart/form-data"><div class="testItem"><input type="hidden" name="surveypk" value="' + element.surveypk + '"><input type="image" name="surveypk" width="180px" height="150px"  onclick="submit()" src="/admin/ShowsurveyImgServlet.do/' + element.surveypk + '"><span>' + element.survey + '<br>' + element.surveytype +
                    '</span></div ></form > '
                  )
                }
              })
            }

          })
          //上架/下架
          $('body').on('click', '#updown', function () {
            $('.testinput').children().remove()
            $('.testinputs').children().remove()
            $('.upordown').children().remove()
            $('.hrremove').remove()
            $('.emailmargin').attr('style', '')

            $(this).attr('value', '取消').attr('type', 'button').attr('id', 'dels').attr('style', 'position: absolute;top: 40px;left: 100px;')
            $('.upordown').append('<form action="" method="Post" enctype="multipart/form-data"><input type="button" value="確定" id="updowns" style="position: absolute;top: 40px;left: 40px;"></form>')
            $.ajax({
              type: "post",
              url: "/admin/survey.controller",
              datatype: 'json',
              async: 'false',
              success: function (response) {

                // console.log(123)
                $.each(response, function (index, element) {
                  console.log(element)
                  if (element.shelves == null) {
                    if (element.surveytype == "心理測驗") {
                      $('.testinput').append(
                        // style="cursor: pointer;"

                        '<div class="testItem checkbox-container"><input type="hidden" name="surveypk" value="' + element.surveypk + '"><input type="checkbox" id="myCheckbox" name="surveypk" value="' + element.surveypk + '"><input type="image" name="surveypk" width="180px" height="150px"   src="/admin/ShowsurveyImgServlet.do/' + element.surveypk + '"><span class="checkmark"></span><span>' + element.survey + '</span><span>未上架</span></div></form>'
                      )
                    }
                  } else if (element.shelves != null) {
                    if (element.surveytype == "心理測驗") {
                      $('.testinput').append(
                        // style="cursor: pointer;"
                        '<div class="testItem checkbox-container"><input type="hidden" name="surveypk" value="' + element.surveypk + '"><input type="checkbox" id="myCheckbox" name="surveypk" value="' + element.surveypk + '"><input type="image" name="surveypk" width="180px" height="150px"   src="/admin/ShowsurveyImgServlet.do/' + element.surveypk + '"><span class="checkmark"></span><span>' + element.survey + '</span><span>' + element.shelves + '<br>' + element.surveytype + '</span></div></form>'
                      )
                    }
                  }

                })
              }
            })
            $(document).ready(function () {
              $("#myCheckbox").click(function () {
                if ($(this).is(":checked")) {
                  console.log("Checkbox is checked.");
                } else {
                  console.log("Checkbox is not checked.");
                }
              });
            });
          })
          //刪除
          $('body').on('click', '#del', function () {
            $('.testinput').children().remove()
            $('.testinputs').children().remove()
            $('.hrremove').remove()
            $('#email').remove()

            // <input type="button" value="刪除" id="del">
            $(this).attr('value', '取消').attr('type', 'button').attr('id', 'dels')
            $('.testinput').append('<form action="" method="Post" enctype="multipart/form-data"><input type="button" value="確定刪除" id="cancel" style="position: absolute;top: 40px;left: 900px;"></form>')
            $.ajax({
              type: "post",
              url: "/admin/survey.controller",
              datatype: 'json',
              async: 'false',
              success: function (response) {

                // console.log(123)
                $.each(response, function (index, element) {
                  console.log(element)
                  $('.testinput').append(
                    // style="cursor: pointer;"
                    '<div class="testItem checkbox-container"><input type="hidden" name="surveypk" value="' + element.surveypk + '"><input type="checkbox" id="myCheckbox" name="surveypk" value="' + element.surveypk + '"><input type="image" name="surveypk" width="180px" height="150px"   src="/admin/ShowsurveyImgServlet.do/' + element.surveypk + '"><span class="checkmark"></span><span>' + element.survey + '<br>' + element.surveytype +
                    '</span></div></form>'
                  )
                })
              }
            })
            $(document).ready(function () {
              $("#myCheckbox").click(function () {
                if ($(this).is(":checked")) {
                  console.log("Checkbox is checked.");
                } else {
                  console.log("Checkbox is not checked.");
                }
              });
            });
          })
          $('body').on('click', '#dels', function () {
            location.reload();
          })
          // 確定上架
          $('body').on('click', '#updowns', function () {
            var checkedCheckboxes = $("input[type='checkbox']:checked");
            checkedCheckboxes.each(function (index, element) {
              $.ajax({
                type: "post",
                url: "/admin/updateOrDownSurvey",
                data: { surveypk: $(element).val() },
                datatype: 'json',
                success: function (response) {
                  // Show success alert
                  Swal.fire({
                    title: '修改成功',
                    text: '題庫上架/下架已修改',
                    icon: 'success'
                  }).then(function () {
                    // Refresh the page
                    location.reload();
                  });
                }
              });
            });
          })
          //確定刪除
          $('body').on('click', '#cancel', function () {
            var checkedCheckboxes = $("input[type='checkbox']:checked");
            checkedCheckboxes.each(function (index, element) {
              $.ajax({
                type: "post",
                url: "/admin/deleteSurvey",
                data: { surveypk: $(element).val() },
                datatype: 'json',
                success: function (response) {
                  // Show success alert
                  Swal.fire({
                    title: '刪除成功',
                    text: '資料已經被成功刪除',
                    icon: 'success'
                  }).then(function () {
                    // Refresh the page
                    location.reload();
                  });
                }
              });
            });
          });


          //寄信全部
          $('body').on('click', '#email', function () {
            $('.testinput').children().remove()
            $('.testinputs').children().remove()
            $('.hrremove').remove()
            $('#del').remove()
            $('#updown').remove()
            $('.emailmargin').attr('style', '')
            // $(this).attr('value', '取消').attr('type', 'button').attr('id', 'dels')

            $('.testinput').append('<form action="" method="Post" enctype="multipart/form-data"><input type="button" value="確定寄信" id="putemail" style="position: absolute;top: 40px;left: 900px;"></form>')
            $('.testinput').append('<input type="button" value="取消" id="dels" style="position: absolute;top: 40px;left: 1000px;">')
            $.ajax({
              type: "post",
              url: "/admin/survey.controller",
              datatype: 'json',
              async: 'false',
              success: function (response) {


                $.each(response, function (index, element) {
                  console.log(element)
                  if (element.surveytype == "問卷調查")
                    $('.testinput').append(
                      '<div class="testItem checkbox-container"><input type="hidden" name="surveypk" value="' + element.surveypk + '"><input type="checkbox" id="myCheckbox" name="surveypk" value="' + element.surveypk + '"><input type="image" name="surveypk" width="180px" height="150px"   src="/admin/ShowsurveyImgServlet.do/' + element.surveypk + '"><span class="checkmark"></span><span>' + element.survey + '<br>' + element.surveytype +
                      '</span></div></form>'
                    )
                })
              }
            })
            $(document).ready(function () {
              $("#myCheckbox").click(function () {
                if ($(this).is(":checked")) {
                  console.log("Checkbox is checked.");
                } else {
                  console.log("Checkbox is not checked.");
                }
              });
            });
          })
          $('body').on('click', '#dels', function () {
            location.reload();
          })
          //確定寄信
          $('body').on('click', '#putemail', function () {
            var checkedCheckboxes = $("input[type='checkbox']:checked");
            checkedCheckboxes.each(function (index, element) {
              $.ajax({
                type: "post",
                url: "/admin/sendemailybyall",
                data: { surveypk: $(element).val() },
                datatype: 'json',
                success: function (response) {
                  Swal.fire({
                    title: '寄信成功',
                    text: '問卷成功寄出',
                    icon: 'success'
                  }).then(function () {
                    // Refresh the page
                    location.reload();
                  });
                }
              });
            });
          });
        })

      </script>

    </body>

    </html>