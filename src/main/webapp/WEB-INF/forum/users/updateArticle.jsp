<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>UniversalHouse | 更新文章</title>

<!-- Favicon  -->
<link rel="icon" href="/amado-master/img/core-img/logo.png">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!-- Core Style CSS -->
<link rel="stylesheet" href="/amado-master/css/core-style.css">
<!-- <link rel="stylesheet" href="/amado-master/css/style.css"> -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+TC&display=swap')
	;

body {
	font-family: 'Noto Sans TC', sans-serif;
	font-size: 20px;
}

.main-content-wrapper .header-area .amado-nav li a {
	font-family: 'Noto Sans TC', sans-serif;
	font-size: 20px;
}

.footer_area .single_widget_area .footer_menu .navbar-nav .nav-item .nav-link
	{
	font-size: 20px;
}
.topicName{
   margin-bottom:55px;
   margin-right:20px;
}
.topicName li{
   float:left;
   margin-right:25px;
}

.topicName li a{
   font-size:22px;
}
.topicName li a:hover{
   color:#fbb710;
}

.topicName li input[type="submit"]:hover{
   color:#fbb710;
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
							<input type="search" name="search" id="search"
								placeholder="Type your keyword...">
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
				<a href="/"><img src="/amado-master/img/core-img/logo.png"
					alt=""></a>
			</div>
			<!-- Amado Nav -->
			<!-- 左列 -->
			<nav class="amado-nav">
				<ul>
					<li class="active"><a href="/">首頁</a></li>
					<li><a href="/projects/showAllEntrusFront/1">專案</a></li>
					<li><a href="space.controller">場地租借</a></li>
					<li><a href="/showAllProduct">課程</a></li>
					<li><a href="/testBackstage">測驗</a></li>
					<li><a href="/frontPage">論壇</a></li>
				</ul>
			</nav>
			<!-- Button Group -->
			<div class="amado-btn-group mt-30 mb-100" id="loginDiv">
				<a href="/users/memberCenter" id="memberCenterOrBs"
					class="btn amado-btn mb-15">會員中心</a>


			</div>
			<!-- Cart Menu -->
			<div class="cart-fav-search mb-100">
				<a href="/users/showMemberInfo" class="cart-nav"><img
					src="/amado-master/img/core-img/cart.png" alt="">購物車 </a> <a
					href="#" class="fav-nav"><img
					src="/amado-master/img/core-img/favorites.png" alt="">我的最愛</a> <a
					href="#" class="search-nav"><img
					src="/amado-master/img/core-img/search.png" alt="">搜尋</a>
			</div>
			<!-- Social Button -->
			<div class="social-info d-flex justify-content-between">
				<a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a
					href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
			</div>
		</header>
		<!-- Header Area End -->

		<!-- 這邊開始 -->

		<div class="cart-table-area" style="padding-top: 50px;padding-bottom: 100px">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="checkout_details_area mt-50 clearfix">
							<div class="row" style="margin-left:100px">
								<form method="post" action="#">
									<input type="hidden" id="memberPk" name="memberPk"/>
									<ul class="topicName">
										<li>&nbsp;|</li>
										<li><a href="/toBoard/1">回到論壇</a></li>
										<li>&nbsp;|</li>
										<li><input type="submit" style="background-color: transparent;border: none;text-align: inherit;font-size: inherit;cursor: pointer;transition: color 0.5s;color:red" formaction="/users/toUserArticle" value="我的文章"/></li>
										<li>&nbsp;|</li>
										<li><input type="submit" style="background-color: transparent;border: none;text-align: inherit;font-size: inherit;cursor: pointer;transition: color 0.5s;" formaction="/users/toUserFavorite" value="我的最愛"/></li>
										<li>&nbsp;|</li>
										<li><input type="submit" style="background-color: transparent;border: none;text-align: inherit;font-size: inherit;cursor: pointer;transition: color 0.5s;" formaction="/users/toViewRecord" value="觀看紀錄"/></li>
										<li>&nbsp;|</li>
										<li><a href="/users/toNewArticle">新增文章</a></li>
										<li>&nbsp;|</li>
									</ul>
								</form>
							</div>
						</div>
					</div>
				</div>
			
				<div class="row">
					<div class="col-12" style="margin: auto">
						<div class="checkout_details_area mt-50 clearfix">

							<div class="cart-title">
								<h2 style="color:#fbb710">修改文章</h2>
								<hr>
								<p></p>
							</div>

							<form id="updateForm" action="#" method="post"
								style="margin-left: 20px" enctype="multipart/form-data">

								<input type="hidden" id="content" name="content" /> <input
									type="hidden" id="articleId" name="articleId"
									value="${article.articleId}" /> <input type="hidden"
									id="memberPk" name="memberPk" value="${article.memberPk}" />

								<div style="margin-bottom: 80px" class="col-5">
									<label for="status">文章是否公開?</label> <select
										class="w-100 nice-select" id="status" name="status">
										<c:choose>
											<c:when test="${article.status == 'public'}">
												<option value="public" selected="selected">公開</option>
											</c:when>
											<c:otherwise>
												<option value="public">公開</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${article.status == 'hidden'}">
												<option value="hidden" selected="selected">隱藏</option>
											</c:when>
											<c:otherwise>
												<option value="hidden">隱藏</option>
											</c:otherwise>
										</c:choose>
									</select>
								</div>

									<div style="margin-bottom: 80px" class="col-5">
									<label for="w-100 topicName">領域</label> 
									<select class="w-100 nice-select" id="topicName" name="topicName">
									<c:choose>
										<c:when test="${article.status == '生活'}">
											<option selected="selected">生活</option>
										</c:when>
											<c:otherwise>
												<option>生活</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${article.topicName == '資訊'}">
												<option selected="selected">資訊</option>
											</c:when>
											<c:otherwise>
												<option>資訊</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${article.topicName == '設計'}">
												<option selected="selected">設計</option>
											</c:when>
											<c:otherwise>
												<option>設計</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${article.topicName == '文書'}">
												<option selected="selected">文書</option>
											</c:when>
											<c:otherwise>
												<option>文書</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${article.topicName == '影視'}">
												<option selected="selected">影視</option>
											</c:when>
											<c:otherwise>
												<option>影視</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${article.topicName == '顧問'}">
												<option selected="selected">顧問</option>
											</c:when>
											<c:otherwise>
												<option>顧問</option>
											</c:otherwise>
										</c:choose>
									</select>
								</div>

								<div style="float: right; padding-right: 500px"
									class="preview-container">
									<img style="width: 100px; height: 100px;" id="oldCover"
										src="/getArticleCover?articleId=${article.articleId}">
									<img style="width: 100px; height: 100px; display: none;"
										id="preview" alt="COVER">
								</div>
								<div style="margin-bottom: 40px" class="col-12 mt-100">
									<label for="cover">封面預覽</label> <input type="file" class="btn"
										name="cover" id="cover"
										accept="image/gif, image/jpeg, image/png" multiple />
								</div>


								<div class="col-12 mb-3">
									<label for="title">文章標題</label> <input type="text"
										class="form-control" id="title" name="title"
										value="${article.title}" required />
								</div>

								<div class="col-12 mb-3">
									<label for="content">文章</label>
									<textarea id="editor" required="required">${article.content}</textarea>
								</div>

								<div class="cart-btn col-12 mt-100 ">
									<input type="button" class="btn amado-btn" id="send" value="送出" />
								</div>
							</form>
							<hr>
							<div class="cart-btn col-12 mt-100">
								<form method="post">
								<input type="hidden" class="memberPk" name="memberPk" />
									<input type="submit" class="btn amado-btn" style="background-color: grey; float: right" formaction="/toBoard/1" value="返回論壇" />
									<input type="submit" class="btn amado-btn" style="background-color: grey; float: right;margin-right:10px" formaction="/users/toUserArticle" value="返回使用者專區" />
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
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
                                        data-target="#footerNavContent" aria-controls="footerNavContent"
                                        aria-expanded="false" aria-label="Toggle navigation">
                                        <i class="fa fa-bars"></i>
                                    </button>
                                    <div class="collapse navbar-collapse" id="footerNavContent">
                                        <ul class="navbar-nav ml-auto">
                                            <li class="nav-item active"><a class="nav-link" href="/">首頁</a></li>
                                            <li class="nav-item"><a class="nav-link"
                                                    href="/projects/showAllEntrusFront/1">專案</a>
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
	<script
		src="https://cdn.ckeditor.com/ckeditor5/36.0.0/super-build/ckeditor.js"></script>
	<script>
            var currentUser;
            //check user if logined
            $.ajax({
                type: "get",
                url: "/getCurrentUser.do",
                success: function (member) {
                    //	logined: show user info //else show login button
                    let htmlStr = null;
                    if (member.length != 0) {
                    	$('#memberPk').attr('value', member.memberPk);
                    	$('.memberPk').attr('value', member.memberPk);
                        currentUser = member;
                        htmlStr =
                            '<a href="/logout" class="btn amado-btn active">登出</a>' +
                            '<p class="userInfo" style="margin-bottom:0">使用者: ' + member.name + '</p>' +
                            '<p class="userInfo" style="margin-bottom:0">最後登入時間: ' + member.lastLogin + '</p>';
                        if (member.permission == 1) {
                            $('#memberCenterOrBs').attr('href', '/admin/showAllMember').text('前往後臺');
                        }
                    } else {
                        htmlStr = '<a href="/login" class="btn amado-btn active">登入</a>';
                    }
                    $('#loginDiv').append(htmlStr)
                },
                error: function (member) {
                    Swal.fire("response error");
                }
            });
        	
        	CKEDITOR.ClassicEditor.create(document.getElementById("editor"), {
                toolbar: {
                    items: [
                        'heading','bold', 'italic', 'strikethrough', 'underline', 'removeFormat', '|',
                        'bulletedList', 'numberedList', 'todoList', '|', 'outdent', 'indent', '|','undo', 'redo','-',
                        'fontSize', 'fontFamily', 'fontColor', 'fontBackgroundColor', 'highlight', '|',
                        'alignment', '|',
                        'link', 'insertImage', 'blockQuote', 'insertTable', 'mediaEmbed', 'codeBlock',
                        'specialCharacters', 'horizontalLine'
                    ],
                    shouldNotGroupWhenFull: true
                },

                list: {
                    properties: {
                        styles: true,
                        startIndex: true,
                        reversed: true
                    }
                },

                heading: {
                    options: [
                        { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                        { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                        { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                        { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                        { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' },
                        { model: 'heading5', view: 'h5', title: 'Heading 5', class: 'ck-heading_heading5' },
                        { model: 'heading6', view: 'h6', title: 'Heading 6', class: 'ck-heading_heading6' }
                    ]
                },

                placeholder: '',

                fontFamily: {
                    options: [
                        'default',
                        'Arial, Helvetica, sans-serif',
                        'Courier New, Courier, monospace',
                        'Georgia, serif',
                        'Lucida Sans Unicode, Lucida Grande, sans-serif',
                        'Tahoma, Geneva, sans-serif',
                        'Times New Roman, Times, serif',
                        'Trebuchet MS, Helvetica, sans-serif',
                        'Verdana, Geneva, sans-serif'
                    ],
                    supportAllValues: true
                },

                fontSize: {
                    options: [10, 12, 14, 'default', 18, 20, 22],
                    supportAllValues: true
                },

                htmlSupport: {
                    allow: [
                        {
                            name: /.*/,
                            attributes: true,
                            classes: true,
                            styles: true
                        }
                    ]
                },

                htmlEmbed: {
                    showPreviews: true
                },

                link: {
                    decorators: {
                        addTargetToExternalLinks: true,
                        defaultProtocol: 'https://',
                        toggleDownloadable: {
                            mode: 'manual',
                            label: 'Downloadable',
                            attributes: {
                                download: 'file'
                            }
                        }
                    }
                },

                mention: {
                    feeds: [
                        {
                            marker: '@',
                            feed: [
                                '@apple', '@bears', '@brownie', '@cake', '@cake', '@candy', '@canes', '@chocolate', '@cookie', '@cotton', '@cream',
                                '@cupcake', '@danish', '@donut', '@dragée', '@fruitcake', '@gingerbread', '@gummi', '@ice', '@jelly-o',
                                '@liquorice', '@macaroon', '@marzipan', '@oat', '@pie', '@plum', '@pudding', '@sesame', '@snaps', '@soufflé',
                                '@sugar', '@sweet', '@topping', '@wafer'
                            ],
                            minimumCharacters: 1
                        }
                    ]
                },

                removePlugins: [
                    'CKBox',
                    'CKFinder',
                    'EasyImage',
                    'RealTimeCollaborativeComments',
                    'RealTimeCollaborativeTrackChanges',
                    'RealTimeCollaborativeRevisionHistory',
                    'PresenceList',
                    'Comments',
                    'TrackChanges',
                    'TrackChangesData',
                    'RevisionHistory',
                    'Pagination',
                    'WProofreader',
                    'MathType'
                ]
            }).then(editor => {
            	
            	$('#updateForm').on('click','#send',function(){
            		  Swal.fire({
            		    title: "確定要更新文章？",
            		    icon: "warning",
            		    showCancelButton: true,
            		    confirmButtonColor: '#3085d6',
            		    cancelButtonColor: '#d33',
            		    confirmButtonText: '確定',
            		    cancelButtonText: '取消'
            		  }).then((result) => {
            		    if (result.value) {
            		      $('#content').attr('value', editor.getData());
            		      var updateForm = new FormData($('#updateForm')[0]);
            		      $.ajax({
            		        type : 'post',
            		        url : '/updateArticle',
            		        enctype : 'multipart/form-data',
            		        data : updateForm,
            		        contentType: false,
            		        cache: false,
            		        processData: false,
            		        success : function() {
            		          Swal.fire('修改成功!');
            		        },
            		        error : function() {
            		          Swal.fire('修改失敗!');
            		        }
            		      });
            		    }
            		  });
            		});
            	
            });	
        	
        	$('#cover').change(function () {
                if (!this.files.length) {
                    $('#oldCover').show();
                    $('#preview').hide();
                    return;
                }
                const file = this.files[0];
                const reader = new FileReader();

                reader.onload = function (e) {
                    $('#preview').attr('src', e.target.result);
                    $('#preview').show();
                    $('#oldCover').hide();
                };

                reader.readAsDataURL(file);
            });
        </script>

</body>

</html>