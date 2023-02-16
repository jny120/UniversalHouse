<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

          /* element.style {
            border: 1px solid#17a2b8;
            border-collapse: collapse;
            width: 100%;
            height: 400px;
          } */

          .form {
            display: block;
            width: 100%;
            padding: 0.375rem rem 0.75rem;
            font-size: 1rem;
            line-height: 1.5;
            color: #f2827447;
            background-color: #fff;
            background-clip: padding-box;


            transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
          }



          p {
            color: rgb(109, 109, 109);
            font-size: 40px;
            line-height: 1.9;
            font-weight: 400;
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

          .ss {
            width: 500%;
            height: 400px;
            background-color: #17a2b8;
            margin: 10px;
          }

          table {
            border: 2px solid black;
            border-collapse: collapse;
            width: 100%;
            background-color: #17a2b8;
          }

          p,
          label {
            font: 1rem 'Fira Sans', sans-serif;
          }

          fieldset {
            scroll-padding-block: inherit;
            min-width: 0px;
            padding: 7px;
            margin: 19px;
            border: 9px;

          }

          .questionBox.test {
            border-style: solid;
            padding: 4%;
            /* border: 0px; */
            border-width: 19px;
            background-color: currentcolor;
            border-bottom-style: ridge;
          }



          .questionBox label {
            font-family: 'Noto Sans TC', sans-serif;
            font-size: 20px;
            width: 100%;
            padding: 10px 30px;
            border-radius: 30px;
            margin: 10px 0;
            font-weight: normal;
            background: #fff;
            color: #000;
            cursor: pointer;
          }


          .questionBox {
            width: 100%;

            margin: 75px 0 0px;

          }

          .questionBox h3 {
            color: #d623b9;
            font-weight: 600;
          }

          input[type=checkbox],
          input[type=radio] {
            box-sizing: border-box;
            padding: 0;
            display: none;
          }

          label {
            display: inline-block;
            max-width: 100%;
            margin-bottom: 5px;
            font-weight: bold;
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
                <li><a href="frontDesk">測驗</a></li>
                <li><a href="frontPage">論壇</a></li>
              </ul>
            </nav>
            <!-- Button Group -->
            <div class="amado-btn-group mt-30 mb-100" id="loginDiv">
              <a href="/users/memberCenter" id="memberCenterOrBs" class="btn amado-btn mb-15">會員中心</a>


            </div>
            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
              <a href="/users/showMemberInfo" class="cart-nav"><img src="/amado-master/img/core-img/cart.png" alt="">購物車
              </a>
              <a href="#" class="fav-nav"><img src="/amado-master/img/core-img/favorites.png" alt="">我的最愛</a>
              <a href="#" class="search-nav"><img src="/amado-master/img/core-img/search.png" alt="">搜尋</a>
            </div>
            <!-- Social Button -->
            <div class="social-info d-flex justify-content-between">
              <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-instagram"
                  aria-hidden="true"></i></a> <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
                href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
          </header>
          <!-- Header Area End -->

          <!-- 這邊開始 -->

          <input type="text" value="${testCenterBean}" hidden="hidden" id="field">
          <div class="cart-table-area ">
            <div class="container-fluid" id="btnn">
              <div class="cart-title mt-50">
                <h1 class="h1name" style="color: rgb(133, 133, 133)"></h1>
              </div>
              <div class="row ">
                <div class="container">
                  <form action="TestResult" method="get" enctype="multipart/form-data" id="form">
                    <!--           
                                    姓名:<input type="text" name="name" class="name" required> -->
                    <!-- <input type="text" name="total" class="total" value=""> -->
                    <div class="fieldname"></div>
                    <div class="totalname"></div>
                    <div class="testname"></div>
                    <div class="testnames"></div>
                    <div class="surveytype"></div>
                    <div class="inputradio2"></div>
                    <div class="form dsd">
                      <!-- 
           <div class="questionBox" name="test" class="test">
            <h3>${vs.count}. ${testBean.examinationquestion}</h3>

            <input type="text" name="field" value="${testBean.field}" class="field" id="${vs.count}" hidden="hidden">
            <label for="s${vs.count}" class="radiocolor">
             <input type="radio" name="${vs.count}" value="${testBean.answer}" class="radio1" id="s${vs.count}">
             ${testBean.options}</label>

            <label for="f${vs.count}" class="radiocolor">
             <input type="radio" name="${vs.count}" value="${testBean.answer2}" class="radio2" id="f${vs.count}">
             ${testBean.options2}</label>
           </div> -->


                    </div>

                    <!-- <input type="hidden" id="total" name="total"> -->
                    <div>
                      <input type="button" value="提交" style="margin: 1%;
                    text-align: center;
                    vertical-align: middle;
                    width: auto;" class="bun amado-btn btn">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>

          <!-- 這邊結束 -->

        </div>
        <!-- ##### Main Content Wrapper End ##### -->



        <!-- ##### Footer Area Start ##### -->
        <footer class=" footer_area clearfix">
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
                        data-target="#footerNavContent" aria-controls="footerNavContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                      </button>
                      <div class="collapse navbar-collapse" id="footerNavContent">
                        <ul class="navbar-nav ml-auto">
                          <li class="nav-item active"><a class="nav-link" href="/">首頁</a></li>
                          <li class="nav-item"><a class="nav-link" href="/projects/showAllEntrusFront/1">專案</a>
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
                  console.log(member.length)
                  htmlStr =
                    '<a href="/logout" class="btn amado-btn active">登出</a>' +
                    '<p class="userInfo" style="margin-bottom:0">使用者: ' + member.name + '</p>' +
                    '<p class="userInfo" style="margin-bottom:0">最後登入時間: ' + member.lastLogin + '</p>';
                  nameStr = '<input style="display:none" class="names" name="names" value="' + member.name + '">填寫會員:&nbsp;&nbsp;&nbsp;' + member.name + '</input>';
                  $('.testnames').append(nameStr);
                  console.log(nameStr)
                  if (member.permission == 1) {
                    $('#memberCenterOrBs').attr('href', '/admin/showAllMember').text('前往後臺');
                  }
                } else {
                  htmlStr = '<a href="/login" class="btn amado-btn active">登入</a>';
                }

                // console.log(nameStr)
                // $('.testnames a').append(nameStr);
                $('#loginDiv').append(htmlStr)
              },
              error: function (member) {
                Swal.fire("response error");
              }
            });
            //找題庫
            var field = $('#field').val()
            console.log(field)
            $.ajax({
              type: 'post',
              url: "findTestByField",
              data: { field: field },
              datatype: 'json',
              success: function (field) {
                // field.index(0).field
                // console.log(field.index(0).field)
                $.each(field, function (index, element) {
                  var s = index + 1

                  $('.h1name').text(element.field)

                  if (element.answer != null) {
                    if (element.options3 == null) {
                      testStr = '<div class="questionBox test"><h3>' + s + '.' + element.examinationquestion + '</h3>' + '<div>' +
                        '<input type="text" name="field" value="${testBean.field}" class="field" id="' + s + '" hidden="hidden">' +
                        '<label for="radio1_' + s + '" class="radiocolor">' +
                        '<input id="radio1_' + s + '" type="radio" name="' + s + '" value="' + element.answer + '" class="radio1" required >' +
                        '' + element.options + '</label>' + '<label for="radio2_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio2_' + s + '" name="' + s + '" value="' + element.answer2 + '" class="radio2" required >' +
                        '' + element.options2 + '</label>' + '</div></div>'
                      $('.dsd').append(testStr)
                    } else if (element.options3 != null && element.options4 == null) {
                      testStr = '<div class="questionBox test"><h3>' + s + '.' + element.examinationquestion + '</h3>' + '<div>' +
                        '<input type="text" name="field" value="${testBean.field}" class="field" id="' + s + '" hidden="hidden">' +
                        '<label for="radio1_' + s + '" class="radiocolor">' +
                        '' + element.options + '</label>' + '<label for="radio2_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio2_' + s + '" name="' + s + '" value="' + element.answer2 + '" class="radio2" required >' +
                        '' + element.options2 + '</label>' +

                        '<label for="radio3_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio3_' + s + '" name="' + s + '" value="' + element.answer3 + '" class="radio3" required >' +
                        '' + element.options3 + '</label>' + '</div></div>'

                      $('.dsd').append(testStr)
                    }

                    else if (element.options4 != null) {
                      testStr = '<div class="questionBox test"><h3>' + s + '.' + element.examinationquestion + '</h3>' + '<div>' +
                        '<input type="text" name="field" value="${testBean.field}" class="field" id="' + s + '" hidden="hidden">' +
                        '<label for="radio1_' + s + '" class="radiocolor">' +
                        '<input id="radio1_' + s + '" type="radio" name="' + s + '" value="' + element.answer + '" class="radio1" required >' + element.options + '</label>'
                        + '<label for="radio2_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio2_' + s + '" name="' + s + '" value="' + element.answer2 + '" class="radio2" required >' + element.options2 + '</label>' +

                        '<label for="radio3_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio3_' + s + '" name="' + s + '" value="' + element.answer3 + '" class="radio3" required >' + element.options3 + '</label>' +

                        '<label for="radio4_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio4_' + s + '" name="' + s + '" value="' + element.answer4 + '" class="radio4" required >' + element.options4 + '</label>' +
                        '</div></div>'

                      $('.dsd').append(testStr)
                    }
                  } else if (element.answer == null) {
                    if (element.options3 == null) {
                      testStr = '<div class="questionBox test"><h3 class="examinationquestion">' + s + '.' + element.examinationquestion + '</h3>' + '<div>' +
                        '<input type="text" name="field" value="${testBean.field}" class="field" id="' + s + '" hidden="hidden">' +
                        '<label for="radio1_' + s + '" class="radiocolor">' +
                        '<input id="radio1_' + s + '" type="radio" name="' + s + '" value="' + element.options + '" class="radio1" required >' +
                        '' + element.options + '</label>' + '<label for="radio2_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio2_' + s + '" name="' + s + '" value="' + element.options2 + '" class="radio2" required >' +
                        '' + element.options2 + '</label>' + '</div></div>'
                      $('.dsd').append(testStr)
                    } else if (element.options3 != null && element.options4 == null) {
                      testStr = '<div class="questionBox test"><h3 class="examinationquestion">' + s + '.' + element.examinationquestion + '</h3>' + '<div>' +
                        '<input type="text" name="field" value="${testBean.field}" class="field" id="' + s + '" hidden="hidden">' +
                        '<label for="radio1_' + s + '" class="radiocolor">' +
                        '<input id="radio1_' + s + '" type="radio" name="' + s + '" value="' + element.options + '" class="radio1" required >' +
                        '' + element.options + '</label>' + '<label for="radio2_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio2_' + s + '" name="' + s + '" value="' + element.options2 + '" class="radio2" required >' +
                        '' + element.options2 + '</label>' +

                        '<label for="radio3_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio3_' + s + '" name="' + s + '" value="' + element.options3 + '" class="radio3" required >' +
                        '' + element.options3 + '</label>' + '</div></div>'

                      $('.dsd').append(testStr)
                    }

                    else if (element.options4 != null) {
                      testStr = '<div class="questionBox test"><h3 class="examinationquestion">' + s + '.' + element.examinationquestion + '</h3>' + '<div>' +
                        '<input type="text" name="field" value="${testBean.field}" class="field" id="' + s + '" hidden="hidden">' +
                        '<label for="radio1_' + s + '" class="radiocolor">' +
                        '<input id="radio1_' + s + '" type="radio" name="' + s + '" value="' + element.options + '" class="radio1" required >' + element.options + '</label>'
                        + '<label for="radio2_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio2_' + s + '" name="' + s + '" value="' + element.options2 + '" class="radio2" required >' + element.options2 + '</label>' +

                        '<label for="radio3_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio3_' + s + '" name="' + s + '" value="' + element.options3 + '" class="radio3" required >' + element.options3 + '</label>' +

                        '<label for="radio4_' + s + '" class="radiocolor">' +
                        '<input type="radio" id="radio4_' + s + '" name="' + s + '" value="' + element.options4 + '" class="radio4" required >' + element.options4 + '</label>' +
                        '</div></div>'

                      $('.dsd').append(testStr)
                    }
                  }

                })

              }
            })

            //點擊選擇變色
            $('body').on('click', '.radiocolor', function () {

              $(this).attr('style', 'background-color:#ddecfa')
              $(this).siblings().attr('style', 'background-color:#fff')
            })

            //分數加總
            $('body').on('click', '.bun', function (e) {
              //#field
              e.preventDefault
              var field = $('#field').val()
              $.ajax({
                data: { field: field },
                url: 'findsurvey.controller',
                type: 'post',
                datatype: 'json',
                success: function (field) {
                  // console.log(field)

                  $.each(field, function (index, element) {

                    $('.surveytype').prop('value', element.surveytype)
                  })

                  console.log($('.surveytype').val())


                  // field.surveytype
                  if ($('.surveytype').val() == '心理測驗') {
                    var sum1 = 0;
                    var sum2 = 0;
                    var sum3 = 0;
                    var sum4 = 0;
                    var total = 0;
                    console.log("test27")
                    console.log($('.test').length)
                    for (var j = 0; j < $('.test').length; j++) {
                      // console.log(j + "========")

                      if ($('.radio1').eq(j).is(":checked")) {
                        // console.log($('.radio1').eq(j).val() + "radio1")
                        sum1 = sum1 + parseInt($('.radio1').eq(j).val());
                      }
                      else if ($('.radio2').eq(j).is(":checked")) {
                        // console.log($('.radio2').eq(j).val() + "radio2")
                        sum2 = sum2 + parseInt($('.radio2').eq(j).val());
                      }
                      else if ($('.radio3').eq(j).is(":checked")) {
                        // console.log($('.radio3').eq(j).val() + "radio3")
                        sum3 = sum3 + parseInt($('.radio3').eq(j).val());
                      }
                      else if ($('.radio4').eq(j).is(":checked")) {
                        // console.log($('.radio4').eq(j).val() + "radio4")
                        sum4 = sum4 + parseInt($('.radio4').eq(j).val());
                      }
                    }
                    total = sum1 + sum2 + sum3 + sum4;
                    console.log("total" + total);

                    totalStr = '<input type="text" name="total" class="" value="' + total + '" hidden="hidden">'
                    $('.totalname').append(totalStr)
                    var fields = $('#field').val()
                    console.log(fields + "sssssssss")
                    console.log(fields)
                    console.log(typeof (fields))
                    fieldStr = '<input type="text" name="fields" class="" value="' + fields + '"  hidden="hidden">'
                    $('.fieldname').append(fieldStr)

                    var names = $('.names').val();
                    $.ajax({
                      type: 'post',
                      url: "TestResultreturn",
                      data: {
                        "total": total,
                        "fields": fields,
                        "names": names,
                      },
                      datatype: 'json',
                      success: function () {
                        $('form').submit();

                      }
                    })

                  } else if ($('.surveytype').val() == '問卷調查') {
                    var result = "";
                    for (var j = 0; j < $('.test').length; j++) {
                      if ($('.radio1').eq(j).is(":checked")) {
                        console.log($('.examinationquestion').eq(j).val() + "examinationquestion");
                        console.log($('.radio1').eq(j).val() + "radio1");
                        result += "題目: " + $('.examinationquestion').eq(j).text() + "答: " + $('.radio1').eq(j).val() + ",,";
                      }
                      else if ($('.radio2').eq(j).is(":checked")) {
                        console.log($('.radio2').eq(j).val() + "radio2");
                        result += "題目: " + $('.examinationquestion').eq(j).text() + "答: " + $('.radio2').eq(j).val() + ",,";
                      }
                      else if ($('.radio3').eq(j).is(":checked")) {
                        console.log($('.radio3').eq(j).val() + "radio3");
                        result += "題目: " + $('.examinationquestion').eq(j).text() + "答: " + $('.radio3').eq(j).val() + ",,";
                      }
                      else if ($('.radio4').eq(j).is(":checked")) {
                        console.log($('.radio4').eq(j).val() + "radio4");
                        result += "題目: " + $('.examinationquestion').eq(j).text() + "答: " + $('.radio4').eq(j).val() + ",,";
                      }
                    }
                    console.log("Result: " + result);
                    inputradio2Str = '<input type="text" name="inputradio2" class="" value="' + result + '" hidden="hidden">'
                    $('.inputradio2').append(inputradio2Str)

                    var fields = $('#field').val()
                    console.log(fields)
                    console.log(inputradio2Str)
                    fieldStr = '<input type="text" name="fields" class="" value="' + fields + '" hidden="hidden">'
                    $('.fieldname').append(fieldStr)
                    var names = $('.names').val();
                    $.ajax({
                      type: 'post',
                      url: "TestResultreturn",
                      data: {
                        inputradio2: result,
                        fields: fields,
                        names: names,
                      },
                      datatype: 'json',
                      success: function () {
                        $('form').submit();

                      }
                    })
                  }

                }
              })




            })

            //點擊選擇移動滾輪
            $('body').on('click', '.radiocolor input', function () {
              console.log('123')
              // alert($(".questionBox").outerHeight());
              let section_id = $(".questionBox").outerHeight() / 2 + 50;
              var next = $(this).closest('.questionBox').next('.questionBox');
              $('html, body').animate({
                scrollTop: next.offset().top - section_id
              }, 1000);
            });

          })
        </script>

      </body>

      </html>