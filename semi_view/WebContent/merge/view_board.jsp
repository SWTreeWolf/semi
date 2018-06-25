<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 바디 -->
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>
				<td align="center" style="border-bottom: 1px solid #ededee">
					<table width=1180 " border="0" cellspacing="0" cellpadding="0">
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
								<td align="right"><a href="*">Home</a> >VOICE>여행후기</td>
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
															<img src="../merge/images/icon_date.gif" align="absmiddle"
																border="0"> <span style="color: #888888;">작성일:</span>
														</div>
														<!-- 링크버튼 -->
														<div style="float: right;">
															<a href="*"> <img src="../merge/images/btn_list.gif"
																border="0" align="absmiddle">
															</a> <a href="*"> <img src="../merge/images/btn_modify.gif"
																border="0" align="absmiddle">
															</a> <a href="*"> <img src="../merge/images/btn_delete.gif"
																border="0" align="absmiddle">
															</a> <a href="*"> <img src="../merge/images/btn_reply.gif"
																border="0" align="absmiddle">
															</a> <a href="*"> <img src="../merge/images/btn_write.gif"
																border="0" align="absmiddle">
															</a>
														</div>
													</div>
													<div
														style="border: 1px solid #ddd; clear: both; height: 34px; background: url(../merge/images/title_bg.gif) repeat-x;">
														<table border="0" cellpadding="0" cellspacing="0"
															width="100%">
															<tbody>
																<tr>
																	<td style="padding: 8px 0 0 10px;">
																		<div
																			style="color: #505050; font-size: 13px; font-size: 13px; font-weight: bold; word-break: break-all">
																			제목입력</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
													<div
														style="height: 3px; background: url(../merge/images/title_shadow.gif) repeat-x; line-height: 1px; font-size: 1px"></div>
													<table border="0" cellpadding="0" cellspacing="0"
														width="99%">
														<tbody>
															<tr>
																<td height="30" background="../merge/images/view-dot.gif"
																	style="color: #888;">
																	<div style="float: left;">
																		&nbsp;글쓴이: <span class="guest">글쓴이</span>
																	</div>
																	<div style="float: right;">
																		<img src="../merge/images/icon_view.gif" border="0"
																			align="absmiddle"> 조회수: &nbsp;
																	</div>
																</td>
															</tr>
															<tr>
																<td height="30" background="../merge/images/view_dot.gif">
																	&nbsp;&nbsp; <img src="../merge/images/icon_link.gif"
																	align="absmiddle" border="0"> <a href="*"
																	target="_blank"> &nbsp; <span style="collor: #888;">포스팅주소</span>
																		&nbsp; <span style="color: #ff6600; font-size: 11px;">링크수</span>
																</a>
																</td>
															</tr>
															<tr>
																<td height="150"
																	style="word-break: break-all; padding: 10px;">
																	사진영역</td>
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
																	<td width="100%">
																		<table border="0" cellpadding="0" cellspacing="0"
																			width="100%">
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
																							style="height: 28px; background: url(../merge/images/co_title_bg.gif ); clear: both; line-height: 28px; font-size: 12px;">
																							<div
																								style="float: left; margin: 2px 0px 2px; font-size: 12px;">
																								<strong> <span class="guest">작성자</span>
																								</strong> <span style="color: #888888; font-size: 11px;">입력날짜</span>
																							</div>
																							<div
																								style="float: right; margin-top: 5px; font-size: 12px;">
																								<a href="*"> <img
																									src="../merge/images/co_btn_reply.gif" border="0"
																									align="absmiddle" alt="답변">
																								</a> <a href="*"> <img
																									src="../merge/images/co_btn_delete.gif" border="0"
																									align="absmiddle" alt="삭제">
																								</a> &nbsp;
																							</div>
																						</div> <!-- 코멘트 출력 -->
																						<div
																							style="line-height: 20px; padding: 7px; word-break; break-all; overflow: hidden; clear: both; font-size: 12px;">
																							댓글내용</div> <!-- 수정 --> <span id="editer"
																						style="display: none;"></span> <span id="reply"
																						style="display: none;"></span> <!-- 답변 --> <input
																						type="hidden" id="comment" value> <textarea
																							id="comment" style="display: none;">
																						비밀글
																						</textarea>
																					</td>
																				</tr>
																				<tr>
																					<td height="5" colspan="3"></td>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
															</tbody>
														</table>
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
																				style="border: 1px solid #fff; background: url(../merge/images/co_bg.gif) x-repeat;">
																				<tbody>
																					<tr>
																						<td colspan="2" style="padding: 5px 0 0 5px;">
																							이름 <input type="text" maxlenght="20" size="10"
																							name="wr_name" itemname="이름" required class="ed"
																							style="background-image: url(../merge/images/wrest.gif); background-position: right top; background-repeat: no-reapeat;">
																							패스워드<input type="password" maxlength="20"
																							size="10" name="wr_password" itemname="패스워드"
																							required class="ed"
																							style="background-image: url(. ./ images/ wrest.gif"
																							);
																						 background-position:
																							right top; background-repeat:no-repeat;">
																							<input type="checkbox" id="wr_secret"
																							name="wr_secret" value="secret">비밀글
																						</td>
																					</tr>
																					<tr>
																						<td width="95%"><textarea id="wr_content"
																								name="wr_content" rows="8" itemname="내용"
																								required
																								style="width: 100%; word-break: break-all; background-image: url(../merge/images/wrest.gif); background-position: right top; background-repeat: no-repeat; font-size: 12px;"tx"></textarea>
																						</td>
																						<td width="85%" align="center">
																							<div>
																								<input type="image"
																									src="../merge/images/co_btn_write.gif" border="0"
																									accesskey="s">
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
															<a href="*" title="이전글"> <img
																src="../merge/images/btn_prev.gif" border="0"
																align="absmiddle">
															</a> &nbsp; <a href="*" title=다음글"> <img
																src="../merge/images/btn_next.gif" border="0"
																align="absmiddle">
															</a> &nbsp;
														</div>
														<!-- 링크 버튼 -->
														<div style="float: right; margin-top: 10px;">
															<a href="*"> <img src="../merge/images/btn_list.gif"
																border="0" align="absmiddle">
															</a> <a href="*"> <img src="../merge/images/btn_modify.gif"
																border="0" align="absmiddle">
															</a> <a href="*"> <img src="../merge/images/btn_delete.gif"
																border="0" align="absmiddle">
															</a> <a href="*"> <img src="../merge/images/btn_reply.gif"
																border="0" align="absmiddle">
															</a> <a href="*"> <img src="../merge/images/btn_write.gif"
																border="0" align="absmiddle">
															</a>
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