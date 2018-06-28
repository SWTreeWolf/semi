<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style type="text/css">

#myReserve-wrapper{

}
#myReserve-search{
width:300px;
height:300px;
}
#myReserve-search input{

}
#myReserve-search-btn{
width:60px;
height:30px;
}
</style>
</head>
<body>
<div id="myReserve-wrapper">
<h2>나의 예약검색</h2>
<div id="myReserve-search">
<label for="myReserve-search-l_tipNum">예약번호</label>
<input id="myReserve-search-l_tipNum" placeholdere="5자리의 예약번호를 입력해주세요"/>
<label for="myReserve-search-p_name">예약자 이름</label>
<input id="myReserve-search-p_name" placeholdere="예약자의 성함을 입력해주세요"/>
<button id="myReserve-search-btn">검색</button>
</div><!-- end myReserve-search -->
</div>
</body>
</html>