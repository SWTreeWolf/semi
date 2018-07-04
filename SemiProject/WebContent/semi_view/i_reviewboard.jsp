<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>G클래스 3조 </title>
<link rel="stylesheet" href="../semi_view/css/review_board.css" />
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
<script type="text/javascript">
$(document).ready(function() {	
	$('#searchBtn').click(function(){
	if($('select[name=searchKey]').val()!= '' && $('input[name=searchWord]').val()==''){ 
			alert('검색어를 입력하세요'); 
			return false; 
		}
			$('form').attr('action','iq_list.do'); 
			$('form').submit(); 
	});
	
	if('${!empty pdto.searchKey}') { 
		$.each($('select[name=searchKey] option'),function(index,element){
			if($(element).val()=='${pdto.searchKey}'){ 
				$(this).prop('selected','selected'); 
			}
		}); 
		$('input[name=searchWord]').val('${pdto.searchWord}'); 
	}
}); 
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section id="review_board">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody><tr><td align="center" style="border-bottom: 1px solid #ededee">
              <table width="1180" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr><td height="60">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                     <tbody><tr><td align="left" style="padding-left: 0px;">
                        <table border="0" cellspacing="0" cellpadding="0">
                         <tbody><tr><td class="t5" style="padding-right: 10px;">이용문의</td></tr></tbody>
                          </table></td></tr></tbody>
                        </table></td></tr>
                </tbody>
               </table></td></tr>
                <tr><td align="center" style="padding: 20px 0 50px 0;">
                    <table width="1200" border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr><td align="center"><br>
                     <table width="99%" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr><td>
                     <div class="board_top">
                     <div style="float: left;">
                         <form name="fcategory" method="get" style="margin: 0px;"></form>
                     </div></div>
                     <div style="float: right;">
                      <span style="color: #888888; font-weight: bold;">Total ${pdto.totalCount}</span>
                     </div>
        <form name="fboardlist">

        <table cellspacing="0" cellpadding="0" class="board_list">
         <colgroup> <col width="50"><col><col width="100"><col width="60"><col width="50"></colgroup>
        <tbody><tr>
          <th>번호</th>
          <th>제&nbsp;&nbsp;&nbsp;목</th>
          <th>글쓴이</th>
          <th>날짜</th>
          <th>조회</th></tr>
		
             <c:forEach items="${requestScope.aList}" var="dto">
            	<tr>
               <td>${dto.num}</td>
               <td><a href="iq_view.do?num=${dto.num}&pageNum=${pdto.currentPage}&searchKey=${pdto.searchKey}
               &searchWord=${pdto.searchWord}">${dto.title}</a></td>
               <td>${dto.writer}</td>
               <td><fmt:formatDate value="${dto.qdate}" pattern="MM-dd" /></td>
               <td>${dto.viewcount}</td>
      			</tr>
         	</c:forEach>
		</tbody>
	</table>
	</form>
	
        <!-- 글쓰기 -->
        <div class="board_button">
        	 <div style="float: left;"></div>
        	 <div style="float: right;">
             <a href="iq_writeboard.do"><img src="../semi_view/images/btn_write.gif" border="0"></a>
         </div>
       </div>
                                                 
    	<!-- 이전 (PREV)  -->
		<c:if test="${pdto.startPage>1}">
		<spanstyle="color: #4D6185; font-size: 12px; text-decoration: underline;">
		<a href="list.do?pageNum=${pdto.startPage-pdto.blockPage}">PREV</a></span>
		</c:if>
		
		<!-- 페이지  블록 -->
		<c:forEach begin="${pdto.startPage}" end="${pdto.endPage}" var="i">
		<span style="color: #4D6185; font-size: 12px; text =decoration: underline;">
		<a href="list.do?pageNum=${i}&searchKey=${pdto.searchKey}&searchWord=${pdto.searchWord}">${i}</a></span>
		</c:forEach>
	
		<!-- 다음 (NEXT)  -->
		<c:if test="${pdto.endPage<pdto.totalPage}"> 
		<span style="color: #4D6185; font-size: 12px; text-decoration: underline;">
		<a href="list.do?pageNum=${pdto.startPage+pdto.blockPage}">NEXT</a></span>		
		</c:if>
        
        <!-- 검색 -->
      	<div class="board_search">
          <form name="fsearch" method="get">
              <input type="hidden" name="bo_table" value="review">
               <input type="hidden" name="sca" value=""> 
            <select name="searchKey">
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="writer">글쓴이</option>
			</select> 
			<input name="searchWord" maxlength="15" type="text" id="search"/>
            <input type="image" src="../semi_view/images/btn_search.gif" border="0" align="absmiddle" id="searchBtn"/>
          </form>
        </div><br>

  	</td></tr></tbody>
    </table></td></tr></tbody>
    </table></td></tr></tbody>
    </table>
   </section>
    
    <!-- 풋 --> 
    <jsp:include page="footer.jsp"></jsp:include>
    
</body>
</html>