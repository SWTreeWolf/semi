<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 게시판</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<link rel="stylesheet" href="../semi_view/css/review_board.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
<script type="text/javascript" src="../semi_view/js/js_ex_board.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$('#searchBtn').click(
								function() {
									if ($('select[name=searchKey]').val() != ''
											&& $('input[name = searchWord]')
													.val() == '') {
										alert('검색어를 입력하세요.');
										return false;
									}
									$('form').attr('action', 'noticelist.do');
									$('form').submit();
								});

						if ('$(!empty pdto.searchKey)') {
							$
									.each(
											$('select[name=searchKey] option'),
											function(index, element) {
												if ($(element).val() == '${pdto.searchKey}') {
													$(this).prop('selected',
															'selected');
												}
											});
							if ($('input[name=searchWord]').val(
									'${pdto.searchWord}') == null) {

							}
						}
					});
</script>
<style type="text/css">
td {
	color: #646464;
	font-size: 12px;
	font-family: "돋움", dotum, sans-serif;
}

.style td {
	padding-top: 3px;
	padding-bottom: 3px;
	border-bottom: 1px solid silver;
	line-height: 1.45;
	color: #555;
	text-decoration: none;
}
</style>
</head>
<body>
	<!-- 헤드 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 헤드 끝 -->

	<section id="review_board">
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
															<span style="color: #888888; font-weight: bold;"></span>
														</div> <!-- <form name="fboardlist">
                                                            <input type="hidden" name="bo_table" value="review">
                                                            <input type="hidden" name="sfl" value=""> 
                                                            <input type="hidden" name="stx" value=""> 
                                                            <input type="hidden" name="spt" value="">
                                                             <input type="hidden" name="page" value="1"> 
                                                            <input type="hidden" name="sw" value=""> -->

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
																	<th style="width: 120px;">번호</th>
																	<th>제&nbsp;&nbsp;&nbsp;목</th>
																	<th style="width: 700px;">글쓴이</th>
																	<th style="width: 1200px;">작성일</th>
																	<th style="width: 120px;">조회</th>
																</tr>

																<c:forEach items="${requestScope.aList}" var="dto">
																	<tr>
																		<td style="text-align: center;">${dto.num}</td>
																		<td><a
																			href="noticeview.do?num=${dto.num}&pageNum=${pdto.currentPage}&searchKey=${pdto.searchKey}
               																&searchWord=${pdto.searchWord}">${dto.subject}</a></td>
																		<td style="text-align: center;">${dto.writer}</td>
																		<td style="text-align: center;">${dto.reg_date}</td>
																		<td style="text-align: center;">${dto.readcount}</td>
																	</tr>
																</c:forEach>
															</tbody>
														</table>
														</form> <!-- 글쓰기 -->
														<div class="board_button">
															<div style="float: left;"></div>
															<div style="float: right;">
																<a href="noticewriteboard.do"><img
																	src="../semi_view/images/btn_write.gif" border="0"></a>
															</div>
															<!-- 페이지 -->
															<!-- 이전 (PREV)  -->
															<c:if test="${pdto.startPage>1}">
																<span
																	style="color: #4D6185; font-size: 12px; text =decoration: underline;">
																	<a
																	href="noticelist.do?pageNum=${pdto.startPage-pdto.blockPage}">PREV</a>
																</span>
															</c:if>

															<!-- 페이지  블록 -->
															<c:forEach begin="${pdto.startPage}"
																end="${pdto.endPage}" var="i">
																<span
																	style="color: #4D6185; font-size: 12px; text =decoration: underline;">
																	<a
																	href="noticelist.do?pageNum=${i}&searchKey=${pdto.searchKey}&searchWord=${pdto.searchWord}">${i}</a>
																</span>
															</c:forEach>

															<!-- 다음 (NEXT)  -->
															<c:if test="${pdto.endPage<pdto.totalPage}">
																<span
																	style="color: #4D6185; font-size: 12px; text =decoration: underline;">
																	<a
																	href="noticelist.do?pageNum=${pdto.startPage+pdto.blockPage}">NEXT</a>
																</span>
															</c:if>

															<!-- 검색 -->
															<form id="searchKey">
																<div class="searchKey" style="text-align: center;">
																	<c:choose>
																		<c:when test="${pdto.searchKey!=null }">
																			<input type="hidden" name="bo_table" value="review">
																			<input type="hidden" name="sca" value="">
																			<select name="sfl">
																				<option value="subject"
																					<c:if test="${pdto.searchKey eq 'subject'}">selected</c:if>>제목</option>
																				<option value="summernote"
																					<c:if test="${pdto.searchKey eq 'summernote'}">selected</c:if>>내용</option>
																				<!-- <option value="wrsubject">제목+내용</option> -->
																				<option value="writer"
																					<c:if test="${pdto.searchKey eq 'writer'}">selected</c:if>>글쓴이</option>

																			</select>
																		</c:when>
																		<c:otherwise>
																			<select name="searchKey">
																				<option value="subject">제목</option>
																				<option value="summernote">내용</option>
																				<option value="writer">글쓴이</option>

																			</select>

																		</c:otherwise>

																	</c:choose>
																	<input name="searchWord" maxlength="15" type="text"
																		id="searchWord" /> <input type="image"
																		src="../semi_view/images/btn_search.gif"
																		id="searchBtn" />

																</div>
															</form>
															<br>
														</div>
													</td>
												</tr>
											</tbody>
										</table></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</section>
	<!-- 풋 -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>