<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我申請的接案</title>
</head>
<body>
	<table>
		<c:choose>
			<c:when test="${empty evaluation}">
				<h5>尚無委託案件</h5>
			</c:when>
			<c:otherwise>
				<thead class="theadColor">
					<tr>
						<th class="col-md-1">接案編號</th>
						<th class="col-md-2">委託人帳號</th>
						<th class="col-md-3">名稱</th>
						<th class="col-md-2">報價</th>
						<th class="col-md-2">狀態</th>
					</tr>
				</thead>
				<tbody class="tb">
					<c:forEach var="i" items="${evaluation}">
						<tr>
							<td><input type="text" name="pjID" id="pjID"
								value="${i.evID}" readonly></td>
							<td>${i.member.memberId}</td>
							<td id="pjName"><input type="text" name="pjName"
								value="${i.project.pjName}" readonly></td>
							<td id="pjPrice"><input type="text" name="pjPrice"
								id="pjPrice" value="${i.project.pjPrice}" readonly></td>
							<c:if test="${i.evDealPrice == 0}">
								<td>尚未付款</td>
								<td><a href="/projects/projectFront/${i.project.pjID}"><button
											value="查看詳情">查看詳情</button></a>
							</c:if>
							<c:if test="${i.evDealPrice != 0 && i.evCompletionDate == null}">
								<td>待完成</td>
								<td><a href="/projects/projectFront/${i.project.pjID}"><button
											value="查看詳情">查看詳情</button></a> <input type="button" id="complete"
									value="確定完成"></td>
							</c:if>

							<c:if test="${i.evCompletionDate != null && i.evClientEV == 0}">
								<td>已完成</td>
								<td><a href="/projects/projectFront/${i.project.pjID}"><button
											value="查看詳情">查看詳情</button></a>
							</c:if>
							<c:if test="${i.evCompletionDate != null && i.evClientEV !== 0}">
								<td>委託方已評價</td>
								<td><a href="/projects/projectFront/${i.project.pjID}"><button
											value="查看詳情">查看詳情</button></a>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
			</c:otherwise>
		</c:choose>
	</table>
	<script src="/amado-master/js/jquery/jquery-2.2.4.min.js"></script>

	<script type="text/javascript">
		$('.tb').on('click', '#complete', function() {
			var ev_ID = $(this).parent().siblings().eq(0).children().val();
			console.log(ev_ID);
			$.ajax({
				type : 'post',
				url : '/users/projects/projectDeal',
				data : {
					ev_ID : ev_ID
				},
				success : function() {
					alert('已完成案件')
				}
			});
		});
	</script>
</body>
</html>