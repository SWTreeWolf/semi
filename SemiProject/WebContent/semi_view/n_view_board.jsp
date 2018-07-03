<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>G클래스 3조</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".list").on("click", function() {
			$('form').attr('action', 'noticelist.do');
			$('form').submit();
		});
		$(".reply").on('click', function() {
			$('form').attr('action', 'noticewrite.do');
			$('form').submit();
		});
		$(".update").on('click', function() {
			$('form').attr('action', 'noticeupdateForm.do');
			$('form').submit();
		});
		$('.del').on('click', function() {
			$('form').attr('action', 'noticedeleteForm.do');
			$('form').submit();
		});
	});
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 바디 -->
	<section id="content_01" style="height: 750px">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="center" style="border-bottom: 1px solid #ededee"></td>
				</tr>
				<tr>
					<td align="center" style="padding: 20px 0 50px 0";>
						<table width="1200" border="0" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<td align="center"><br>
										<div style="height: 12px; line-height: 1px; font-size: 1px;">&nbsp;</div>
										<!--게시글보기 -->
										<table width="99%" align="center" cellpadding="0"
											cellspacing="0">
											<tbody>
												<tr>
													<td>
														<div style="clear: both; height: 30px;">
															<div style="float: left; margin-top: 6px;">
																<img src="../semi_view/images/icon_date.gif"
																	align="absmiddle" border="0"> <span
																	style="color: #888888;">작성일:${dto.reg_date}</span>
															</div>
															<form name="fwrite" method="post">
																<input type="hidden" name="num" value="${dto.num}" /> <input
																	type="hidden" name="ref" value="${dto.ref}" /> <input
																	type="hidden" name="re_step" value="${dto.re_step}" />
																<input type="hidden" name="re_level"
																	value="${dto.re_level}" /> <input type="hidden"
																	name="pageNum" value="${param.pageNum}" />
																<!-- 검색 후 제목 클릭해서 상세페이지 들어갔다가 목록 누르면 다시 검색된 페이지로  -->
																<input type="hidden" name="searchKey"
																	value="${param.searchKey}" /> <input type="hidden"
																	name="searchWord" value="${param.searchWord}" />
																<!-- 링크버튼 -->
																<div style="float: right;">
																	<a href="noticelist.do"><img
																		src="../semi_view/images/btn_list.gif" border="0"
																		class="list"></a> <img
																		src="../semi_view/images/btn_delete.gif" border="0"
																		class="del"> <img
																		src="../semi_view/images/btn_modify.gif" border="0"
																		class="update">
																</div>
															</form>
														</div>
														<div
															style="border: 1px solid #ddd; clear: both; height: 34px; background: url(../semi_view/images/title_bg.gif) repeat-x;">
															<table border="0" cellpadding="0" cellspacing="0"
																width="100%">
																<tbody>
																	<tr>
																		<td style="padding: 8px 0 0 10px;">
																			<div
																				style="color: #505050; font-size: 13px; font-size: 13px; font-weight: bold; word-break: break-all">
																				${dto.subject}</div>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div
															style="height: 3px; background: url(../semi_view/images/title_shadow.gif) repeat-x; line-height: 1px; font-size: 1px"></div>
														<table border="0" cellpadding="0" cellspacing="0"
															width="99%">
															<tbody>
																<tr>
																	<td height="30"
																		background="../semi_view/images/view-dot.gif"
																		style="color: #888;">
																		<div style="float: left;">
																			&nbsp;작성자: <span class="writer">${dto.writer}</span>
																		</div>
																		<div style="float: right;">
																			<img src="../semi_view/images/icon_view.gif"
																				border="0" align="absmiddle"> 조회수:
																			${dto.readcount} &nbsp;
																		</div>
																	</td>
																</tr>
																<tr>

																</tr>
																<tr>
																	<td height="150"
																		style="word-break: break-all; padding: 10px;">${dto.summernote }</td>
																</tr>
															</tbody>
														</table> <br> <!-- 코멘트 리스트 -->
														<div id="commentContents">
															<a name="c_211"></a>
															<table width="100%" cellpadding="0" cellspacing="0"
																border="0">
																<tbody>
																	<tr>
																		<td></td>
																		<td width="100%"><table border="0"
																				cellpadding="0" cellspacing="0" width="100%">
																				<tbody>
																					<tr>
																						<td height="1" colspan="3" bgcolor="#dddddd"></td>
																						<td></td>
																					</tr>
																					<tr>
																						<td height="1" colspan="3"></td>
																					</tr>
																					<tr>
																						<td valign="top">
																							<div
																								style="height: 28px; background: url(../semi_view/images/co_title_bg.gif ); clear: both; line-height: 28px; font-size: 12px;">
																								<div
																									style="float: left; margin: 2px 0px 2px; font-size: 12px;">
																									<strong> <span class="guest">${dto.writer}</span>
																									</strong> <span style="color: #888888; font-size: 11px;">${dto.reg_date}</span>
																								</div>
																							</div> <!-- 코멘트 출력 --> <!-- 코멘트 리스트 -->

																						</td>
																					</tr>
																				</tbody>
																			</table>
																			</form></td>
																	</tr>
																</tbody>
															</table>
														</div>
														<div
															style="height: 1px; line-height: 1px; font-size: 1px; backgroun-color: #ddd; clear: both;">&nbsp;</div>
														<div style="clear: both; height: 43px;">

															<!-- 링크 버튼 -->
															<div style="float: right; margin-top: 10px;">
																<a href="list.do"><img
																	src="../semi_view/images/btn_list.gif" border="0"
																	class="list"></a> <img
																	src="../semi_view/images/btn_delete.gif" border="0"
																	class="del"> <img
																	src="../semi_view/images/btn_modify.gif" border="0"
																	class="update">
															</div>
														</div>
														<div
															style="height: 2px; line-height: 1px; font-size: 1px; background-color: #dedede; clear: both;">
															&nbsp;</div>
													</td>
												</tr>
											</tbody>
										</table> <br> <!-- 게시글보기끝 --> <br></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</section>
	<!-- foot 영역 시작 -->
	<!-- 풋 -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>