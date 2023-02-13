<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!DOCTYPE html>
  <html>

  <head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
  </head>

  <body>
   <form action="<c:url value='/PushCsv.do'/>" method="post" enctype="multipart/form-data">

    <p>
     <label for="pushCsv" class="t1">存入測驗:</label> <input type="file" name="file">
     <button type="submit">送出</button>
    </p>

   </form>

   <form action="<c:url value='/PushTestImage.do' />" method="post" enctype="multipart/form-data">
    <p>
     <label class="t1" for="imgNumber">圖片編號:</label> <input type="text" name="answer">
     <label class="t1" for="image">image:</label> <input type="file" accept="image/gif, image/jpeg, image/png"
      name="image">

    </p>

    <input id="submit" type="submit" value="送出">
    <input type="reset" value="清除">

   </form>
  </body>

  </html>
  <!-- 	multiple 多選 -->
  <!-- 			<input id="submit" type="submit" value="修改" formaction="/regist/a.do"> -->
  <!-- 			<input id="submit" type="submit" value="刪除" formaction="/regist/a.do"> -->