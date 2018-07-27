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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<script type="text/javascript">
$(document).ready(function(){
	$('.frm').on('submit',function(){
		$('[name=content]').val($('[name=content]').val().
				replace(/\n/gi,'<br/>')); 
	});
	$('.update').on('click',function(){
		if(confirm("정말로 수정하시겠습니까?")==true){
		$('.frm').attr('action','iq_updatePro.do'); 
		$('.frm').submit(); 
		}else { 
			return false; 
		} 
	}); 
	$('.reset').on('click',function(){
		if(confirm("수정하지 않으시겠습니까?")==true){ 
		$('.frm').attr('action','iq_view.do?num=${dto.num}'); 
		$('.frm').submit(); 
		} else { 
			return false; 
		} 
	}); 
	
	
});
</script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

<% 
	pageContext.setAttribute("cr", "\r"); //space 
	pageContext.setAttribute("cn", "\n"); //Enter
	pageContext.setAttribute("crcn","\r\n"); //Space, Enter 
	pageContext.setAttribute("br", "<br/>");  //br태그 
%>

<form name="frm" method="post" enctype="multipart/form-data"  class="frm">
	<input type="hidden" name="pageNum" value="${param.pageNum}" />
	<input type="hidden" name="num" value="${dto.num}" />
	    
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
		name="writer" itemname="이름" required="" value="${dto.writer}"
		style="background-position: right top; background-repeat: no-repeat;"></td></tr>
	<tr><td colspan="2" heigth="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">패스워드</td>
	<td><input class="ed" type="password" maxlength="20" size="15" name="password"
		itemname="패스워드" required="" value="${dto.password}"
		style="background-position: right top; background-repeat: no-repeat;"></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">이메일</td>
	<td><input class="ed" maxlength="100" size="50" name="email" email="" itemname="이메일" value="${dto.email}"></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">홈페이지</td>
	<td><input class="ed" size="50" name="hpage" itemname="홈페이지" value="${dto.hpage}"></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">제 목</td>
	<td><input class="ed" size="50" name="title" itemname="제목" required="" value="${dto.title}"></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>

	<!-- 에디터 -->
	<tr><td colspan="2">
	<c:set var="test" value="${fn:replace(dto.content,br,crcn)}" /> 
		<textarea id="summernote" name="content"> 
	<c:out value="${test}" /></textarea>
	</td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">링크 #1</td>
	<td><input type="text" class="ed" size="50" name="wr_link1" itemname="링크#1" value="${dto.lk1}"></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">링크 #2</td>
	<td><input type="text" class="ed" size="50"name="wr_link2" itemname="링크#2" value="${dto.lk2}"></td></tr>
	<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
	<tr><td class="write_head">
		<table cellpadding="0" cellspacing="0">
			<tbody>
				<tr><td class="write_head" style="padding-top: 30px; line-height: 20px;">&nbsp;파일첨부<br>
				<span onclick="add_file();" style="cursor: pointer;">
				 <img src="../semi_view/images/btn_file_add.gif"></span> 
				 <span onclick="del_file();" style="cursor: pointer;">
					<img src="../semi_view/images/btn_file_minus.gif">
				</span>
				</td>
			</tr>
		</tbody>
	</table>
</td>
<td style="padding: 5 0 5 0;">
<table id="variableFiles" cellpadding="0"
	cellspacing="0">
	<tbody>
		<tr>
			<td><input type="file" class="ed"
				name="bf_file[]"
				title="파일 용량 1,048,576 바이트 이하만 업로드 가능"></td>
		</tr>
	</tbody>
</table> 
<script type="text/javascript">
  var flen = 0;

  function add_file(delete_code) {
      var upload_count = 1;
      if (upload_count && flen >= upload_count) {
          alert("이 게시판은 최대 " + (upload_count + 1) + " 개의 파일만 업로드 가능합니다.");
          return;
      }
      var objTbl;
      var objRow;
      var objCell;
      if (document.getElementById)
          objTbl = document.getElementById("variableFiles");
      else {
          objTbl = document.all["variableFiles"];
          objRow = objTbl.insertRow(objTbl.rows.length);
          objCell = objRow.insertCell(0);
          objCell.innerHTML = "<input type='file' class='ed'" +
              "name='bf_file[]' title='파일 용량 1,048,576 바이트 이하만 업로드 가능'>";
      }
      if (delete_code)
          objCell.innerHTML += delete_code;
      else {
          flen++;
      }
      add_file('');
  	}
     function del_file() {
         var file_length = 0;
         var objTbl = document.getElementById("variableFiles");
         if (objTbl.rows.length - 1 > file_length) {
             objTbl.deleteRow(objTbl.rows.length - 1);
             flen--;
         }
     }

   </script>
	</td>
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
				style="padding-top: 30px;">
	<input type="image" id="btn_submit" src="../semi_view/images/btn_write.gif"border="0" accesskey="s"
	class="update"> 
	<img id="btn_list" src="../semi_view/images/btn_list.gif" border="0" class="reset"></td>
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
                 focus: true
             });
         });

         function auto() {
             var url = "write.do";
             var opt = "width=300,height=500";
             var newWindow = Window.open(url, "noautowindow", opt);
             $("#noauto").attr("action", "iq_updateForm.do");
             $("#noauto").attr("target", "noautowindow");
             $("#noauto").submit();
         }
         
</script> 
          <br></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>

</html>
