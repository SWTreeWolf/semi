<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>Main</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/main_content.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<link rel="stylesheet" href="../semi_view/css/swiper.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../semi_view/js/header.js"></script>
<script src="../semi_view/js/swiper.min.js"></script>
<script>
	$(document).ready(function() {
		var swiper = new Swiper('.swiper-container', {
			slidesPerView : 1,
			spaceBetween : 30,
			loop : true,
			autoplay : {
				delay : 3000,
			},
			pagination : {
				el : '.swiper-pagination',
				clickable : true,
			},
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			}
		});
	});
</script>
</head>

<body>
	<!-- header 시작 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--contents 시작-->
	<!-- Swiper -->
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img src="../semi_view/images/main_image/div_01.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/main_image/div_02.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/main_image/div_03.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/main_image/div_04.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/main_image/div_05.jpg">
			</div>
		</div>
		<!-- Add Pagination -->
		<div class="swiper-pagination"></div>
		<!-- Add Arrows -->
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
	</div>

	<section id="content_01">
		<div class="div_wrap">
			<div>
				<a href="#"> <img
					src="../semi_view/images/main_image/room_preview.png">
				</a> <span>Room PreView</span>
				<p id="txt_wrap">모던한 인테리어와 고급스러운 가구와 소품, 호텔수준의 패브릭 제품, 리드미컬한
					라인조명의 조화가 보이실겁니다.</p>
				<a href="#" id="learnMore">자세히보기</a>
			</div>
			<div>
				<a href="pool.do"> <img
					src="../semi_view/images/main_image/speciality.png">
				</a> <span>Speciality</span>
				<p id="txt_wrap">각 객실동 마다 동해의 청정 해수로 채운 개별수영장과 전용 바베큐 공간, 풀사이드
					테라스를 갖추고 있으며 객실 내부에는 히노끼탕이 준비되어 있습니다. 침대에서 바다를 감상 할 수 있습니다.</p>
				<a href="pool.do" id="learnMore">자세히보기</a>
			</div>
			<div>
				<a href="service.do"> <img
					src="../semi_view/images/main_image/service.png">
				</a> <span>Service</span>
				<p id="txt_wrap">고객분들의 편의를 위해 다양한 서비스를 제공하고 있습니다.</p>
				<a href="service.do" id="learnMore">자세히보기</a>
			</div>
			<div>
				<a href="myReserve.do"> <img
					src="../semi_view/images/main_image/reservation.png">
				</a> <span>Reservation</span>
				<p id="txt_wrap">예약은 회원이 아니라도 가능합니다. 실시간 예약시스템을 통해 예약해주세요. 침대는
					깨끗하고 바닷바람은 시원하고 파도소리는 두근거리실 겁니다.</p>
				<a href="#" id="learnMore">자세히보기</a>
			</div>
		</div>
		<div id="m_img">
			<img src="../semi_view/images/main_image/m_img.jpg">
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
