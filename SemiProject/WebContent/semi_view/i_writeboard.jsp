<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>G클래스 3조</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
    $('#btn_list').on('click', function() {
        alert("작성을 취소하시겠습니까?")
        $('form').attr('action', 'iq_list.do');
        $('form').submit();
    });
});
</script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

<form name="frm" method="post" enctype="multipart/form-data" action="iq_write.do">

	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr><td align="center" style="border-bottom: 1px solid #ededee">
	<table width="1180" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr><td height="60">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody>
						<tr><td class="t5" style="padding-right: 10px;">이용문의</td></tr>
					</tbody>
				</table>
		</td></tr>
	</tbody>
	</table>
		</td></tr>
	<tr>
	<td align="center" style="padding: 20px 0 50px 0;">
	<table width="1200" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr><td align="center"><br>
			<div style="height: 14px; line-height: 1px; font-size: 1px;">&nbsp;</div>
<style type="text/css">
.write_head {
	height: 30px;
	text-align: center;
	color: #8492A0;
}

.field {
	border: 1px solid #ccc;
}

.realperson-regen {
	text-align: center;
}
</style> 
<script type="text/javascript">
  var char_min = parseInt(0); 
  var char_max = parseInt(0); 
</script>
<table width="99%" align="center" cellpadding="0"
	cellspacing="0">
	<tbody>
		<tr><td>
	<div style="border: 1px solid #ddd; height: 34px; background: url(../semi_view/images/title_bg.gif) repeat-x;">
	<div style="font-weigth: bold; font-size: 14px; margin: 7px 0 0 10px;">::글쓰기::</div></div>
	<div style="height: 3px; background: url(../semi_view/images/title_shadow.gif) repeat-x; line-height: 1px; font-size: 1px;"></div>
		<table width="100%" border="0" cellspacing="0"cellpadding="0">
		<colgroup width="90"></colgroup> <colgroup width=""></colgroup>
	<tbody>
	<tr><td colspan="2" style="background: url(../semi_view/images/title_bg.gif) repeat-x; height: 3px;"></td></tr>
	<tr><td class="write_head">이름</td>
	<td><input class="ed" maxlength="20" size="15"
		name="writer" itemname="이름" required=""
		style="background-position: right top; background-repeat: no-repeat;"></td></tr>
	<tr><td colspan="2" heigth="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">패스워드</td>
	<td><input class="ed" type="password" maxlength="20" size="15" name="password"
		itemname="패스워드" required=""
		style="background-position: right top; background-repeat: no-repeat;"></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">이메일</td>
	<td><input class="ed" maxlength="100" size="50" name="email" email="" itemname="이메일" value=""></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">홈페이지</td>
	<td><input class="ed" size="50" name="hpage" itemname="홈페이지" value=""></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">제 목</td>
	<td><input class="ed" size="50" name="title" itemname="제목" required="" value=""></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>

	<!-- 에디터 -->
	<tr><td colspan="2">
		<textarea id="summernote" name="content" ></textarea></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">링크 #1</td>
	<td><input type="text" class="ed" size="50" name="lk1" itemname="링크#1" value=""></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">링크 #2</td>
	<td><input type="text" class="ed" size="50"name="lk2" itemname="링크#2" value=""></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">
		<table cellpadding="0" cellspacing="0">
			<tbody>
				<tr><td class="write_head" style="padding-top: 30px; line-height: 20px;">&nbsp;파일첨부<br>
				</td>
			</tr>
		</tbody>
	</table>
</td>
<td style="padding: 5 0 5 0;">
<table id="variableFiles" cellpadding="0"cellspacing="0">
	<tbody>
		<tr>
			<td><input type="file" class="ed" name="upload" title="파일 용량 1,048,576 바이트 이하만 업로드 가능"></td>
		</tr>
	</tbody>
</table></td>
</tr>
<tr>
	<td colspan="2" height="1" bgcolor="#e7e7e7"></td>
</tr>
<tr>
	<td>&nbsp;&nbsp;</td>
</tr>

<table width="100%" border="0" cellspacing="0"
	cellpadding="0">
	<tbody>
		<tr>
			<td width="100%" align="center" valign="top"
				style="padding-top: 30px;"><input type="image"
								id="btn_submit" src="../semi_view/images/btn_write.gif"
								border="0" accesskey="s"> <img id="btn_list"
								src="../semi_view/images/btn_list.gif" border="0"></td>
						</tr>
					</tbody>
				</table>
			</td>
		</tr>
	</tbody>
</table>
<!--에디터-->
<link href="../semi_view/css/bootstrap.css" rel="stylesheet">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link href="../semi_view/dist/summernote.css" rel="stylesheet">
<script src="../semi_view/dist/summernote.js"></script> 
<script src="../semi_view/dist/lang/summernote-ko-KR.js"></script> 
<script type="text/javascript">
         <!--에디터-->
         $(document).ready(function() {
             $('#summernote').summernote({
                 lang: 'ko-KR',
                 height: 300,
                 minHeight: null,
                 maxHeight: null,
                 focus: true, 
                 placeholder: '내용을 입력해주세요.'
             });

             $("#numberReal").realperson({
                 length: 5,
                // char : $.realperson.alphanumeric,
                 dot: '@',
                 regenerate: '클릭시 변경'
             });
         });

         function auto() {
             var url = "iq_write.do";
             var opt = "width=300,height=500";
             var newWindow = Window.open(url, "noautowindow", opt);
             $("#noauto").attr("action", "iq_write.do");
             $("#noauto").attr("target", "noautowindow");
             $("#noauto").submit();
         }
         
</script> 

<br></td></tr></tbody>
</table></td></tr></tbody>
</table></form>
</body>
</html>
