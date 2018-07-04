<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>G클래스 3조</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/intro_common.css">
<link rel="stylesheet" href="../semi_view/css/swiper.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="../semi_view/js/intro_js.js"></script>
<script src="../semi_view/js/swiper.min.js"></script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA2wV7V-mah5FhOeVAsPthFITqOgZGdUDM&callback=initMap">
	
</script>
</head>

<body>
	<!--header 시작-->
	<header id="header">
		<a href="main.do" class="btn_menu"> <img
			src="../semi_view/../semi_view/images/index_image/menu_icon.png">
		</a>
		<p class="pension">pension</p>
	</header>
	<!-- intro 시작 -->
	<section class="intro">
		<div class="intro_wrap">
			<div class="txt_wrap">
				<div class="d_t">
					<div class="d_c">
						<p class="txt01">숲이 보이고 바다가 들리는 펜션</p>
						<p class="obj02">
							<a href="#"> <img
								src="../semi_view/images/index_image/btn_intro_arrow.png" alt="">
							</a>
						</p>
					</div>
				</div>
			</div>
			<div class="av_wrap">
				<video autoplay loop muted id="av">
					<source src="../semi_view/images/index_image/video/pension.mp4"
						type="video/mp4">
				</video>
			</div>
		</div>
	</section>
	<!--content 시작-->
	<section class="content" id="container">
		<div class="produce_01">
			<div class="bg_wrap"></div>
			<div class="txt_wrap">
				<p class="txt01">첫 번째 객실</p>
				<p class="txt02">바로 앞에 호수가 보이며</p>
				<p class="txt03">아름다운 풍경을 느낄수 있습니다</p>
			</div>
		</div>

		<div class="produce_02">
			<div class="bg_wrap"></div>
			<div class="txt_wrap">
				<p class="txt01">두 번째 객실</p>
				<p class="txt02">남향집 구조로</p>
				<p class="txt03">풍수지리에 좋습니다</p>
			</div>
		</div>

		<div class="produce_03">
			<div class="bg_wrap"></div>
			<div class="txt_wrap">
				<p class="txt01">세 번째 객실</p>
				<p class="txt02">모던한 분위기의 방으로서</p>
				<p class="txt03">아늑하게 지내 실 수 있습니다</p>
			</div>
		</div>

		<div class="diameter">
			<!-- Swiper -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="../semi_view/images/index_image/diameter_01.jpg">
						<div class="txtwrap_01">
							<h1>죽녹원</h1>
							<p>죽녹원은 2003년 5월에 조성하여 약 31만㎡의 공간에 울창한 대나무숲과 가사문학의 산실인 담양의
								정자문화 등을 볼 수 있는 시가문화촌으로 구성되어 있습니다. 죽녹원은 전망대, 쉼터, 정자, 다양한 조형물을 비롯
								영화·CF촬영지와 다양한 생태문화관광 시설을 갖추고 있으며 가족, 연인, 친구, 수학여행 등 연간 관광객
								130만명이 찾는 대한민국 최고의 관광명소로 자리잡고 있습니다.</p>

						</div>
					</div>
					<div class="swiper-slide">
						<img src="../semi_view/images/index_image/diameter_02.jpg">
						<div class="txtwrap_02">
							<h1>외도 보타니아</h1>
							<p>비교적 따듯한 지역에 위치하고 있으며, 서구식으로 가꿔진 식물원이다. 주변의 수역은 한려해상국립공원이며,
								이곳 바다에 홀로 있는 섬에 위치한 해상농원이다. 외도는 1969년 이창호와 그의 아내 최호숙 부부가 거주를 하면서
								하나씩 가꿔졌으며, TV 드라마와 광고 등의 배경지로 유명해졌다.</p>
						</div>
					</div>
					<div class="swiper-slide">
						<img src="../semi_view/images/index_image/diameter_03.jpg">
						<div class="txtwrap_03">
							<h1>대천 해수욕장</h1>
							<p>전국 해수욕장 중 규모, 시설면에서 최고로 손꼽히는 여름휴양지로, 백사장 남쪽에 기암괴석이 잘 발달되어
								있어 비경을 연출하고 있으며, 수온 역시 적당하여 기분좋은 해수욕을 즐길 수 있다. 대천 해수욕장의 모래질은
								동양에서 유일한 패각분으로 조개껍질이 오랜 세월을 지나는 동안 잘게 부서져 모래로 변모한 것이다. 규사로 된
								백사장이 몸에 달라붙는 점에 비해 패각분은 부드러우면서 물에 잘 씻기는 장점을 갖고 있다.</p>

						</div>
					</div>
				</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div>
				<!-- Add Arrows -->
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>

		<div class="directions">
			<div id="map"></div>
		</div>
	</section>

	<footer id="footer">
		<h2>확인용입니다.</h2>
		<address>
			<span>Lorem ipsum dolor sit amet</span> <span>Lorem ipsum
				dolor sit amet consectetuer adipiscing elit. Aenean </span> <span>Copyright
				(c) 2018 inthehome Inc. All rights reserved.</span>
		</address>

		<div class="footer_center">
			<div class="question">
				<p class="question_title">관련문의</p>
				<p class="question_txt">000-0000-0000</p>
			</div>
		</div>
	</footer>

	<p id="btn_top_scroll">
		<a href="#"> <img
			src="../semi_view/images/index_image/btn_top.png">
		</a>
	</p>

</body>
</html>
