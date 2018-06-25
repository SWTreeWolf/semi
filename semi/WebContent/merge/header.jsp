<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../merge/css/reset.css">
<link rel="stylesheet" href="../merge/css/main_common.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../merge/js/jquery.js"></script>
<script type="text/javascript" src="../merge/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../merge/js/header.js"></script>
</head>
<body>
	<header id="header">
		<h1 id="logo">
			<a href="#"><img src="../merge/images/main_image/LIN-logo.png"></a>
		</h1>
		<nav id="nav">
			<ul>
				<!--nav ul -->
				<li><a href="#">SIDE ROOM</a>
					<ul>
						<li><a href="#">preview</a></li>
						<li><a href="#">ROOM -A</a></li>
						<li><a href="#">ROOM -B</a></li>
						<li><a href="#">ROOM -C</a></li>
					</ul></li>
				<li><a href="#">SPECIALITY</a>
					<ul>
						<li><a href="#">POOL</a></li>
						<li><a href="#">CAFE</a></li>
						<li><a href="#">ETC</a></li>
					</ul></li>
				<li><a href="#">SERVICE</a>
					<ul>
						<li><a href="#">서비스 안내</a></li>
					</ul></li>
				<li><a href="#">VOICE</a>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">이용문의</a></li>

						<li><a href="#">이용후기</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">예약</a></li>
					</ul></li>
				<li><a href="#">MAP</a>
					<ul>
						<li><a href="#">오시는길</a></li>
					</ul></li>
			</ul>
		</nav>
		<div id="header-bottom">
			<div id="reserve">
				<!-- 예약 바  -->
				<form id="reserve-form" method="post" action="">
					<div class="check-date">
						<input type="text" id="dateIn" name="dateIn" placeholder="ARRIVAL">
					</div>

					<div class="check-date">
						<input type="text" id="dateOut" name="dateOut"
							placeholder="DEPARTURE">

					</div>

					<div class="check-guests">
						<select name="guests">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
						</select>
					</div>
					<input id="check-submit" type="submit" value="예약 가능한 객실 검색">

				</form>
				<!-- reserve-form end -->
			</div>
			<!-- reserve end -->
		</div>
		<!-- hedaer-bottom end -->
	</header>
</body>
</html>