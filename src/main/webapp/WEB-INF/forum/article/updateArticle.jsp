<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新</title>
</head>
<body>
	<form method="POST" action="updateArticle" enctype="multipart/form-data">
		<input type="hidden" id="memberPk" name="memberPk" />
		<input type="hidden" name="articleId" value="${article.articleId}" />

		<table>

			<tr>	
				<td><label>文章狀態</label></td>
				<td>
					<select name="status">
						<option value="public" selected>公開</option>
						<option value="hidden">隱藏</option>
					</select>
				</td>
			<tr>


			<tr>
				<td><label>文章主題</label><div>${errorTitleDup}</div></td>
				<td><input type="text" name="title" value="${article.title}" required /></td>
			</tr>

			<tr>
				<td><label>內容</label></td>
				<td><textarea name="content" required>${article.content}</textarea></td>
			</tr>

			<tr>
				<td><label>領域</label></td>
				<td>
					<select id="topicName" name="topicName">
						<option>文書</option>
						<option>生活</option>
						<option>設計</option>
						<option>資訊</option>
						<option>影視</option>
						<option>顧問</option>
					</select>
				</td>
			</tr>

			<tr>
				<td><label>圖片：</label></td>
				
				<td>
     				 <c:if test="${empty images}">
     				 	<input name="images" type="file" accept="image/gif, image/jpeg, image/png" multiple/>
     				 </c:if>
					
					<c:forEach var="image" varStatus="stat" items="${images}">
						<label for="input"><img height="50" width="50" src="<c:url value='/getArticleImage?imageId=${image.imageId} ' />"></label>
						<input hidden="hidden" id="input" name="images" type="file" accept="image/gif, image/jpeg, image/png" />
					</c:forEach>
				</td>
			</tr>

			<tr>
				<td>
					<input type="submit" value="修改" />
					<input type="reset" value="還原" />
				</td>
			</tr>
		</table>
		
		<input type="submit" value="我的紀錄" formaction="searchRecord" />
	</form>

	<a href="frontPage">回首頁</a>
	
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
window.onload = function() {
	$.ajax({
		type : 'post',
		url : 'getOldArticle',
		data:{
			articleId: ${articleId},
		},
		
		success : function(article) {
			$('#memberPk').attr('value',article.thumbUp);
			$('#articleId').attr('value',article.articleId);
			$('#thumbUp').attr('value',article.thumbUp);
			$('#unlike').attr('value',article.unlike);
			$('#title').attr('value',article.title);
			$('#content').text(article.content);

			for(var i=0;i<4;i++){
				var t = $('#status').children('option').eq(i);
				
				if(article.status === t.val()){
					
					t.empty();
					t.attr('selected','selected');
					t.text(article.status);
				}
					
			}
			
			for(var i=0;i<6;i++){
				var t = $('#topicName').children('option').eq(i);
				if(article.topicName === t.val()){
					
					t.empty();
					t.attr('selected','selected');
					t.text(article.topicName);
				}

			}
			
		},

		error : function() {
			console.log('取得資料發生錯誤');
		}
		
	});
}
</script>
</html>