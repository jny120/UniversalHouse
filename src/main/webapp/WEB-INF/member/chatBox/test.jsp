<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>One-to-One WebSocket Messaging</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
        <style>
            #chatBox {
                width: 500px;
                height: 400px;
                overflow-y: scroll;
                padding: 10px;
                border: 1px solid #ccc;
            }

            .messageContainer {
                display: flex;
                justify-content: flex-start;
                margin-bottom: 10px;
            }

            .sender {
                font-weight: bold;
                margin-right: 10px;
            }

            .message {
                background-color: #f2f2f2;
                padding: 10px;
                border-radius: 5px;
            }
        </style>
    </head>

    <body>
        <h1>One-to-One WebSocket Messaging</h1>
        <!-- <div>
            <input type="text" id="username" placeholder="Enter username" />
            <button id="connectBtn">Connect</button>
            <button id="disconnectBtn" disabled>Disconnect</button>
        </div> -->
        <div>
            <input type="text" id="receiver" placeholder="Enter receiver's username" />
            <textarea id="message" placeholder="Enter message"></textarea>
            <button id="sendBtn">Send</button>
        </div>

        <div id="chatBox">
            <div class="messageContainer">
                <p class="sender">User 1:</p>
                <p class="message">Hello, how are you?</p>
            </div>
            <div class="messageContainer">
                <p class="sender">User 2:</p>
                <p class="message">I'm good, thanks! How about you?</p>
            </div>
            <div class="messageContainer">
                <p class="sender">User 1:</p>
                <p class="message">I'm doing well too. Let's chat!</p>
            </div>
        </div>


        <script>
            $(function () {
                var username, receiver, message, stompClient;
                var count = 1;

                receiver = 'bbb'
                var currentUser;
                //確認使用者是否登入並拿到當前使用者 
                $.ajax({
                    type: "get",
                    url: "/getCurrentUser.do",
                    success: function (member) {
                        currentUser = member;
                    },
                    error: function (member) {
                        Swal.fire("response error");
                    }
                });

                connect();
                function connect() {
                    var socket = new SockJS("/ws");
                    stompClient = Stomp.over(socket);
                    stompClient.connect({}, function (frame) {

                        document.getElementById("sendBtn").disabled = false;
                        console.log("Connected: " + frame);

                        stompClient.subscribe('/users/' + currentUser.memberId + '/queue/private', function (payload) {
                            var chatMessage = JSON.parse(payload.body);
                            var sender = chatMessage.sender;
                            var message = chatMessage.message;
                            console.log("Received message from " + sender + ": " + message);
                            messageDivStr =
                                '<div class="messageContainer"><p class="sender">' + sender + '</p>'
                                + '<p class="message">' + message + '</p></div>';
                            $("#chatBox").prepend(messageDivStr);
                        });
                    });
                };


                document.getElementById("sendBtn").addEventListener("click", function () {
                    receiver = document.getElementById("receiver").value;
                    message = document.getElementById("message").value;
                    stompClient.send("/app/chat/" + receiver, {}, JSON.stringify({
                        sender: currentUser.memberId,
                        receiver: receiver,
                        message: message
                    }));
                    messageDiv = '<div class="messageContainer"><p class="sender">' + currentUser.memberId + '</p><p class="message">' + message + '</p></div >';
                    $('#chatBox').prepend(messageDiv);
                    console.log("Message sent to: ");
                });



            })

        </script>
    </body>

    </html>