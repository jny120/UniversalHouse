<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的專區</title>
</head>
<body>

	<form method="post" action="searchRecord">
		<input type="hidden" id="memberPk" name="memberPk">
		<input type="submit" value="我的紀錄">
	</form>	
	
	<a href="frontPage">回首頁</a>
	
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
window.onload = function() {
	$.ajax({
		type : "get",
		url : "/getCurrentUser.do",
		success : function(member) {
			$('#memberPk').attr('value',member.memberPk);
		},

		error : function() {
			Swal.fire("無法取得會員資料");
		}
	});
}
</script>
</html>