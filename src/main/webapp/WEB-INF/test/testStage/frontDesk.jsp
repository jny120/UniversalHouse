<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<form  action="TestStartServlet.do" enctype="multipart/form-data" method="POST">
			<table border='1'>
				<thead>
					<tr>
						<th>測驗題目</th>
						<th>測驗內容</th>
						<th>examinationQuestion</th>

					</tr>
				</thead>
				
				<tbody class="tbody">			
						<tr>
							<td><input type="submit" value="心理測驗" name="field" class=""></td>
							<td>ssssssssssssssssssssss</td>
							<td>ssssssssssssssssssssss</td>

						</tr>

				</tbody>
			</table>
		</form>
	</div>
	<a href="<c:url value='/' />">回首頁</a>
</body>
</html>