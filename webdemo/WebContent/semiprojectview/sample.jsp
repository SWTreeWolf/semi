<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<form name="fboardlist" method="post">
    <input type="hidden" name="bo_table" value="board">
    <input type="hidden" name="sfl" value="">
    <input type="hidden" name="stx" value="">
    <input type="hidden" name="spt" value="">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sw" value="">

    <table cellspacing="0" cellpadding="0" class="board_list">
    <colgroup><col width="50">
        <col>
    <col width="110">
    <col width="40">
    <col width="50">
            </colgroup><tbody><tr>
        <th>번호</th>
                <th>제&nbsp;&nbsp;&nbsp;목</th>
        <th>글쓴이</th>
        <th><a href="/bbs/bbs/board.php?bo_table=board&amp;sop=and&amp;sst=wr_datetime&amp;sod=desc&amp;sfl=&amp;stx=&amp;page=1">날짜</a></th>
        <th><a href="/bbs/bbs/board.php?bo_table=board&amp;sop=and&amp;sst=wr_hit&amp;sod=desc&amp;sfl=&amp;stx=&amp;page=1">조회</a></th>
                    </tr>

    
    <tr class="bg1"> 
        <td class="num">
            <b>공지</b>        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=41"><span class="notice">[주의] 광고 홍보성 게시글을 엄격히 금합니다.</span></a>    <img src="../skin/board/basic/img/icon_hot.gif" align="absmiddle"> </nobr>        </td>
        <td class="name"><span class="member">B.SIDE</span></td>
        <td class="datetime">07-28</td>
        <td class="hit">4383</td>
                    </tr>
    
    <tr class="bg0"> 
        <td class="num">
            <b>공지</b>        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=2"><span class="notice">[필독] 입퇴실시간을 꼭!!!! 지켜주세요~</span></a>    <img src="../skin/board/basic/img/icon_hot.gif" align="absmiddle"> </nobr>        </td>
        <td class="name"><span class="member">B.SIDE</span></td>
        <td class="datetime">07-17</td>
        <td class="hit">5768</td>
                    </tr>
    
    <tr class="bg1"> 
        <td class="num">
            <b>공지</b>        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=1"><span class="notice">문의게시판 및 자유게시판 입니다^^</span></a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=1"><span class="comment">(2)</span></a>    <img src="../skin/board/basic/img/icon_hot.gif" align="absmiddle"> </nobr>        </td>
        <td class="name"><span class="member">최고관리자</span></td>
        <td class="datetime">07-17</td>
        <td class="hit">7102</td>
                    </tr>
    
    <tr class="bg0"> 
        <td class="num">
            268        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=651">예약취소및 예약확인부탁드리니다</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=651"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">류동진</span></td>
        <td class="datetime">06-16</td>
        <td class="hit">12</td>
                    </tr>
    
    <tr class="bg1"> 
        <td class="num">
            267        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=648">객실질문드립니다</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=648"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">애텀</span></td>
        <td class="datetime">06-15</td>
        <td class="hit">14</td>
                    </tr>
    
    <tr class="bg0"> 
        <td class="num">
            266        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=646">예약확인</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=646"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">송수민</span></td>
        <td class="datetime">06-09</td>
        <td class="hit">21</td>
                    </tr>
    
    <tr class="bg1"> 
        <td class="num">
            265        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=643">문의드립니다</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=643"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">puref925</span></td>
        <td class="datetime">06-07</td>
        <td class="hit">23</td>
                    </tr>
    
    <tr class="bg0"> 
        <td class="num">
            264        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=640">문의합니다.</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=640"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">김아름</span></td>
        <td class="datetime">06-05</td>
        <td class="hit">24</td>
                    </tr>
    
    <tr class="bg1"> 
        <td class="num">
            263        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=639">객실과수영장문의</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=639"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">이영미</span></td>
        <td class="datetime">06-03</td>
        <td class="hit">62</td>
                    </tr>
    
    <tr class="bg0"> 
        <td class="num">
            262        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=636">샴페인이나 와인잔이 있나요?</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=636"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">권가영</span></td>
        <td class="datetime">05-31</td>
        <td class="hit">44</td>
                    </tr>
    
    <tr class="bg1"> 
        <td class="num">
            261        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=635">입욕제</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=635"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">윤예림</span></td>
        <td class="datetime">05-31</td>
        <td class="hit">36</td>
                    </tr>
    
    <tr class="bg0"> 
        <td class="num">
            260        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=632">문의드립니다</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=632"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">구정숙</span></td>
        <td class="datetime">05-29</td>
        <td class="hit">39</td>
                    </tr>
    
    <tr class="bg1"> 
        <td class="num">
            259        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=631">입욕제 문의</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=631"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">윤예림</span></td>
        <td class="datetime">05-29</td>
        <td class="hit">41</td>
                    </tr>
    
    <tr class="bg0"> 
        <td class="num">
            258        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=626">수영장 미온수</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=626"><span class="comment">(1)</span></a>    <img src="../skin/board/basic/img/icon_hot.gif" align="absmiddle"> </nobr>        </td>
        <td class="name"><span class="guest">강대원</span></td>
        <td class="datetime">05-10</td>
        <td class="hit">121</td>
                    </tr>
    
    <tr class="bg1"> 
        <td class="num">
            257        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=624">수영장 사용시 질문이요!</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=624"><span class="comment">(1)</span></a>    <img src="../skin/board/basic/img/icon_hot.gif" align="absmiddle"> </nobr>        </td>
        <td class="name"><span class="guest">유중열</span></td>
        <td class="datetime">05-04</td>
        <td class="hit">110</td>
                    </tr>
    
    <tr class="bg0"> 
        <td class="num">
            256        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=622">자이글..</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=622"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">이지연</span></td>
        <td class="datetime">05-03</td>
        <td class="hit">92</td>
                    </tr>
    
    <tr class="bg1"> 
        <td class="num">
            255        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=620">히노키탕</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=620"><span class="comment">(1)</span></a>    <img src="../skin/board/basic/img/icon_hot.gif" align="absmiddle"> </nobr>        </td>
        <td class="name"><span class="guest">임지은</span></td>
        <td class="datetime">04-21</td>
        <td class="hit">152</td>
                    </tr>
    
    <tr class="bg0"> 
        <td class="num">
            254        </td>
                <td class="subject">
            <nobr style="display:block; overflow:hidden;"><a href="../bbs/board.php?bo_table=board&amp;wr_id=615">인원추가요</a> <a href="../bbs/board.php?bo_table=board&amp;wr_id=615"><span class="comment">(1)</span></a>     </nobr>        </td>
        <td class="name"><span class="guest">이지연</span></td>
        <td class="datetime">04-19</td>
        <td class="hit">98</td>
                    </tr>
    
    
    </tbody></table>
    </form>
</body>
</html>