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


        <div class="cart-table-area ">
          <div class="container-fluid">
            <div class="cart-title mt-50">
              <h1 style="color: rgb(133, 133, 133)">新增測驗題目</h2>
            </div>
            <!-- <div class="row"> -->
            <div class="cart-title mt-50">
              <h2>${surveytype.survey}</h2><input type="button" value="一鍵輸入" id="inputtext" style="display: flex; position: absolute;
                top: 20px;
                right: 20px;">
              <select class="optionsis" style="display: flex; position: absolute;
              top: 20px;
              right: 20px;">
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
              </select>
              <!-- <div class="testinput">
                <input type="button" value="刪除" id="del" style="display: flex; position: absolute;
              top: 170px;
              right: 20px;">
              </div> -->

            </div>




            <div style="display: flex; flex-direction: row;">
              <div class="clearfix"
                style="display: flex; padding-right: 50px;  flex-grow: 2; flex-shrink: 2; flex-basis: 0%;">

                <form id="form" class="form" enctype="multipart/form-data" method="POST">

                  <table class="table table-responsive" id="testTable">
                    <!-- <thead style="display: table-header-group;"> -->
                    <thead>
                      <!-- <a href="/chart" class="btn" style="font-size:10px; margin: 3px; width: 100px; height: 40px; white-space: normal;>show chart</a> -->

                      <tr style="width: 985.85px;">
                        <th style=" flex-shrink:1; font-size: 25px;margin-top: -11px;" class="testPk" hidden="hidden">
                          testPk</th>
                        <th style="flex-shrink:30; font-size: 25px;margin-top: -11px;" class="testId">題號</th>
                        <!-- <th style="flex-shrink:20; font-size: 25px;margin-top: -11px;" class="field">field</th> -->
                        <th style="flex-shrink:1; font-size: 25px;margin-top: -11px;" class="examinationquestion">題目名
                        </th>
                        <th style="flex-shrink:6; font-size: 25px;margin-top: -11px;" class="options">題目</th>

                        <th style="flex-shrink:6; font-size: 25px;margin-top: -11px;" class="answer">答案</th>
                        <th style="flex-shrink:60; font-size: 25px;margin-top: -11px;" class=""></th>


                      </tr>
                    </thead>

                    <tbody>
                      <div>


                      </div>
                    </tbody>
                  </table>
                  <input type="button" value="新增題目" id="insert">
                  <input type="button" value="儲存題庫" id="insertpage">
                </form>
              </div>
              <div style="display: flex; flex-direction:column; display: flex;" clss="clearfix">


              </div>
            </div>
            <!-- </div> -->
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


        })
        $(function () {
          var a = 0;
          var b = 1;

          $('#insert').on('click', function () {
            console.log($('.optionsis').val())
            if ($('.optionsis').val() == '2') {

              let testStr = '<td style="flex-shrink:1;" class="testPk" hidden="hidden"></td><td style="flex-shrink:50;" class="testId"><input  type="text" name="testId" id="testId" readonly="readonly" class="form-control" value=' + b + '></td><td style="flex-shrink:20;" class="field" hidden="hidden"><input type="text" name="field" id="field" value="${surveytype.survey}" readonly="readonly" class="form-control"></td><td style="flex-shrink:1;" class="examinationquestion"><input type="text" name="examinationquestion" id="examinationquestion" class="form-control"></td><td style="flex-shrink:6;" class="options"><input type="text" name="options" id="options" class="form-control" placeholder="選項"><br><input type="text" name="options2" id="options2" class="form-control" placeholder="選項"></td><td style="flex-shrink:6;" class="options"><input type="text" name="answer" id="answer" class="form-control" placeholder="答案"><br><input type="text" name="answer2" id="answer2" class="form-control" placeholder="答案"></td><td style="flex-shrink:65;"><input type="button" value="删除" id="delete" class="delete-button" ></td>';
              $('#testTable tbody').append('<tr style=" border-collapse: collapse; width: 100%; border-radius: 5px; background-color: #dee2e6; margin-top: 10px;" class= "testis ' + a + '">');
              $('#testTable tbody tr').eq(a++).append(
                testStr);
              b++
              console.log(a)
            }
            if ($('.optionsis').val() == '3') {
              let testStr = '<td style="flex-shrink:1;" class="testPk" hidden="hidden"></td><td style="flex-shrink:50;" class="testId"><input type="text" name="testId" id="testId" readonly="readonly" class="form-control" value=' + b + '></td><td style="flex-shrink:20;" class="field"  hidden="hidden"><input type="text" name="field" id="field" value="${surveytype.survey}" readonly="readonly" class="form-control"></td><td style="flex-shrink:1;" class="examinationquestion"><input type="text" name="examinationquestion" id="examinationquestion" class="form-control"></td><td style="flex-shrink:6;" class="options"><input type="text" name="options" id="options" class="form-control" placeholder="選項"><br><input type="text" name="options2" id="options2" class="form-control"  placeholder="選項"><br><input type="text" name="options3" id="options3" class="form-control"  placeholder="選項"></td><td style="flex-shrink:6;" class="options"><input type="text" name="answer" id="answer" class="form-control" placeholder="答案"><br><input type="text" name="answer2" id="answer2" class="form-control" placeholder="答案"><br><input type="text" name="answer3" id="answer3" class="form-control" placeholder="答案"></td><td style="flex-shrink:65;"><input type="button" value="删除" id="delete" class="delete-button" ></td>';
              $('#testTable tbody').append('<tr style=" border-collapse: collapse; width: 100%; border-radius: 5px; background-color: #dee2e6; margin-top: 10px;" class= "testis ' + a + '">');
              $('#testTable tbody tr').eq(a++).append(
                testStr);
              b++
              // console.log(a)
            }
            if ($('.optionsis').val() == '4') {
              let testStr = '<td style="flex-shrink:1;" class="testPk" hidden="hidden"></td><td style="flex-shrink:50;" class="testId"><input type="text" name="testId" id="testId" readonly="readonly" class="form-control" value=' + b + '></td><td style="flex-shrink:20;" class="field" hidden="hidden"><input type="text" name="field" id="field" value="${surveytype.survey}" readonly="readonly" class="form-control"></td><td style="flex-shrink:1;" class="examinationquestion"><input type="text" name="examinationquestion" id="examinationquestion" class="form-control examinationquestion"></td><td style="flex-shrink:6;" class="options"><input type="text" name="options" id="options" class="form-control" placeholder="選項"><br><input type="text" name="options2" id="options2" class="form-control" placeholder="選項"><br><input type="text" name="options3" id="options3" class="form-control" placeholder="選項"><br><input type="text" name="options4" id="options4" class="form-control" placeholder="選項"></td><td style="flex-shrink:6;" class="options"><input type="text" name="answer" id="answer" class="form-control" placeholder="答案"><br><input type="text" name="answer2" id="answer2" class="form-control" placeholder="答案"><br><input type="text" name="answer3" id="answer3" class="form-control" placeholder="答案"><br><input type="text" name="answer4" id="answer4" class="form-control" placeholder="答案"></td><td style="flex-shrink:65;"><input type="button" value="删除" id="delete" class="delete-button" ></td>';
              $('#testTable tbody').append('<tr style=" border-collapse: collapse; width: 100%; border-radius: 5px; background-color: #dee2e6; margin-top: 10px;" class= "testis ' + a + '">');
              $('#testTable tbody tr').eq(a++).append(
                testStr);
              b++
              // console.log(a)
            }

          })


          $('#insertpage').on('click', function () {

            let testbean = [];
            $('.testis').each(function () {
              var obj = {};
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
            $.ajax({
              type: "post",
              url: "/admin/insertNewTestPage",
              contentType: "application/json",
              cache: false,
              processData: false,
              data: jsonSre,
              success: function (result) {
                Swal.fire({
                  title: "新增成功",
                  type: "新增一筆題庫",
                  showCancelButton: false,
                  confirmButtonText: "確定",
                  closeOnConfirm: false
                }).then(function () {
                  window.location.href = "/admin/testBackstage";
                });
              },
              error: function (result) {
                Swal.fire("update error")
              }
            })

          })
          $(function () {
            // Your code here
            $('#inputtext').on('click', function () {
              console.log('123')
              // for (let i = 0; i <= 2; i++) {
              //   $('.testis.' + i + ' .examinationquestion input').val('new_value_1');
              //   $('.testis.' + i + ' .options input[name="options"]').val('新值1');
              //   $('.testis.' + i + ' .options input[name="options2"]').val('新值2');
              //   $('.testis.' + i + ' .options input[name="answer"]').val('新值3');
              //   $('.testis.' + i + ' .options input[name="answer2"]').val('新值4');
              // }










              $('.testis.0 .examinationquestion input').val('我喜歡跟別人交流:');
              $('.testis.0 .options input[name="options"]').val('a.極不同意');
              $('.testis.0 .options input[name="options2"]').val('b.不同意');
              $('.testis.0 .options input[name="options3"]').val('c.同意');
              $('.testis.0 .options input[name="options4"]').val('d.極度同意');
              $('.testis.0 .options input[name="answer"]').val('1');
              $('.testis.0 .options input[name="answer2"]').val('2');
              $('.testis.0 .options input[name="answer3"]').val('3');
              $('.testis.0 .options input[name="answer4"]').val('4');

              $('.testis.1 .examinationquestion input').val('我對未知的事情感到不安:');
              $('.testis.1 .options input[name="options"]').val('a.極不同意');
              $('.testis.1 .options input[name="options2"]').val('b.不同意');
              $('.testis.1 .options input[name="options3"]').val('c.同意');
              $('.testis.1 .options input[name="options4"]').val('d.極度同意');
              $('.testis.1 .options input[name="answer"]').val('4');
              $('.testis.1 .options input[name="answer2"]').val('3');
              $('.testis.1 .options input[name="answer3"]').val('2');
              $('.testis.1 .options input[name="answer4"]').val('1');

              $('.testis.2 .examinationquestion input').val('我覺得自己是一個有創造力的人:');
              $('.testis.2 .options input[name="options"]').val('a.極不同意');
              $('.testis.2 .options input[name="options2"]').val('b.不同意');
              $('.testis.2 .options input[name="options3"]').val('c.同意');
              $('.testis.2 .options input[name="options4"]').val('d.極度同意');
              $('.testis.2 .options input[name="answer"]').val('1');
              $('.testis.2 .options input[name="answer2"]').val('2');
              $('.testis.2 .options input[name="answer3"]').val('3');
              $('.testis.2 .options input[name="answer4"]').val('4');

              $('.testis.3 .examinationquestion input').val('我喜歡挑戰自己:');
              $('.testis.3 .options input[name="options"]').val('a.極不同意');
              $('.testis.3 .options input[name="options2"]').val('b.不同意');
              $('.testis.3 .options input[name="options3"]').val('c.同意');
              $('.testis.3 .options input[name="options4"]').val('d.極度同意');
              $('.testis.3 .options input[name="answer"]').val('1');
              $('.testis.3 .options input[name="answer2"]').val('2');
              $('.testis.3 .options input[name="answer3"]').val('3');
              $('.testis.3 .options input[name="answer4"]').val('4');

              $('.testis.4 .examinationquestion input').val('我覺得自己是一個有耐心的人:');
              $('.testis.4 .options input[name="options"]').val('a.極不同意');
              $('.testis.4 .options input[name="options2"]').val('b.不同意');
              $('.testis.4 .options input[name="options3"]').val('c.同意');
              $('.testis.4 .options input[name="options4"]').val('d.極度同意');
              $('.testis.4 .options input[name="answer"]').val('1');
              $('.testis.4 .options input[name="answer2"]').val('2');
              $('.testis.4 .options input[name="answer3"]').val('3');
              $('.testis.4 .options input[name="answer4"]').val('4');

              $('.testis.5 .examinationquestion input').val('我喜歡運動:');
              $('.testis.5 .options input[name="options"]').val('a.極不同意');
              $('.testis.5 .options input[name="options2"]').val('b.不同意');
              $('.testis.5 .options input[name="options3"]').val('c.同意');
              $('.testis.5 .options input[name="options4"]').val('d.極度同意');
              $('.testis.5 .options input[name="answer"]').val('1');
              $('.testis.5 .options input[name="answer2"]').val('2');
              $('.testis.5 .options input[name="answer3"]').val('3');
              $('.testis.5 .options input[name="answer4"]').val('4');

              $('.testis.6 .examinationquestion input').val('我喜歡探索新事物:');
              $('.testis.6 .options input[name="options"]').val('a.極不同意');
              $('.testis.6 .options input[name="options2"]').val('b.不同意');
              $('.testis.6 .options input[name="options3"]').val('c.同意');
              $('.testis.6 .options input[name="options4"]').val('d.極度同意');
              $('.testis.6 .options input[name="answer"]').val('1');
              $('.testis.6 .options input[name="answer2"]').val('2');
              $('.testis.6 .options input[name="answer3"]').val('3');
              $('.testis.6 .options input[name="answer4"]').val('4');


              $('.testis.7 .examinationquestion input').val('我認為自己是一個有條理的人:');
              $('.testis.7 .options input[name="options"]').val('a.極不同意');
              $('.testis.7 .options input[name="options2"]').val('b.不同意');
              $('.testis.7 .options input[name="options3"]').val('c.同意');
              $('.testis.7 .options input[name="options4"]').val('d.極度同意');
              $('.testis.7 .options input[name="answer"]').val('1');
              $('.testis.7 .options input[name="answer2"]').val('2');
              $('.testis.7 .options input[name="answer3"]').val('3');
              $('.testis.7 .options input[name="answer4"]').val('4');

              $('.testis.8 .examinationquestion input').val('我喜歡獨立思考:');
              $('.testis.8 .options input[name="options"]').val('a.極不同意');
              $('.testis.8 .options input[name="options2"]').val('b.不同意');
              $('.testis.8 .options input[name="options3"]').val('c.同意');
              $('.testis.8 .options input[name="options4"]').val('d.極度同意');
              $('.testis.8 .options input[name="answer"]').val('1');
              $('.testis.8 .options input[name="answer2"]').val('2');
              $('.testis.8 .options input[name="answer3"]').val('3');
              $('.testis.8 .options input[name="answer4"]').val('4');

              $('.testis.9 .examinationquestion input').val('我總是喜歡嘗試新事物:');
              $('.testis.9 .options input[name="options"]').val('a.極不同意');
              $('.testis.9 .options input[name="options2"]').val('b.不同意');
              $('.testis.9 .options input[name="options3"]').val('c.同意');
              $('.testis.9 .options input[name="options4"]').val('d.極度同意');
              $('.testis.9 .options input[name="answer"]').val('1');
              $('.testis.9 .options input[name="answer2"]').val('2');
              $('.testis.9 .options input[name="answer3"]').val('3');
              $('.testis.9 .options input[name="answer4"]').val('4');


            });
          });
          $('body').on('click', '.delete-button', function () {
            var currentTestId = $(this).closest('tr').find('input[name="testId"]').val();
            // var currenttestisi = $(this).closest('tr').find('input[name="testId"]')
            $(this).closest('tr').remove();
            a--;
            b--;
            var allTestis = $('tr.testis');
            for (var i = 0; i < allTestis.length; i++) {
              var currentClass = $(allTestis[i]).attr('class');
              var newClass = currentClass.replace(/\d+/, i);
              $(allTestis[i]).attr('class', newClass);
            }
            $('#testTable tbody tr').each(function () {
              var testId = $(this).find('input[name="testId"]').val();
              if (testId > currentTestId) {
                $(this).find('input[name="testId"]').val(testId - 1);
              }
              var testisi = $(this)

            });
          })

          //del
          // $('body').on('click', '#del', function () {
          //   $(this).attr('value', '取消').attr('type', 'button').attr('id', 'dels')
          //   $('.testinput').append('<input type="button" value="確定" id="cancel" style="display: flex; position: absolute;top: 170px;right: 80px;">')
          //   $('.testis 0').append('<input type="cheakbox()">')
          // })
          // $('body').on('click', '#dels', function () {
          //   $(this).attr('value', '刪除').attr('type', 'button').attr('id', 'del')
          //   $("#cancel").remove();
          // })
          // $('body').on('click', '#cancel', function () {
          //   console.log('123')
          // })
        })
      </script>

    </body>

    </html>