<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <title>Verification Success</title>
    <style>
      .success-message {
        text-align: center;
        margin-top: 50px;
      }

      h1 {
        font-size: 26px;
      }

      p {
        font-size: 22px;
      }
    </style>
  </head>

  <body>
    <div class="success-message">
      <h1>驗證成功</h1>
      <p>將在<span id="countdown">5</span> 秒內回到首頁...</p>
    </div>

    <script>
      var countdown = 5;
      setInterval(function () {
        if (countdown <= 0) {
          window.location.href = "/";
        } else {
          document.getElementById("countdown").innerHTML = countdown;
          countdown--;
        }
      }, 1000);
    </script>
  </body>

  </html>