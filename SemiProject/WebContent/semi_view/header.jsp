<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<header id="header">
	<h1 id="logo">
		<a href="main.do"><img src="../semi_view/images/main_image/LIN-logo.png"></a>
	</h1>
	<nav id="nav">
		<ul>
			<!--nav ul -->
			<li><a href="intro.do">SIDE ROOM</a>
				<ul>
					<li><a href="intro.do">preview</a></li>
					<li><a href="room_templet.html">ROOM -A</a></li>
					<li><a href="room_templet.html">ROOM -B</a></li>
					<li><a href="room_templet.html">ROOM -C</a></li>
				</ul></li>

			<li><a href="pool.do">SPECIALITY</a>
				<ul>
					<li><a href="pool.do">POOL</a></li>
					<li><a href="cafe.do">CAFE</a></li>
					<li><a href="#">ETC</a></li>
				</ul></li>

			<li><a href="service.do">SERVICE</a>
				<ul>
					<li><a href="service.do">서비스 안내</a></li>
				</ul></li>

			<li><a href="question.do">VOICE</a>
				<ul>
					<li><a href="#">공지사항</a></li>
					<li><a href="#">이용문의</a></li>
					<li><a href="#">이용후기</a></li>
					<li><a href="question.do">FAQ</a></li>
					<li><a href="#">예약</a></li>
				</ul></li>

			<li><a href="map.do">MAP</a>
				<ul>
					<li><a href="map.do">오시는길</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="header-bottom">
		<div id="reserve">
			<!-- 예약 바  -->
			<form id="reserve-form" method="post" action="list.pen">
				<div class="check-date">
					<input type="text" id="dateIn" name="dateIn" placeholder="ARRIVAL"
						autocomplete="off">
				</div>

				<div class="check-date">
					<input type="text" id="dateOut" name="dateOut"
						placeholder="DEPARTURE" autocomplete="off">

				</div>

				<div class="check-guests">
					<select id="guests" name="guests">
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