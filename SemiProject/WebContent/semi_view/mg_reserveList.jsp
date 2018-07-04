<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>G클래스 3조</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/mg_reserveList.js"></script>
<link rel="stylesheet" href='../semi_view/css/mg_reserveList.css'>
<link rel="stylesheet" href='../semi_view/css/mg_mainSide.css'>
</head>
<body>

	<jsp:include page="/semi_view/mg_mainSide.jsp" />

	<div id="reserveList-wrapper">
		<h1>예약 리스트</h1>
		<div id="reserveListTable-wrapper">
			<div id="reserveList-top">
				<span>이름</span> <input type="text" name="reserveListSearch"
					id="reserveListSearch" />
				<button id="reserveListSearchBtn">검색</button>
			</div>
			<!-- reserveList-top end -->
			<form id="cancelForm" method="post" action="mg_reserveCancel.do">
				<input type="submit" id="cancelReserveBtn" value="예약취소">
				<div id="reserve-list-table"></div>
			</form>
			<div id="reserveListpage"></div>
		</div>
	</div>
</body>
</html>









