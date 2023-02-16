<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
		</head>

		<body>
			<form action="<c:url value='/ShowTestServlet ' />" method="post" enctype="multipart/form-data">


				<h1>選擇測驗</h1>
				<select name="field">
					<option value="心理測驗">心理測驗</option>
					<option value="智力測驗">智力測驗</option>
					<option value="3">魷魚遊戲</option>
					<option value="4">星座測驗</option>
					<option value="5">小小試題</option>
				</select>

				<button type="submit">送出</button>
			</form>

			<div class="img-one">
				<a href="TestStartServlet.do" target="blank" rel="noreferrer noopenner" value="心理測驗">
					<img class="alignnone size-full wp-image-1303" src="/images/member/member.png" alt="" />
				</a>
			</div>

			<%-- <form action="<c:url value='/likeSearchServlet' />" method="post"> --%>
				<!-- 	<p>Search by field -->
				<!-- 		<input type = "search" name ="field" placeholder="關鍵字"> -->
				<!-- 		<input type="submit" value="查詢"> -->
				<!-- 		</p> -->
				<!-- 		</form> -->

		</body>

		</html>