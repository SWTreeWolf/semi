<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script type="text/javascript">

$(document).ready(function() {	
	$('#searchBtn').click(function(){
		if($('select[name=searchKey]').val()!=""&&$("input[name = searchWord]").val()==""){
			  alert('검색어를 입력하세요.');
			  return false;
		}		
		$('form').attr('action','list.do');
		$('form').submit();
	});
	
	if('$(!empty pdto.searchKey)'){
		$.each($('select[name=searchKey] option'),function(index, element){
			if($(element).val()=='${pdto.searchKey}'){
				$(this).prop('selected','selected');
			}
		});
		if($('input[name=searchWord]').val('${pdto.searchWord}')==null){
			
		}
	}
});
</script>
<style type="text/css">
pre {
    margin: 0 0 0.7em 0;
    font-family: Consolas, "Noto Sans KR", dotum, "Liberation Mono", Courier, monospace;    
}
input, select, textarea, td, th {
    color: #646464; 
    font-size: 12px;
    font-family: "돋움", dotum, sans-serif; 
}
table {
    border-collapse: collapse;
}
img {
    border: 0; 
}
form { 
    margin: 0;
    padding: 0; 
}
a:link {
    color: #2C80D0;
    text-decoration: none;
}
a:visited {
    color: #2C80D0;
    text-decoration: none;
}
a:active {
    color: #2C80D0;
    text-decoration: none;
}
a:hover {
    color: #2C80D0;
    text-decoration: underline;
}
.style {
    width: 100%;
    margin: 0.7em 0 0 0;
}
.style tr {
    color: #92B91C;
    border-top: 1px solid #92B91C;
    border-bottom: 1px solid #92B91C;
}
.style td {
    padding-top: 3px;
    padding-bottom: 3px;
    border-bottom: 1px solid silver;
    line-height: 1.45;
}
.style td a {
    color: #555;
    text-decoration: none;
}
.style td a:hover {
    color:#555;
    text-decoration: underline;
}
#list-menu {
    text-align: right;
}
#gong {
    margin: 0;
    padding-top: 10px;
    font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
    font-size: 50px;
    color: #666;
}

</style>

</head>
<body>
<h1 id="gong">공지사항</h1>

	<div class="wrap">
		<p id="list-menu" >
			<a href="writeForm.do">글쓰기</a>
		</p>
		<form>
		<c:choose>
			<c:when test="${pdto.searchKey != null }">
 		 <select name = "searchKey">
   				 <option value ="all" 
   				 <c:if test="${pdto.searchKey eq 'all'}">selected</c:if>>검색어를 입력</option>
    			<option value ="subject"
    			<c:if test="${pdto.searchKey eq 'subject'}">selected</c:if>>제목</option>
    			<option value ="content"
    			<c:if test="${pdto.searchKey eq 'content'}">selected</c:if>>내용</option>  
    			<option value ="writer"
    			<c:if test="${pdto.searchKey eq 'writer'}">selected</c:if>>글쓴이</option></select>
    	</c:when>
    	<c:otherwise>
    	<select name = "searchKey">
   				 <option value = "all">검색어를 입력</option>
    			<option value = "subject">제목</option>
    			<option value = "content">내용</option>  
    			<option value = "writer">글쓴이</option>
    			</select>
    	</c:otherwise>
    	
    	</c:choose>
				<input type = "text" name = "searchWord"/>
				<input type = "button" value="검색" id="searchBtn"/>
		</form>

		<table class="style">
			<tr>
				<th style="width: 120px;">번호</th>
				<th>제목</th>
				<th style="width: 300px;">작성자</th>
				<th style="width: 120px;">조회</th>
			</tr>
			
			<c:forEach items="${requestScope.aList}" var="dto">
            <tr>
               <td style="text-align: center;">${dto.num}</td>
               
               <td>
               <c:if test="${dto.re_level!=0 }">
               <img src="../boardview/images/level.gif" 
               			width="${10*dto.re_level}" />
               	<img src="../boardview/images/re.gif"  />
               </c:if>
               <a href="view.do?num=${dto.num}&pageNum=${pdto.currentPage}" >${dto.subject}</a></td>
               <td style="text-align: center;">${dto.writer}</td>
               <td style="text-align: center;">${dto.readcount}</td>
            </tr>
         </c:forEach>
		</table>
		<!-- 이전 (PREV) -->
		<c:if test="${pdto.startPage>1}">
			<span><a href="list.do?pageNum=${pdto.startPage-pdto.blockPage }">PREV</a></span>
		</c:if>
		
		<!--  페이지 -->
		<c:forEach begin="${pdto.startPage}" end="${pdto.endPage}" var="i" >
				<span><a href="list.do?pageNum=${i}&searchKey=${pdto.searchKey}&searchWord=${pdto.searchWord}">${i}</a></span> 
		</c:forEach>
		
		<!-- 다음 (NEXT) -->
		<c:if test="${pdto.endPage<pdto.totalPage}">
				<span><a href="list.do?pageNum=${pdto.startPage+pdto.blockPage }">NEXT</a></span>
		</c:if>
	</div>

</body>
</html>


























