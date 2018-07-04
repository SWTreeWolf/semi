<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>G클래스 3조</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<link rel="stylesheet" href="../semi_view/css/swiper.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../semi_view/js/header.js"></script>
<script type="text/javascript" src="../semi_view/js/swiper.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.review_view_board.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 바디 -->
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>
				<td align="center" style="border-bottom: 1px solid #ededee">
					<table width=1180 border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td height="60">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td class="t5" style="padding-right: 10px;">여행후기</td>

											</tr>
										</tbody>
									</table>
								</td>

							</tr>
						</tbody>
					</table>
				</td>
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
																style="color: #888888;">작성일: ${dto.reg_date }</span>
														</div>
														<!-- 링크버튼 -->
														<form style="float: right;">
															<input type="image"
																src="../semi_view/images/btn_list.gif" id="list"
																style="border: 0; align: absmiddle"> <input
																type="image" src="../semi_view/images/btn_modify.gif"
																id="modify" style="border: 0; align: absmiddle">
															<input type="image"
																src="../semi_view/images/btn_delete.gif" id="del"
																style="border: 0; align: absmiddle;"> <input
																type="image" src="../semi_view/images/btn_write.gif"
																id="write" style="border: 0; align: absmiddle">
															<input type="hidden" name="num" value="${dto.num}" />
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
																			${dto.title }</div>
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
																		&nbsp;글쓴이: <span class="guest">${dto.writer}</span>
																	</div>
																	<div style="float: right;">
																		<img src="../semi_view/images/icon_view.gif"
																			border="0" align="absmiddle"> 조회수:
																		${dto.readcount }
																	</div>
																</td>
															</tr>
															<tr>

															</tr>
															<tr>
																<td height="150"
																	style="word-break: break-all; padding: 10px;">
																	${dto.content }</td>
															</tr>
														</tbody>
													</table> <br> <!-- 코멘트 리스트 -->

													<div id="commentContents">
														<script type="text/javascript">
															listView("${requestScope.dto.num}");
														</script>
													</div> <!-- 코멘트 리스트 --> <!-- 코멘트 입력 -->
													<div id="comment_write" style>
														<table width="100%" border="0" cellpadding="1"
															cellspacing="0" bgcolor="#dddddd">
															<tbody>
																<tr>
																	<td>
																		<form name="fviewcomment" method="post" action="*"
																			style="margin: 0px;">
																			<table width="100%" cellpadding="3" height="156"
																				cellspacing="0" bgcolor="#ffffff"
																				style="border: 1px solid #fff; background: url(../semi_view/images/co_bg.gif) x-repeat;">
																				<tbody>
																					<tr>
																						<td colspan="2" style="padding: 5px 0 0 5px;">
																							이름 <input type="id" maxlenght="20" size="10"
																							id="wr_name" itemname="이름" required class="ed"
																							style="background-image: url(../semi_view/images/wrest.gif); background-position: right top; background-repeat: no-reapeat;">
																							패스워드<input type="password" maxlength="20"
																							size="10" id="wr_password" itemname="패스워드"
																							required class="ed"
																							style="background-image: url(../semi_view/images/wrest.gif); background-position: right top; background-repeat: no-repeat;">
																						</td>
																					</tr>
																					<tr>
																						<td width="90%"><textarea id="wr_content"
																								name="wr_content" rows="7" itemname="내용"
																								required
																								style="width: 100%; word-break: break-all; background-image: url(../semi_view/images/wrest.gif); background-position: right top; background-repeat: no-repeat; font-size: 12px;"></textarea>
																						</td>
																						<td width="85%" align="center">
																							<div>
																								<input type="image" id="write_comment"
																									src="../semi_view/images/co_btn_write.gif"
																									style="border: 0; align: absmiddle">
																							</div>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</form>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div
														style="height: 1px; line-height: 1px; font-size: 1px; backgroun-color: #ddd; clear: both;">&nbsp;</div>
													<div style="clear: both; height: 43px;">
														<div style="float: left; margin-top: 10px;">
															<a href="view_board.do?num=${dto.num-1 }"><input
																type="image" id="prev"
																src="../semi_view/images/btn_prev.gif"
																style="border: 0; align: absmiddle"></a> &nbsp;<a
																href="view_board.do?num=${dto.num+1 }"><input
																type="image" src="../semi_view/images/btn_next.gif"
																style="border: 0; align: absmiddle"></a> &nbsp;
														</div>
														<!-- 링크 버튼 -->
														<div style="float: right;">
															<input type="image"
																src="../semi_view/images/btn_list.gif"
																style="border: 0; align: absmiddle"> <input
																type="image" src="../semi_view/images/btn_modify.gif"
																id="modify" style="border: 0; align: absmiddle">
															<input type="image"
																src="../semi_view/images/btn_delete.gif" id="del"
																style="border: 0; align: absmiddle;"> <input
																type="image" src="../semi_view/images/btn_write.gif"
																id="write" style="border: 0; align: absmiddle">

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
	<!-- foot 영역 시작 -->
	<!-- 풋 -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>