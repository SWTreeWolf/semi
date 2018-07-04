<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html charset=UTF-8;">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic"
	rel="stylesheet">
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<link rel="stylesheet" href="../semi_view/css/emptyRoomList.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>
<script type="text/jscript" src="../semi_view/js/emptyRoomList.js"></script>
</head>

<body>
	<jsp:include page="header.jsp" />
	<section id="roomList-wrapper">
	<div id="roomList-top">
		<h1>
			<img id="cal" src="../semi_view/images/main_image/cal.png" /> 예약가능한
			객실
		</h1>
		<div class="sub-line"></div>
	</div>
	<!-- roomList-top --> <c:if test="${list[0].r_num==null}">
		<div id="no-room-list">
			<img src="../semi_view/images/main_image/search.png" />
			<p>선택한 날짜는 객실이 매진되었습니다!</p>
		</div>
	</c:if>

			<div id="no-room-listA" style="display:none">
			<img src="../semi_view/images/main_image/search.png" />
			<p>선택한 날짜는 객실이 매진되었습니다!</p>
		</div>

	<div id="room-list">
		<c:forEach var="room" items="${list}">
			<div class="room">
				<img class="img" src="../semi_view/images/main_image/bed<c:url value="${room.r_num}"/>.jpg" />
				<dl>
					<dt>${room.r_name}</dt>
					<!-- 방 이름 -->
					<dd>${room.r_contents}</dd>
					<!-- 방설명 -->
					<dd>
						<a href="room.do?r_num=${room.r_num}">객실 상세정보 보러가기</a>
					</dd>
				</dl>

				<div class="reserve-btn">
					<p>${stay}박X ${room.r_pay}원</p>
					<a
						href="reserveForm.do?guests=${guests}&r_num=${room.r_num}&stay=${stay}&dateIn=${dateIn}&dateOut=${dateOut}">예약하기</a>
				</div>
			</div>
			<!-- room end -->
		</c:forEach>
	</div>
	<!-- room-list end --> </section>
	<!-- roomList-wrapper -->
</body>
</html>