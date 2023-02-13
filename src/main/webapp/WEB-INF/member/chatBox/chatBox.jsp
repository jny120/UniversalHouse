<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

            th,
            td {
                word-break: break-all;
            }

            .image-upload>input {
                display: none;
            }

            #chatBox {
                width: 100%;
                height: 780px;
                overflow-y: scroll;
                padding: 10px;
                border: 1px solid #ccc;
            }

            *::-webkit-scrollbar {
                display: none;
            }

            .messageContainer {
                display: flex;
                justify-content: flex-start;
            }

            .sendByUserMessage {
                flex-direction: row-reverse
            }

            .sender {
                font-weight: bold;
                margin: 10px 10px 0 10px;
                font-size: 20px;
            }

            #sendBtn {
                margin: 10px;
            }

            .message {
                background-color: #f2f2f2;
                padding: 10px;
                border-radius: 5px;
                margin-bottom: 0px;
                font-size: 20px;
            }

            .receivedMessage {
                background-color: #FFFF78;
            }

            #messageArea {
                display: flex;
            }


            #leftArea {
                width: 40%;
                height: 900px;
                padding: 10px;
            }

            #functionDiv {
                width: 450px;
                margin: 10px;
            }

            #messageArea button {
                border-radius: 0;
                margin-bottom: 5px;
            }

            #friendListDiv {
                overflow: hidden;
                width: 100%;
                height: 700px;
                overflow-y: scroll;
                padding: 10px;
                border: 1px solid #ccc;
            }

            .friend {
                width: 100%;
                height: 100px;
                position: relative;
                display: flex;
            }

            .friend hr {
                position: absolute;
                left: 0;
                bottom: 0;
                width: 100%;
                margin: 0;
            }

            .friendImg {
                border-radius: 50%;
                padding: 2%;
            }

            .friendText {
                overflow: hidden;
                padding: 10px;
                word-break: break-all;
            }

            .friendText p {
                line-height: normal;
                margin-bottom: 0.5rem;
            }

            .friendName {
                font-weight: bold;
                line-height: 0%;
            }


            #messageDiv {
                width: 50%;
                opacity: 0;
                visibility: hidden;
                transition: visibility 0s, opacity 0.5s linear;
            }

            #msgInputDiv:click {
                visibility: visible;
                opacity: 1;
            }

            #msgInputDiv input {
                width: 80%;
                height: 40px;
            }

            #msgInputDiv button {
                margin-bottom: 10px;
                height: 40px;
                width: 15%;
            }

            #msgInputDiv img {
                width: 120px;
                margin: 0 10px 0 10px;
                border-radius: 50%;
            }

            #receiver {
                font-size: 24px;
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
                        <li><a href="/testBackstage">測驗</a></li>
                        <li><a href="frontPage">論壇</a></li>
                    </ul>
                </nav>
                <!-- Button Group -->
                <div class="amado-btn-group mt-30 mb-100" id="loginDiv">
                    <a href="/users/memberCenter" id="memberCenterOrBs" class="btn amado-btn mb-15">會員中心</a>


                </div>
                <!-- Cart Menu -->
                <div class="cart-fav-search mb-100">
                    <a href="/users/showMemberInfo" class="cart-nav"><img src="/amado-master/img/core-img/cart.png"
                            alt="">購物車
                    </a>
                    <a href="#" class="fav-nav"><img src="/amado-master/img/core-img/favorites.png" alt="">我的最愛</a>
                    <a href="#" class="search-nav"><img src="/amado-master/img/core-img/search.png" alt="">搜尋</a>
                </div>
                <!-- Social Button -->
                <div class="social-info d-flex justify-content-between">
                    <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a> <a href="#"><i
                            class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-facebook"
                            aria-hidden="true"></i></a> <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                </div>
            </header>
            <!-- Header Area End -->

            <div id="messageArea" class="cart-table-area section-padding-100">
                <div id="leftArea">
                    <div id="functionDiv">
                        <div id="addFriendDiv"><input type="text" placeholder="輸入用戶ID"><button class="btn">發送邀請</button>
                        </div>
                    </div>
                    <div id="friendListDiv">

                    </div>
                </div>
                <div id="messageDiv">
                    <!-- <input type="text" id="receiver" placeholder="Enter receiver's username" /> -->
                    <div id="msgInputDiv">

                    </div>
                    <div id="msgInputDiv">
                        <input type="text" id="message" placeholder="  輸入訊息" />
                        <button id="sendBtn" class="btn">發送</button>
                    </div>
                    <div id="chatBox">
                        <div class="messageContainer">
                            <p class="sender"></p>
                            <p id="startMsg">開始聊天</p>
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

        <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
        <!-- Popper js -->
        <script src="/amado-master/js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="/amado-master/js/bootstrap.min.js"></script>
        <!-- Plugins js -->
        <script src="/amado-master/js/plugins.js"></script>
        <!-- Active js -->
        <script src="/amado-master/js/active.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
        <script src="/amado-master/js/moment.js"></script>
        <script>
            $(function () {
                var username, receiver, message, stompClient;
                var count = 1;

                // receiver = $('#receiver').value();
                // console.log(receiver);
                var currentUser;
                //確認使用者是否登入並拿到當前使用者 
                $.ajax({
                    type: "get",
                    url: "/getCurrentUser.do",
                    success: function (member) {
                        currentUser = member;
                        initFriendInfo(member);
                    },
                    error: function (member) {
                        Swal.fire("response error");
                    }
                });

                function initFriendInfo(member) {
                    $.ajax({
                        type: "post",
                        url: "/findFriendship/" + member.memberId,
                        success: function (friendList) {
                            console.log(friendList)
                            friendList.forEach(friend => {
                                let lastMsg = '';
                                let lastRecord = getLastRecord(friend);
                                lastMsg = lastRecord ? lastRecord.message : '';

                                friendImgStr = getUserImgStr(friend);
                                friendStr = '<div class="friend" id="' + friend.memberId + '">'
                                    + friendImgStr
                                    + '<hr>'
                                    + '<div class="friendText">'
                                    + '<p class="friendName">' + friend.name + '</p>'
                                    + '<p>' + lastMsg + '</p>'
                                    + '</div>'
                                    + '</div>';
                                $('#friendListDiv').append(friendStr);
                            });
                        }
                    });
                }

                function getUserImgStr(user) {
                    return userImgStr = user.haveImg == true ?
                        '<img class="friendImg" src="' + '/ShowMemberImgServlet.do/' + user.memberId + '">'
                        : '<img class="friendImg" src="/images/member/member.png">';
                }

                function getLastRecord(friend) {
                    $.ajax({
                        async: false,
                        type: "post",
                        url: "/findLastMsg/" + friend.memberId,
                        success: function (result) {
                            lastRecord = result;
                        }
                    });
                    return lastRecord;
                }



                connect();
                function connect() {
                    var socket = new SockJS("/ws");
                    stompClient = Stomp.over(socket);
                    stompClient.connect({}, function (frame) {

                        // document.getElementById("sendBtn").disabled = false;
                        console.log("Connected: " + frame);

                        stompClient.subscribe('/users/' + currentUser.memberId + '/queue/private', function (payload) {
                            let chatMessage = JSON.parse(payload.body);
                            let sender = chatMessage.sender;
                            let message = chatMessage.message;
                            console.log("Received message from " + sender + ": " + message);
                            messageDivStr = '<div class="messageContainer">'
                                + '<div>'
                                + '<div class="messageContainer">'
                                + '<p class="sender">' + sender + '</p>'
                                + '<p class="message receivedMessage">' + message + '</p></div>'
                                + '<div><p class="sendTime">' + moment().format('MM/DD h:mm a') + '</p></div>'
                                + '</div></div>';
                            $("#chatBox").prepend(messageDivStr);
                        });

                    });
                };

                document.getElementById("sendBtn").addEventListener("click", sendMessage);
                document.getElementById("message").addEventListener('keypress', function (e) {
                    if (e.key === 'Enter') {
                        sendMessage();
                    }
                });

                function sendMessage() {
                    receiver = $('#receiver').text();
                    message = document.getElementById("message").value;
                    console.log(receiver)
                    console.log(message)
                    stompClient.send("/app/chat", {}, JSON.stringify({
                        sender: currentUser.memberId,
                        receiver: receiver,
                        message: message
                    }));
                    let sendTime = moment();
                    messageDiv = '<div class="messageContainer sendByUserMessage">'
                        + '<div>'
                        + '<div class="messageContainer">'
                        + '<p class="sender">' + currentUser.memberId + '</p>'
                        + '<p class="message">' + message + '</p>'
                        + '</div>'
                        + '<p class="sendTime">' + moment().format('MM/DD h:mm a') + '</p>'
                        + '</div>'
                        + '</div>';
                    $('#chatBox').prepend(messageDiv);
                    $('#startMsg').remove();
                    $('#message').val('');
                    console.log("Message sent to: ");
                }

                $('body').on('click', '.friend', function () {
                    let friendName = $(this).find('.friendName').text();
                    let friendImgSrc = $(this).children('.friendImg').attr('src');
                    console.log(friendImgSrc);
                    let htmlStr = '<img src="' + friendImgSrc + '">'
                        + '<span id="receiver">' + friendName + '</span>';
                    $('#msgInputDiv').html(htmlStr);
                    $('#messageDiv').css({ 'visibility': 'visible', 'opacity': '1' });
                    let friendId = $(this).attr('id');
                    let chatHistoryList = findChatRecord(friendId);
                    console.log(chatHistoryList)

                    chatHistoryList.forEach(ch => {
                        let senderName = ch.sender.name;
                        let message = ch.message;
                        if (senderName != currentUser.memberId) {
                            messageDivStr = '<div class="messageContainer">'
                                + '<div>'
                                + '<div class="messageContainer">'
                                + '<p class="sender ">' + senderName + '</p>'
                                + '<p class="message receivedMessage">' + message + '</p>'
                                + '</div><div>'
                                + '<p class="sendTime">' + moment(ch.timestamp).format('MM/DD h:mm a') + '</p>'
                                + '</div>'
                                + '</div></div>';
                        } else {
                            messageDivStr = '<div class="messageContainer sendByUserMessage">'
                                + '<div>'
                                + '<div class="messageContainer">'
                                + '<p class="sender">' + senderName + '</p>'
                                + '<p class="message">' + message + '</p>'
                                + '</div><div>'
                                + '<p class="sendTime">' + moment(ch.timestamp).format('MM/DD h:mm a') + '</p>'
                                + '</div>'
                                + '</div></div>';
                        }
                        $("#chatBox").prepend(messageDivStr);
                    });
                })

                function findChatRecord(friendId) {
                    let chatHistory;
                    $.ajax({
                        async: false,
                        type: "post",
                        url: "/findChatRecord/" + friendId,
                        success: function (ChatHistory) {
                            chatHistory = ChatHistory;
                        }
                    });
                    return chatHistory;
                }






            })
        </script>

    </body>

    </html>