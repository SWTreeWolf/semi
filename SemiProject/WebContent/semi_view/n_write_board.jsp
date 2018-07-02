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
<title>공지사항 작성</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>
<!--에디터-->
<link href="../semi_view/css/bootstrap.css" rel="stylesheet">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link href="../semi_view/dist/summernote.css" rel="stylesheet">
<script src="../semi_view/dist/summernote.js"></script>
<script src="../semi_view/dist/lang/summernote-ko-KR.js"></script>

<script type="text/javascript">
					<!--에디터-->
					$(document).ready(function(){
						$('#summernote').summernote({
						lang: 'ko-KR',
						height:300,
						minHeight: null,
						maxHeight: null,
						focus:true
						});
					<!-- 자동가입방지 -->
					$("#numberReal").realperson({length:5, char: $.realperson.alphanumeric,dot:'@',regenerate:'클릭시 변경'});});
					  function auto(){
						var url ="checkAuto.do";
						var opt = "width=300,height=500";
						var newWindow=Window.open(url,"noautowindow",opt);
						$("#noauto").attr("action","checkAuto.do");
						$("#noauto").attr("target","noautowindow");
						$("#noauto").submit();} 
					  
					  function auto() {
		                  var url = "noticewrite.do";
		                  var opt = "width=300,height=500";
		                  var newWindow = Window.open(url, "noautowindow", opt);
		                  $("#noauto").attr("action", "noticewrite.do");
		                  $("#noauto").attr("target", "noautowindow");
		                  $("#noauto").submit();
		              }

					</script>

<script type="text/javascript">
$(document).ready(function() {
    $('#btn_list').on('click', function() {
        alert("작성을 취소하시겠습니까?")
        $('form').attr('action', 'noticelist.do');
        $('form').submit();
    });
});
</script>
<!-- 바디스타일 -->
<!-- 풋 스타일 -->
</head>
<body>
	<!-- 해드 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 바디 시작-->
	<form name="fwrite" method="post" enctype="multipart/form-data"
		action="noticewrite.do" id="content">
		<!-- 답변글이면  -->
		<c:if test="${!empty param.num}">
			<input type="hidden" value="${param.num}" name="num" />
			<input type="hidden" value="${param.ref}" name="ref" />
			<input type="hidden" value="${param.re_step}" name="re_step" />
			<input type="hidden" value="${param.re_level}" name="re_level" />
			<input type="hidden" value="${param.pageNum}" name="pageNum" />
		</c:if>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="center" style="border-bottom: 1px solid #ededee"></td>
				</tr>
				<tr>
					<td align="center" style="padding: 20px 0 50px 0;">
						<table width="1200" border="0" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<td align="center"><br>
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
</style> <script type="text/javascript">
				 		//글자수 제한
						 var char_min=parseInt(0);//최소
				 		 var char_max=parseInt(0);//최대
						</script>
										<table width="99%" align="center" cellpadding="0"
											cellspacing="0">
											<tbody>
												<tr>
													<td>
														<div
															style="border: 1px solid #ddd; height: 34px; background: url(../semi_view/images/title_bg.gif) repeat-x;">
															<div
																style="font-weigth: bold; font-size: 14px; margin: 7px 0 0 10px;">::글쓰기
																::</div>
														</div>
														<div
															style="height: 3px; background: url(../semi_view/images/title_shadow.gif) repeat-x; line-height: 1px; font-size: 1px;"></div>
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<colgroup width="90"></colgroup>
															<colgroup width=""></colgroup>
															<tbody>
																<tr>
																	<td colspan="2"
																		style="background: url(../semi_view/images/title_bg.gif) repeat-x; height: 3px;"></td>
																</tr>
																<tr>
																	<td class="writer">작성자</td>
																	<td><input class="ed" maxlength="20" size="15"
																		name="writer" itemname="이름" required="" value=""
																		style="background-position: right top; background-repeat: no-repeat;"></td>
																</tr>
																<tr>
																	<td colspan="2" heigth="1" bgcolor="#e7e7e7"></td>
																</tr>
																<tr>
																	<td class="subject">제 목</td>
																	<td><input class="ed" size="50" name="subject"
																		itemname="제목" required="" value=""></td>
																</tr>
																<tr>
																	<td colspan="2" height="1" bgcolor="#e7e7e7"></td>
																</tr>
																<!-- 에디터 -->
																<tr>
																	<td colspan="2"><textarea id="summernote"
																			name="summernote"></textarea></td>
																</tr>
																<tr>
																	<td colspan="2" height="1" bgcolor="#e7e7e7"></td>
																</tr>

																<tr>
															</tbody>
														</table>
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tbody>
																<tr>
																	<td width="100%" align="center" valign="top"
																		style="padding-top: 30px;"><input type="image"
																		id="submit" src="../semi_view/images/btn_write.gif">
																		<a href="noticelist.do"><img id="btn_list"
																			src="../semi_view/images/btn_list.gif" border="0">
																	</a></td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</tbody>
										</table> <!-- <!-- 자동가입방지
					<script src="../semi_view/js/header_jquery-ui.min.js"></script>
					<link rel="stylesheet" type="text/css"href="../semi_view/css/jquery.realperson.css">
					<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
					<script type="text/javascript" src="../semi_view/js/jquery.plugin.js"></script>
					<script type="text/javascript" src="../semi_view/js/jquery.realperson.js"></script>  -->



										<br> <br></td>
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