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
<link rel="stylesheet" href="../semi_view/css/review_board.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../semi_view/js/header.js"></script>
</head>
<body>
	<!-- 헤드 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 헤드 끝 -->
	
	<section id="review_board">
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
                                                            	<br>
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
                                        <table width="99%" align="center" cellpadding="0" cellspacing="0">
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
                                                        </div>
                                                        <form name="fboardlist">
                                                            <input type="hidden" name="bo_table" value="review">
                                                            <input type="hidden" name="sfl" value=""> <input type="hidden" name="stx" value=""> <input type="hidden" name="spt" value=""> <input type="hidden" name="page" value="1"> <input type="hidden" name="sw" value="">

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
                                                                        <th>날짜</a></th>
                                                                            <th>조회</a></th>
                                                                    </tr>

                                                                    <c:forEach items="${requestScope.aList }" var="dto">
                                                                    	<tr class="bg1">
                                                                    		<td class="num"><b>${dto.num }</b></td>
                                                                    		<td class="subject">
                                                                    			<nobr style="display:block; overflow:hidden;">
                                                                    				<a href="view_board.do?num=${dto.num }&pageNum=${pdto.currentPage}&searchKey=${pdto.searchKey}&searchWord=${pdto.searchWord}"><span class="notice">${dto.title }</span></a>
                                                                    			</nobr>
                                                                    		</td>
                                                                    		<td class="name"><span class="writer">${dto.writer }</span></td>
                                                                    		<td class="datetime">${dto.reg_date }</td>
                                                                    		<td class="hit">${dto.readcount }</td>
                                                                    	</tr>
                                                                    </c:forEach>	
                                                                </tbody>
                                                            </table>
                                                        </form>
                                                        <!-- 글쓰기 -->
                                                        <div class="board_button">
                                                            <div style="float: left;"></div>
                                                            <div style="float: right;">
                                                                <a href="writeboard.do"><img
																src="../semi_view/images/btn_write.gif" border="0"></a>
                                                            </div>
                                                            <!-- 페이지 -->
                                                            <div class="board_page">&nbsp;
                                                            <c:if test="${pdto.startPage>1 }">
                                                            <span><a href="review_baord.do?pageNum=${pdto.startPage-pdto.blockPage}"><img src="../semi_view/images/page_begin.gif" border="0" align="absmiddle" title="시작"></a></span>
                                                            </c:if>
                                                            <c:forEach begin="${pdto.startPage}" end="${pdto.endPage}" var="i">
                                                            <b><span style="color: #4D6185; font-size: 12px; text =decoration: underline;"><a href="review_board.do?pageNum=${i}">${i}</a></span></b>
                                                            </c:forEach>
                                                            <c:if test="${pdto.endPage<pdto.totalPage }" >  
                                                                <span><a href="review_board.do?pageNum=${pdto.startPage+pdto.blockPage}"><img src="src=../semi_view/images/page_end.gif" border="0" align="absmiddle" title="맨끝"></a></span>
                                                             </c:if>   
                                                               </div>
                                                            <!-- 검색 -->
                                                            <div class="board_search">
                                                                <form name="fsearch">
                                                             		<select name="searchKey">
																	<option value="title">제목</option>
																	<option value="content">내용</option>
																	<option value="tac">제목+내용</option>
																	<option value="writer">글쓴이</option>
																</select> <input name="searchWord" maxlength="15" itemname="검색어" required="" value="" style="background-image: url(''); background-psition: right top; background-repeat: no-repeat">
                                                                    <input type="image" src="../semi_view/images/btn_search.gif" border="0" align="absmiddle">
                                                                </form>
                                                            </div>
                                                            <script type="text/javascript">
                                                            $(document).ready(function(){
                                                            	$('#searchBtn').click(function(){
                                                            		if($('select[name=searchKey]').val() !=''&& $('input[name=searchWord]').val==''){
                                                            			alert('검색어를 입력하세요');
                                                            		}
                                                            			$('form').attr('action','list.do');
                                                            			$('form').submit();
                                                            	});
                                                            	if('${!empty pdto.searchKey}'){
                                                            		$.each($('select[name=searchKey]option'),function(index,element){
                                                            			if($(element).val()=='${pdto.searchKey}'){
                                                            				$(this).prop('selected','selected');
                                                            			}
                                                            		});
                                                            		$('input[name=searchWord]').val('${pdto.searchWord}');
                                                            	}
                                                            });
                                                            </script>
                                                            <br>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </section>
    <!-- 풋 --> <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>