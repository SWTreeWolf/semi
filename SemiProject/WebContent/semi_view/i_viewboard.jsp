<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<script type="text/javascript" src="../semi_view/js/inquiry.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 바디 -->
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody><tr>
			<td align="center" style="border-bottom: 1px solid #ededee">
			<table width=1180 " border="0" cellspacing="0" cellpadding="0">
			<tbody><tr><td height="60">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tbody><tr><td class="t5" style="padding-right: 10px;">이용문의</td></tr>
				</tbody></table></td></tr>
			</tbody></table></td></tr>
		<tr><td align="center" style="padding: 20px 0 50px 0";>
					<table width="1200" border="0" cellspacing="0" cellpadding="0">
						<tbody><tr><td align="center"><br>
									<div style="height: 12px; line-height: 1px; font-size: 1px;">&nbsp;</div>
			<!--게시글보기 -->
			<table width="99%" align="center" cellpadding="0" cellspacing="0">
			<tbody><tr><td>
			<div style="clear: both; height: 30px;">
				<div style="float: left; margin-top: 6px;">
				<img src="../semi_view/images/icon_date.gif" align="absmiddle" border="0"> 
				<span style="color: #888888;">작성일:${dto.qdate}</span>
				</div>
				<form name="frm" method="post" class="frm">
					<input type="hidden" name="num" value="${dto.num}" /> 
					<input type="hidden" name="ref" value="${dto.ref}" />
					<input type="hidden" name="re_step" value="${dto.re_step}" />  
					<input type="hidden" name="re_level" value="${dto.re_level}" />
					<input type="hidden" name="pageNum" value="${param.pageNum}" />
					<input type="hidden" name="searchKey" value="${param.searchKey}" />
					<input type="hidden" name="searchWord" value="${param.searchWord}" />

					<div style="float: right;"> 
					<a href="iq_list.do"><img src="../semi_view/images/btn_list.gif" border="0" align="absmiddle" class="list"></a>
					<img src="../semi_view/images/btn_modify.gif" border="0" align="absmiddle" class="update">
					<img src="../semi_view/images/btn_delete.gif" border="0" align="absmiddle" class="del">
					</div> 
				</form>
			</div>
			<div style="border: 1px solid #ddd; clear: both; height: 34px; background: url(../semi_view/images/title_bg.gif) repeat-x;">
				<table border="0" cellpadding="0" cellspacing="0" width="100%">${dto.title}
				<tbody><tr><td style="padding: 8px 0 0 10px;">
				<div style="color: #505050; font-size: 13px; font-size: 13px; font-weight: bold; word-break: break-all">
				
				</div></td></tr></tbody></table>
			</div>
			<div style="height: 3px; background: url(../semi_view/images/title_shadow.gif) repeat-x; line-height: 1px; font-size: 1px"></div>
				<table border="0" cellpadding="0" cellspacing="0" width="99%">
				<tbody><tr>
				<td height="30" background="../semi_view/images/view-dot.gif" style="color: #888;">
				<div style="float: left;">&nbsp;글쓴이: <span class="guest">${dto.writer}</span>
				</div>
				<div style="float: right;">
				<img src="../semi_view/images/icon_view.gif" border="0" align="absmiddle"> 조회수: ${dto.viewcount}
				</div>
				</td></tr>
					<tr><td height="30" background="../semi_view/images/view_dot.gif">&nbsp;&nbsp; 
					<img src="../semi_view/images/icon_link.gif" align="absmiddle" border="0"> 
					<c:if test="${dto.upload ne null}">
						<a href="upload.do?num=${dto.num }" target="_blank"> ${dto.upload}&nbsp; 
						<span style="collor: #888;"></span></a>
					</c:if>
					&nbsp; 
					<a href="${dto.lk1}">${dto.lk1}<span style="color: #ff6600; font-size: 11px;">첨부된 링크
					</span></a></td></tr>
					<tr><td height="150"style="word-break: break-all; padding: 10px;">${dto.content}</td></tr>
				</tbody></table> <br> 
				
			<!-- 코멘트 리스트 -->
			<div id="commentContents"><a name="c_211"></a>
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<tbody><tr><td width="100%">
				<table border="0" cellpadding="0" cellspacing="0"width="100%">
					<tbody><tr><td height="1" colspan="3" bgcolor="#dddddd"></td></tr>
					<tr><td height="1" colspan="3"></td></tr>
					<tr><td valign="top">
					<div style="height: 28px; background: url(../semi_view/images/co_title_bg.gif ); clear: both; line-height: 28px; font-size: 12px;">
					<div style="float: left; margin: 2px 0px 2px; font-size: 12px;">
					<strong> <span class="guest"></span></strong> 
							 <span style="color: #888888; font-size: 11px;"></span></div>
					<div style="float: right; margin-top: 5px; font-size: 12px;">
					<a href="*"> <img src="../semi_view/images/co_btn_reply.gif" border="0"align="absmiddle" alt="답변"></a> 
					<a href="*"> <img src="../semi_view/images/co_btn_delete.gif" border="0" align="absmiddle" alt="삭제"></a> &nbsp;
					</div>
				</div> 
				<!-- 코멘트 출력 -->
				<div style="line-height: 20px; padding: 7px; word-break; break-all; overflow: hidden; clear: both; font-size: 12px;">
				</div> 
				<!-- 수정 --> 
				<span id="reply" style="display: none;"></span> 
				<span id="editer" style="display: none;"></span> 
				<!-- 답변 --> 
				<tr><td height="5" colspan="3"></td></tr>
					</tbody>
				</table></td></tr>
				</tbody>
			</table></div> 
			<!-- 코멘트 리스트 --> 
			
			<div id="commentList"> 
				
			</div>
			<!-- 코멘트 입력 -->
			<div id="comment_write" style>
			<table width="100%" border="0" cellpadding="1"cellspacing="0" bgcolor="#dddddd">
			<tbody><tr><td>
			
			<% 
				pageContext.setAttribute("cr", "\r"); //space 
				pageContext.setAttribute("cn", "\n"); //Enter
				pageContext.setAttribute("crcn","\r\n"); //Space, Enter 
				pageContext.setAttribute("br", "<br/>");  //br태그 
			%>
			
			<form name="fviewcomment" method="post" action="commentAdd.do" style="margin: 0px;" class="comment">
				<input type="hidden" name="num" value="${dto.num}" />
				<table width="100%" cellpadding="3" height="156" cellspacing="0" bgcolor="#ffffff" 
				style="border: 1px solid #fff; background: url(../semi_view/images/co_bg.gif) x-repeat;">
				<tbody><tr><td colspan="2" style="padding: 5px 0 0 5px;">이름 
				<input id="wr_writer" type="text" maxlenght="20" size="10" name="c_writer" itemname="이름" required class="ed"
					style="background-image: url(../semi_view/images/wrest.gif); background-position: right top; 
					background-repeat: no-reapeat;">패스워드
				<input id="wr_password" type="password" maxlength="20"size="10" name="c_password" itemname="패스워드"
					required class="ed" style="background-image: url(../semi_view/images/wrest.gif); 
					background-position: right top; background-repeat:no-repeat;">
				</td></tr>
					<tr><td width="98%">
						<c:set var="test" value="${fn:replace(cdto.c_content,br,crcn)}"/> 
					<textarea id="wr_content"name="c_content" rows="8" itemname="내용"required style="width: 99%; word-break: break-all; background-image: url(../semi_view/images/wrest.gif); background-position: right top; background-repeat: no-repeat; font-size: 12px;"tx"></textarea>
					</td>
					<td width="80%" align="center">
						<div>
						<input type="image" src="../semi_view/images/co_btn_write.gif" border="0" accesskey="s" class="combtn">
						</div></td></tr>
				</tbody>
				</table>
			</form>
			</td></tr></tbody>
			</table>
			</div>
			<div style="height: 1px; line-height: 1px; font-size: 1px; backgroun-color: #ddd; clear: both;"></div>
				<div style="clear: both; height: 43px;">
					<div style="float: left; margin-top: 10px;">
					<a href="iq_view.do?num=${(dto.num)-1}&pageNum=${pdto.currentPage}
  				&searchKey=${pdto.searchKey}&searchWord=${pdto.searchWord}"title="이전글"> <img src="../semi_view/images/btn_prev.gif" border="0" align="absmiddle">
					</a> 
					<a href="iq_view.do?num=${(dto.num)+1}&pageNum=${pdto.currentPage}
  				&searchKey=${pdto.searchKey}&searchWord=${pdto.searchWord}" title=다음글"> <img src="../semi_view/images/btn_next.gif" border="0" align="absmiddle">
					</a> 
			</div>
			</div>
			<div style="height: 2px; line-height: 1px; font-size: 1px; background-color: #dedede; clear: both;">&nbsp;  
			</div>
			</td></tr></tbody>
			</table> <br> 
			<!-- 게시글보기끝 -->
			 <br></td></tr></tbody></table>
					
			
		</td></tr></tbody>
	</table>
	<!-- foot 영역 시작 -->
	<!-- 풋 -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>