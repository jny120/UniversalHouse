<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>One-to-One WebSocket Messaging</title>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    </head>

    <body>
        <h1>One-to-One WebSocket Messaging</h1>
        <div>
            <input type="text" id="username" placeholder="Enter username" />
            <button id="connectBtn">Connect</button>
            <button id="disconnectBtn" disabled>Disconnect</button>
        </div>
        <div>
            <input type="text" id="receiver" placeholder="Enter receiver's username" />
            <textarea id="message" placeholder="Enter message"></textarea>
            <button id="sendBtn" disabled>Send</button>
        </div>
        <div id="chatBox">


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

                document.getElementById("connectBtn").addEventListener("click", function () {
                    username = document.getElementById("username").value;
                    var socket = new SockJS("/ws");
                    stompClient = Stomp.over(socket);
                    stompClient.connect({}, function (frame) {
                        document.getElementById("connectBtn").disabled = true;
                        document.getElementById("disconnectBtn").disabled = false;
                        document.getElementById("sendBtn").disabled = false;
                        console.log("Connected: " + frame);

                        stompClient.subscribe('/users/' + username + '/queue/private', function (payload) {
                            var chatMessage = JSON.parse(payload.body);
                            var sender = chatMessage.sender;
                            var message = chatMessage.message;
                            console.log("Received message from " + sender + ": " + message);
                            messageDivStr = "<div class='from" + sender + "'><p>" + sender + "</p><p>" + message + "</p></div>";

                            $("#chatBox").prepend(messageDivStr);
                            count++;
                        });
                    });
                });

                document.getElementById("disconnectBtn").addEventListener("click", function () {
                    stompClient.disconnect();
                    document.getElementById("connectBtn").disabled = false;
                    document.getElementById("disconnectBtn").disabled = true;
                    document.getElementById("sendBtn").disabled = true;
                    console.log("Disconnected");
                });

                document.getElementById("sendBtn").addEventListener("click", function () {
                    sender = document.getElementById("username").value;
                    receiver = document.getElementById("receiver").value;
                    message = document.getElementById("message").value;
                    stompClient.send("/app/chat/" + receiver, {}, JSON.stringify({
                        sender: username,
                        receiver: receiver,
                        message: message
                    }));
                    // console.log("Message sent to: " + receiver);
                });



            })

        </script>
    </body>

    </html>