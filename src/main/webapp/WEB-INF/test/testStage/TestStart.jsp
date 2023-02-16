<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">
				<title>Insert title here</title>
				<style>
					table {
						border: 1px solid black;
						border-collapse: collapse;
						width: 100%;
					}

					p,
					label {
						font: 1rem 'Fira Sans', sans-serif;
					}
				</style>
			</head>

			<body>
				<div class="container">
					<form action="TestResultServlet" method="post" enctype="multipart/form-data" id="form">

						姓名:<input type="text" name="name" class="name" required>
						<c:forEach var="testBean" items="${testCenterBean}" varStatus="vs">
							<fieldset id="tests" name="test" class="test">
								<legend>${testBean.examinationQuestion}</legend>


								<div>
									<input type="radio" name="${vs.count}" value="${testBean.options3}" class="radio1"
										required checked>
									<label for="huey">${testBean.options}</label>
								</div>

								<div>
									<input type="radio" name="${vs.count}" value="${testBean.options4}" class="radio2"
										required>
									<label for="dewey">${testBean.options2}</label>
								</div>



							</fieldset>
						</c:forEach>
						<input type="hidden" id="total" name="total">
						<input type="submit" value="提交" class="bun">

					</form>
				</div>
				<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
				<script>


					$('.bun').on('click', function () {
						var isel = 0;
						for (var i = 0; i <= $('#form').length; i++) {
							console.log("123")
							if ($('.radio1')[i].checked || $('.radio2')[i].checked && $('.name') != null) { isel += 1; }
							console.log(isel)
						}
						if (isel < 1) {
							alert('您需要完成以下選項，才可提交問卷。.')
							return false;
						}


						var sum1 = 0;
						var sum2 = 0;
						var total = 0;
						console.log("test27")
						console.log($('.test').length)
						for (var j = 1; j <= $('.test').length; j++) {
							console.log(j)

							if ($('.radio1').eq(j).is(":checked")) {
								console.log($('.radio1').eq(j))
								sum1 = sum1 + parseInt($('.radio1').eq(j).val());
							}
							if ($('.radio2').eq(j).is(":checked")) {
								console.log($('.radio2').eq(j))
								sum2 = sum2 + parseInt($('.radio2').eq(j).val());
							}

						}
						console.log(sum1 + "  " + sum2)
						var name = $(".name").val();
						console.log(name);
						total = sum1 + sum2;
						console.log(total);

						$("#total").val(total);



						// 						$.ajax({
						// 							type: "POST",
						// 							url: "<c:url value='/TestResultServlet'/>",

						// 							data: {
						// 								total: total,
						// 								name: name,
						// 							},
						// 							success: function (response) {
						// 								alert("response success");

						// 							},
						// 							error: function (thrownError) {
						// 								alert("response error")
						// 							}
						// 						});

					})



				</script>
			</body>

			</html>