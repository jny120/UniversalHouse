<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!DOCTYPE html>
  <html>

  <head>
   <meta charset="UTF-8">
   <meta name="description" content="">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>Insert title here</title>
   <!-- Favicon  -->
   <link rel="icon" href="img/core-img/favicon.ico">

   <!-- Core Style CSS -->
   <link rel="stylesheet" href="<c:url value='/amado-master/css/core-style.css' />">
   <link rel="stylesheet" href="<c:url value='/amado-master/css/style.css' />">
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
          <img src="img/core-img/search.png" alt="">
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
      <a href="<c:url value='/index.jsp' />"><img src="<c:url value='/amado-master/css/core-style.css' />" alt=""></a>

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
      <a href="<c:url value='/index.jsp' />"><img src="<c:url value='/amado-master/img/core-img/logo.png' />"
        alt=""></a>
     </div>
     <nav class="amado-nav">
      <ul>
       <li class="active"><a href="<c:url value='/' />">Home</a></li>
       <li id="openShopSideBar2"><a href="<c:url value='backStage' />">測驗後台</a></li>
       <div class="catagories-menu" id='showShopSideBar2'>
        <ul>
         <li><a href="<c:url value='showTest' />">查</a></li>
         <li><a href="<c:url value='PushCsv' />">存入試題</a></li>
        </ul>
       </div>
       <li><a href="frontDesk">測驗開始</a></li>
      </ul>
     </nav>
    </header>
    <!-- Header Area End -->

    <!-- Product Catagories Area Start -->
    <div class="products-catagories-area clearfix">
     <div class="amado-pro-catagory clearfix">

      <!-- Single Catagory -->
      <div class="single-products-catagory clearfix">
       <a href="shop.html"> <img src="<c:url value='/amado-master/img/bg-img/1.jpg'/>" alt="">
        <!-- Hover Content -->
        <div class="hover-content">
         <div class="line"></div>
         <p>From $180</p>
         <h4>Modern Chair</h4>
        </div>
       </a>
      </div>
     </div>
    </div>
   </div>


   <!-- ##### Newsletter Area End ##### -->

   <!-- ##### Footer Area Start ##### -->
   <footer class="footer_area clearfix">
    <div class="container">
     <div class="row align-items-center">
      <!-- Single Widget Area -->
      <div class="col-12 col-lg-4">
       <div class="single_widget_area">
        <!-- Logo -->
        <div class="footer-logo mr-50">
         <a href="index.html"><img src="<c:url value='/amado-master/img/core-img/logo2.png'/>" alt=""></a>
        </div>
        <!-- Copywrite Text -->
        <p class="copywrite">
         <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
         Copyright &copy;
         <script>
          document.write(new Date().getFullYear());
         </script>
         All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
          href="https://colorlib.com" target="_blank">Colorlib</a> &
         Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
         <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        </p>
       </div>
      </div>
      <!-- Single Widget Area -->
      <div class="col-12 col-lg-8">
       <div class="single_widget_area">
        <!-- Footer Menu -->
        <div class="footer_menu">
         <nav class="navbar navbar-expand-lg justify-content-end">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent"
           aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation">
           <i class="fa fa-bars"></i>
          </button>
          <div class="collapse navbar-collapse" id="footerNavContent">
           <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a class="nav-link" href="<c:url value='/' />">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="shop.html">PROJECT</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="product-details.html">SPACE RENTAL</a></li>
            <li class="nav-item"><a class="nav-link" href="cart.html">COURSE</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="checkout.html">TEST</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="checkout.html">FORUM</a>
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
   <script src="<c:url value='/amado-master/js/jquery/jquery-2.2.4.min.js'/>"></script>
   <!-- Popper js -->
   <script src="<c:url value='/amado-master/js/popper.min.js'/>"></script>
   <!-- Bootstrap js -->
   <script src="<c:url value='/amado-master/js/bootstrap.min.js'/>"></script>
   <!-- Plugins js -->
   <script src="<c:url value='/amado-master/js/plugins.js'/>"></script>
   <!-- Active js -->
   <script src="<c:url value='/amado-master/js/active.js'/>"></script>
   <script>
    if ($('#showShopSideBar1').show()) {
     $('#showShopSideBar2').hide();
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
   </script>
  </body>

  </html>