<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <style>
                .t1 {
                    width: 100px;
                    float: left;
                    text-align: right;
                    margin-right: 10px;
                }
            </style>
        </head>

        <body>
            <div class="container">
                <form id="form" enctype="multipart/form-data" method="POST">
                    <table border='1'>
                        <thead>
                            <tr>
                                <th>testPk</th>
                                <th>testId</th>
                                <th>examinationquestion</th>
                                <th>field</th>
                                <th>options</th>
                                <th>options2</th>
                                <th>options3</th>
                                <th>options4</th>
                            </tr>
                        </thead>

                        <tbody class="tbody">
                            <c:forEach var="testBean" items="${testCenterBean}">

                                <tr>
                                    <td>${testBean.testPk}</td>
                                    <td>${testBean.testId}</td>
                                    <td>${testBean.examinationquestion}</td>
                                    <td>${testBean.field}</td>
                                    <td>${testBean.options}</td>
                                    <td>${testBean.options2}</td>
                                    <td>${testBean.options3}</td>
                                    <td>${testBean.options4}</td>
                                    <td><input type="button" value="修改" class="btn toModifyMode">
                                        <input type="button" value="刪除" class="delete">
                                    </td>
                                </tr>

                            </c:forEach>

                        </tbody>
                    </table>
                </form>
            </div>
            <a href="<c:url value='/' />">回首頁</a>
            <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
            <script>
                $(function () {





                    const testCenterBean = {
                        testPk: "",
                        testId: "",
                        examinationquestion: "",
                        field: "",
                        options: "",
                        options2: "",
                        options3: "",
                        options4: "",
                    };

                    $('tbody').on('click', '.delete', function () {
                        let testId = $(this).parent().siblings().eq(0).text();
                        $.ajax({
                            type: "post",
                            url: '<c:url value=' / deleteTest.do'/>',
                            data: {
                                testId: testId,
                            },
                            success: function () {
                                Swal.fire("response success");
                                $('html').load(location.href);
                            },
                            error: function (thrownError) {
                                Swal.fire("response error")
                            }
                        });
                    })



                    var testCenterBean1 = Object.create(testCenterBean);
                    $('tbody').on('click', '.toModifyMode', function () {
                        //將testCenter資訊先存起來，修改完後交回
                        $('.toModifyMode').removeClass('toModifyMode').addClass('modifying');
                        testCenterBean1.testPk = $(this).parent().siblings().eq(0).text();
                        testCenterBean1.testId = $(this).parent().siblings().eq(1).text();
                        testCenterBean1.examinationquestion = $(this).parent().siblings().eq(2).text();
                        testCenterBean1.field = $(this).parent().siblings().eq(3).text();
                        testCenterBean1.options = $(this).parent().siblings().eq(4).text();
                        testCenterBean1.options2 = $(this).parent().siblings().eq(5).text();
                        testCenterBean1.options3 = $(this).parent().siblings().eq(6).text();
                        testCenterBean1.options4 = $(this).parent().siblings().eq(7).text();

                        //將表格改成 <input>
                        $(this).parent().siblings().eq(0).html('<input type="text" name="testPk" id="testPk" readonly="readonly">');
                        $('#testPk').attr("value", testCenterBean1.testPk);
                        $(this).parent().siblings().eq(1).html('<input type="text" name="testId" id="testId" readonly="readonly">');
                        $('#testId').attr("value", testCenterBean1.testId);
                        $(this).parent().siblings().eq(2).html('<input type="text" name="examinationquestion" id="examinationquestion">');
                        $('#examinationquestion').attr("value", testCenterBean1.examinationquestion);

                        $(this).parent().siblings().eq(3).html('<input type="text" name="field" id="field">');
                        $('#field').attr("value", testCenterBean1.field);

                        $(this).parent().siblings().eq(4).html('<input type="text" name="options" id="options">');
                        $('#options').attr("value", testCenterBean1.options);

                        $(this).parent().siblings().eq(5).html('<input type="text" name="options2" id="options2">');
                        $('#options2').attr("value", testCenterBean1.options2);

                        $(this).parent().siblings().eq(6).html('<input type="text" name="options3" id="options3">');
                        $('#options3').attr("value", testCenterBean1.options3);

                        $(this).parent().siblings().eq(7).html('<input type="text" name="options4" id="options4">');
                        $('#options4').attr("value", testCenterBean1.options4);

                        $(this).parent().html('<input type="submit" value="確認修改" id="modifyConfirm"><input type="button" value="取消" id="modifyCancle">');
                    })
                    $('tbody').on('click', '#modifyCancle', function () {
                        $('.modifying').removeClass('modifying').addClass('toModifyMode');
                        $(this).parent().siblings().eq(0).text(testCenterBean1.testPk);
                        $(this).parent().siblings().eq(1).text(testCenterBean1.testId);
                        $(this).parent().siblings().eq(2).text(testCenterBean1.examinationquestion);
                        $(this).parent().siblings().eq(3).text(testCenterBean1.field);
                        $(this).parent().siblings().eq(4).text(testCenterBean1.options);
                        $(this).parent().siblings().eq(5).text(testCenterBean1.options2);
                        $(this).parent().siblings().eq(6).text(testCenterBean1.options3);
                        $(this).parent().siblings().eq(7).text(testCenterBean1.options4);
                        $(this).parent().html('<input type="button" value="修改" class="toModifyMode"> <input type="submit" value="刪除" class="delete">');
                    })

                    //修改ajax
                    $('tbody').on('click', '#modifyConfirm', function () {

                        var form = $('#form')[0];
                        var formData = new FormData(form);

                        // let testPk = $(this).parent().siblings().eq(0).text();

                        // formData.append('testPk', testPk);

                        $.ajax({
                            type: "POST",
                            url: 'UpdataTest.controller',
                            // enctype: "multipart/form-data",

                            data: formData,
                            contentType: false,
                            cache: true,
                            processData: false,
                            success: function () {
                                alert("response success");
                                // $('html').load(location.href);
                                //存回class
                                // $('.modifying').removeClass('modifying').addClass('toModifyMode');
                            }
                        });
                    })

                })
            </script>
        </body>

        </html>