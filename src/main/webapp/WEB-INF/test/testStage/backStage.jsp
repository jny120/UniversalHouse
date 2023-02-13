<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!DOCTYPE html>
  <html>

  <head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
  </head>

  <body>
   <h1>TEST (Admin)</h1>
   <form action="<c:url value='/PushCsv.do'/>" method="post" enctype="multipart/form-data">
    <p>
     <label for="pushCsv" class="t1">存入測驗:</label> <input type="file" name="file">
     <button type="submit">送出</button>
    </p>
   </form>

   <form action='/ImgMaintain.controller' method="post" enctype="multipart/form-data">
    <p>
     <button type="submit" value="送出">所有照片</button>
    </p>
   </form>

   <form action='/PushTestImage.do' method="post" enctype="multipart/form-data">
    <p>
     <label class="t1" for="imgNumber">圖片編號:</label> <input type="text" name="answer">
     <label class="t1" for="image">image:</label> <input type="file" accept="image/gif, image/jpeg, image/png"
      name="image">

     <input id="submit" type="submit" value="送出">
     <input type="reset" value="清除">
    </p>
   </form>

   <form id="form" enctype="multipart/form-data" method="POST">
    題庫<select name="field" id="sb">
     <option value="心理測驗">心理測驗</option>
     <option value="智力測驗">智力測驗</option>
     <option value="3">魷魚遊戲</option>
     <option value="4">星座測驗</option>
     <option value="5">小小試題</option>
    </select>

    <button type="button" value="送出" id="bt">送出</button>

    <table class="table table-responsive" id="testTable">

     <thead id="theads">
      <tr>
      </tr>
     </thead>
     <tbody id="tests">
     </tbody>
    </table>
   </form>


   <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
   <script>
    $(function () {



     const testCenterBean = {
      testPk: "",
      testId: "",
      examinationQuestion: "",
      field: "",
      options: "",
      options2: "",
      options3: "",
      options4: "",
     }


     //delete
     $('tbody').on('click', '.delete', function () {
      let testId = $(this).parent().siblings().eq(0).text();
      $.ajax({
       type: "post",
       url: "deleteTest.do",
       data: {
        testId: testId,
       },
       async: false,
       success: function () {
        Swal.fire("response success");
        // $('html').load(location.href);
       },
       error: function () {
        Swal.fire("response error")
       }
      })
      $('#theads').empty();
      $('#tests').empty();

      let testStr = '<th style="flex: auto;" class="testPk">testPk</th><th style="flex: auto;" class="testId">testId</th><th style="flex: auto;" class="examinationQuestion">examinationQuestion</th><th style="flex: auto;" class="field">field</th><th style="flex: auto;" class="options">options</th><th style="flex: auto;" class="options2">options2</th><th style="flex: auto;" class="options3">options3</th><th style=" flex: auto;"class="options4">options4</th>';

      if ($('.testPk').length === 0) { $('#testTable thead').append(testStr); }
      else { null }

      data = $('#sb').val();
      // console.log(data);
      var tests;
      // console.log('test')
      $.ajax({
       type: "POST",
       url: "ShowTestServlet.controller",
       data: { field: data },
       success: function (result) {
        // attr('123')
        // console.log(result)
        $.each(result, function (i, test) {
         $('#testTable tbody').append('<tr id= tr' + i + '>');
         console.log(test.testPk)
         testsStr =
          '<td style="vertical - align: middle; flex:auto;" class="testPk"><span>' + test.testPk + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="testId"><span>' + test.testId + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="examinationQuestion"><span>' + test.examinationQuestion + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="field"><span>' + test.field + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options"><span>' + test.options + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options2"><span>' + test.options2 + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options3"><span>' + test.options3 + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options4"><span>' + test.options4 + '</span></td>' +

          '<td style="flex:auto"><input type="button" class="btn toModifyMode"  value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

         $('#testTable tbody tr').eq(i).append(testsStr);

        })


       },
       error: function () {
        attr('321')
       }

      })

     })

     var testCenterBean1 = Object.create(testCenterBean);
     //修改ajax
     $('tbody').on('click', '.toModifyMode', function () {
      //將testCenter資訊先存起來，修改完後交回
      $('.toModifyMode').removeClass('toModifyMode').addClass('modifying');
      testCenterBean1.testPk = $(this).parent().siblings().eq(0).text();
      testCenterBean1.testId = $(this).parent().siblings().eq(1).text();
      testCenterBean1.examinationQuestion = $(this).parent().siblings().eq(2).text();
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
      $(this).parent().siblings().eq(2).html('<input type="text" name="examinationQuestion" id="examinationQuestion">');
      $('#examinationQuestion').attr("value", testCenterBean1.examinationQuestion);

      $(this).parent().siblings().eq(3).html('<input type="text" name="field" id="field" disabled="disabled">');
      $('#field').attr("value", testCenterBean1.field);

      $(this).parent().siblings().eq(4).html('<input type="text" name="options" id="options">');
      $('#options').attr("value", testCenterBean1.options);

      $(this).parent().siblings().eq(5).html('<input type="text" name="options2" id="options2">');
      $('#options2').attr("value", testCenterBean1.options2);

      $(this).parent().siblings().eq(6).html('<input type="text" name="options3" id="options3">');
      $('#options3').attr("value", testCenterBean1.options3);

      $(this).parent().siblings().eq(7).html('<input type="text" name="options4" id="options4">');
      $('#options4').attr("value", testCenterBean1.options4);

      $(this).parent().html('<input type="button" id="modifyConfirm" value="確認修改" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button"  value="取消" id="modifyCancle" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;">');
     })

     $('tbody').on('click', '#modifyCancle', function () {
      $('.modifying').removeClass('modifying').addClass('toModifyMode');
      $(this).parent().siblings().eq(0).text(testCenterBean1.testPk);
      $(this).parent().siblings().eq(1).text(testCenterBean1.testId);
      $(this).parent().siblings().eq(2).text(testCenterBean1.examinationQuestion);
      $(this).parent().siblings().eq(3).text(testCenterBean1.field);
      $(this).parent().siblings().eq(4).text(testCenterBean1.options);
      $(this).parent().siblings().eq(5).text(testCenterBean1.options2);
      $(this).parent().siblings().eq(6).text(testCenterBean1.options3);
      $(this).parent().siblings().eq(7).text(testCenterBean1.options4);
      $(this).parent().html('<input type="button" class="toModifyMode" value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;">');
     })

     //創建
     $('#bt').on('click', function () {
      $('#theads').empty();
      $('#tests').empty();


      let testStr = '<th style="flex: auto;" class="testPk">testPk</th><th style="flex: auto;" class="testId">testId</th><th style="flex: auto;" class="examinationQuestion">examinationQuestion</th><th style="flex: auto;" class="field">field</th><th style="flex: auto;" class="options">options</th><th style="flex: auto;" class="options2">options2</th><th style="flex: auto;" class="options3">options3</th><th style=" flex: auto;"class="options4">options4</th>';

      if ($('.testPk').length === 0) { $('#testTable thead').append(testStr); }
      else { null }

      data = $('#sb').val();
      // console.log(data);
      var tests;
      // console.log('test')
      $.ajax({
       type: "POST",
       url: "ShowTestServlet.controller",
       data: { field: data },
       success: function (result) {
        // attr('123')
        // console.log(result)
        $.each(result, function (i, test) {
         $('#testTable tbody').append('<tr id= tr' + i + '>');
         console.log(test.testPk)
         testsStr =
          '<td style="vertical - align: middle; flex:auto;" class="testPk"><span>' + test.testPk + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="testId"><span>' + test.testId + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="examinationQuestion"><span>' + test.examinationQuestion + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="field"><span>' + test.field + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options"><span>' + test.options + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options2"><span>' + test.options2 + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options3"><span>' + test.options3 + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options4"><span>' + test.options4 + '</span></td>' +

          '<td style="flex:auto"><input type="button" class="btn toModifyMode"  value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

         $('#testTable tbody tr').eq(i).append(testsStr);

        })


       },
       error: function () {
        attr('321')
       }

      })
     })
     //修改ajax      // alert("修改成功，請重新整理");
     $('tbody').on('click', '#modifyConfirm', function () {

      var form = $('#form')[0];
      var formData = new FormData(form);
      console.log(form)
      $.ajax({
       type: "POST",
       url: 'UpdataTest.controller',

       data: formData,
       contentType: false,
       cache: false,
       processData: false,
       async: false,
       success: function () {
        alert("response success");

       }
      })
      // $('#theads').empty();
      $('#tests').empty();

      data = $('#sb').val();
      // console.log(data);
      var tests;
      // console.log('test')
      $.ajax({
       type: "POST",
       url: "ShowTestServlet.controller",
       data: { field: data },
       success: function (result) {
        // attr('123')
        // console.log(result)
        $.each(result, function (i, test) {
         $('#testTable tbody').append('<tr id= tr' + i + '>');
         console.log(test.testPk)
         testsStr =
          '<td style="vertical - align: middle; flex:auto;" class="testPk"><span>' + test.testPk + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="testId"><span>' + test.testId + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="examinationQuestion"><span>' + test.examinationQuestion + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="field"><span>' + test.field + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options"><span>' + test.options + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options2"><span>' + test.options2 + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options3"><span>' + test.options3 + '</span></td>' +

          '<td style="vertical - align: middle; flex:auto;" class="options4"><span>' + test.options4 + '</span></td>' +

          '<td style="flex:auto"><input type="button" class="btn toModifyMode"  value="modify" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"><input type="button" class="btn delete" value="delete" style="font-size:10px; margin: 3px; width: 100%; height: 40px; white-space: normal;"></td>';

         $('#testTable tbody tr').eq(i).append(testsStr);

        })


       },
       error: function () {
        attr('321')
       }

      })
     })

    });
   </script>

  </body>

  </html>