<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order Test</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


</head>
<body>
				
<div>
<form action="/goecpay.controller" method="post">
	<table>
		<thead>
			<tr>
				<th>oderId</th>
				<th>memberId</th>
				<th>spaceNo</th>
				<th>spaceName</th>
				<th>contact person</th>
				<th>phone</th>
				<th>orderDate</th>
				<th>bookTime</th>
				<th>Price</th>
				<th>Payment</th>
				<th>Status</th>
				<th>Remarks</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${spaceOrder.orderId}</td>
				<td>${spaceOrder.memberId}</td>
				<td>${spaceOrder.spaceNo}</td>
				<td>${book.spaceName}</td>
				<td>${spaceOrder.cPerson}</td>
				<td>${spaceOrder.contact}</td>
				<td>${stringDate}"</td>
				<td><fmt:formatDate value="${spaceOrder.bookTime}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
				<td>${book.price}</td>
				<td>${spaceOrder.payment}</td>
				<td>${spaceOrder.status}</td>
				<td>${spaceOrder.remarks}</td>
				<td><input type="submit" value="前往付款"></td>
			</tr>
		</tbody>
	</table>
</form>
	<input id="playchu" type="date">

</div>
<script type="text/javascript">
	$(document).ready(function() {
	    var today = new Date().toISOString().split('T')[0]; // 获取今天的日期
	    $('#playchu').attr('min', today); // 设置 min 属性
	  });
</script>
</body>
</html>