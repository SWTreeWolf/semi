<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='../semi_view/css/fullcalendar.css'>
<link rel="stylesheet" href='../semi_view/css/calendarView.css'>

<script src='../semi_view/js/jquery.min.js'></script>
<script src='../semi_view/js/moment.min.js'></script>
<script src='../semi_view/js/fullcalendar.js'></script>
<script src='../semi_view/js/calendarView.js'></script>
</head>
<body>
	<jsp:include page="r_manageSide.jsp" />
	<div id="calendar-wrapper">
		<h1>예약현황달력</h1>
		<div id="calendar"></div>
		<div id="color-description">
			<p class="color-bar" style="background-color: #ff8080">1번객실</p>
			<p class="color-bar" style="background-color: #85e085">2번객실</p>
			<p class="color-bar" style="background-color: #66c2ff">3번객실</p>
			<p class="color-bar" style="background-color: #ff9933">4번객실</p>
			<p class="color-bar" style="background-color: #cc99ff">5번객실</p>
		</div>
	</div>
</body>
</html>