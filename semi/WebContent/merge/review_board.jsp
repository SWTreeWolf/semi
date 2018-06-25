<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 바디 스타일 -->
<style>
.board_top {
	clear: both;
}

.board_list {
	clear: both;
	width: 100%;
	table-layout: fixed;
	margin: 5px 0 0 0;
}

.board_list th {
	font-weight: bold;
	font-size: 12px;
}

.board_list th {
	background: url(../skin/board/basic/img/title_bg.gif) repeat-x;
}

.board_list th {
	white-space: nowrap;
	height: 34px;
	overflow: hidden;
	text-align: center;
}

.board_list th {
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
}

.board_list tr.bg0 {
	background-color: #fafafa;
}

.board_list tr.bg1 {
	background-color: #ffffff;
}

.board_list td {
	padding: .5em;
}

.board_list td {
	border-bottom: 1px solid #ddd;
}

.board_list td.num {
	color: #999999;
	text-align: center;
}

.board_list td.checkbox {
	text-align: center;
}

.board_list td.subject {
	overflow: hidden;
}

.board_list td.name {
	padding: 0 0 0 10px;
}

.board_list td.datetime {
	font: normal 11px tahoma;
	color: #BABABA;
	text-align: center;
}

.board_list td.hit {
	font: normal 11px tahoma;
	color: #BABABA;
	text-align: center;
}

.board_list td.good {
	font: normal 11px tahoma;
	color: #BABABA;
	text-align: center;
}

.board_list td.nogood {
	font: normal 11px tahoma;
	color: #BABABA;
	text-align: center;
}

.board_list .notice {
	font-weight: normal;
}

.board_list .current {
	font: bold 11px tahoma;
	color: #E15916;
}

.board_list .comment {
	font-family: Tahoma;
	font-size: 10px;
	color: #EE5A00;
}

.board_button {
	clear: both;
	margin: 10px 0 0 0;
}

.board_page {
	clear: both;
	text-align: center;
	margin: 3px 0 0 0;
}

.board_page a:link {
	color: #777;
}

.board_search {
	text-align: center;
	margin: 10px 0 0 0;
}

.board_search .stx {
	height: 21px;
	border: 1px solid #9A9A9A;
	border-right: 1px solid #D8D8D8;
	border-bottom: 1px solid #D8D8D8;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	
</script>
<script type="text/javascript" src="../merge/js/js_ex_board.js"></script>
<!-- <style src="../merge/review_board.css"></style> -->
</head>
<body>
	<!-- 헤드 -->
	<jsp:include page="header.jsp"></jsp:include>

	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>
				<td align="center" style="border-bottom: 1px solid #ededee">
					<table width="1180" border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td height="60">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td align="left" style="padding-left: 0px;">
													<table border="0" cellspacing="0" cellpadding="0">
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
						</tbody>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center" style="padding: 20px 0 50px 0;">
					<table width="1200" border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td align="center"><br>
									<table width="99%" align="center" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr>
												<td>
													<div class="board_top">
														<div style="float: left;">
															<form name="fcategory" method="get" style="margin: 0px;">
															</form>
														</div>
													</div>
													<div style="float: right;">
														<span style="color: #888888; font-weight: bold;">Total
															49</span>
													</div>
													<form name="fboardlist">
														<input type="hidden" name="bo_table" value="review">
														<input type="hidden" name="sfl" value=""> <input
															type="hidden" name="stx" value=""> <input
															type="hidden" name="spt" value=""> <input
															type="hidden" name="page" value="1"> <input
															type="hidden" name="sw" value="">

														<table cellspacing="0" cellpadding="0" class="board_list">
															<colgroup>
																<col width="50">
																<col>
																<col width="110">
																<col width="40">
																<col width="50">
															</colgroup>
															<tbody>
																<tr>
																	<th>번호</th>
																	<th>제&nbsp;&nbsp;&nbsp;목</th>
																	<th>글쓴이</th>
																	<th><a href=*>날짜</a>
																	<th><a href=*>조회</a>
																</tr>

																<tr class="bg1">
																	<td class="num"><b>공지</b></td>
																	<td class="subject"><nobr
																			style="display:block; overflow:hidden;">
																			<a href="view_board.do"><span class="notice">제목제목</span></a><img
																				src="../merge/images/icon_hot.gif" align="absmiddle">
																		</nobr></td>
																	<td class="name"><span class="writer">작성자</span></td>
																	<td class="datetime">00-00</td>
																	<td class="hit">000</td>
																</tr>
															</tbody>
														</table>
													</form> <!-- 글쓰기 -->
													<div class="board_button">
														<div style="float: left;"></div>
														<div style="float: right;">
															<a href="writeboard.do"><img
																src="../merge/images/btn_write.gif" border="0"></a>
														</div>
														<!-- 페이지 -->
														<div class="board_page">
															&nbsp;<b><span
																style="color: #4D6185; font-size: 12px; text =decoration: underline;">1</span></b>
															&nbsp;<a href="*"><span>2</span></a> &nbsp;<a href="*"><span>3</span></a>
															&nbsp;<a href="*"><span>4</span></a> <img
																src="../merge/images/page_end.gif" border="0"
																align="absmiddle" title="맨끝"></a>
														</div>
														<!-- 검색 -->
														<div class="board_search">
															<form name="fsearch" method="get">
																<input type="hidden" name="bo_table" value="review">
																<input type="hidden" name="sca" value=""> <select
																	name="sfl">
																	<option value="wr_subject">제목</option>
																	<option value="wr_subject">내용</option>
																	<option value="wr_subject">제목+내용</option>
																	<option value="wr_subject">글쓴이</option>
																</select> <input name="stx" class="stx" maxlength="15"
																	itemname="검색어" required="" value=""
																	style="background-image: url(''); background-psition: right top; background-repeat: no-repeat">
																<input type="image" src="../merge/images/btn_search.gif"
																	border="0" align="absmiddle">
															</form>
														</div>
														<br>
												</td>
											</tr>
										</tbody>
									</table></td>
							</tr>
						</tbody>
					</table> <!-- 풋 --> <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>