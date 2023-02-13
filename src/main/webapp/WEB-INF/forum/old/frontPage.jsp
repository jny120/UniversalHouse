<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>論壇</title>

<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>

</head>

<body>

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>
	<script>

	$(document).ready( function () {
	    $('#myTable').DataTable(); 
	} );
	</script>
	
	<h1>歡迎來到論壇</h1>


	<form action="createArticle">
		<input type="submit" value="新增文章" />
	</form>


	<table id="myTable">
		<thead>
			<tr>
				<th><label>領域</label></th>
				<th><label>標題</label></th>
				<th><label>觀看次數</label></th>
				<th><label>更新時間</label></th>
				<th><label>觀看</label></th>
			</tr>
		</thead>
		
		<tbody id="articleList">
			<c:forEach var="article" varStatus="stat" items="${articles}">
				<tr>
					<td>${article.topicName}</td>
					<td>${article.title}</td>
					<td>${article.views}</td>
					<td>${article.updateTime}</td>
	
					<td>
						<form method="POST" action="showArticle">
							<span><input type="hidden" id="articleId" name="articleId" value="${article.articleId}"></span>
							<span><input type="submit" id="view" value="觀看" /></span>
						</form>
					</td>
				</tr>
	
			</c:forEach>
		</tbody>
		
	</table>
	
<!-- 	<a href="toMyRecord">用戶管理介面</a> -->
	<a href="/">回登入頁面</a>
	<a href="backstage">前往後台</a>
	
	
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script type="text/javascript">
	$('#articleList').on('click','#view',function() {


		$.ajax({
			type : "post",
			url : "updateViews",
			data : {
				articleId : $(this).parent('span').siblings().eq(0).children().val(),
			},

			success : function() {
				console.log('觀看次數+1');

			},

			error : function() {
				console.log('觀看次數新增失敗');
			},
		});

	})
	</script>
</body>

</html>