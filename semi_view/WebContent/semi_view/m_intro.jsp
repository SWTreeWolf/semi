<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>intro</title>
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
							<h1>Lorem</h1>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
								natoque penatibus et magnis dis parturient montes, nascetur
								ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,
								pretium quis, sem. Nulla consequat massa quis enim. Donec pede
								justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim
								justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam
								dictum felis eu pede mollis pretium. Integer tincidunt. Cras
								dapibus.</p>
						</div>
					</div>
					<div class="swiper-slide">
						<img src="../semi_view/images/index_image/diameter_02.jpg">
						<div class="txtwrap_02">
							<h1>Test</h1>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
								natoque penatibus et magnis dis parturient montes, nascetur
								ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,
								pretium quis, sem. Nulla consequat massa quis enim. Donec pede
								justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim
								justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam
								dictum felis eu pede mollis pretium. Integer tincidunt. Cras
								dapibus.</p>
						</div>
					</div>
					<div class="swiper-slide">
						<img src="../semi_view/images/index_image/diameter_03.jpg">
						<div class="txtwrap_03">
							<h1>Hello</h1>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
								Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
								natoque penatibus et magnis dis parturient montes, nascetur
								ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,
								pretium quis, sem. Nulla consequat massa quis enim. Donec pede
								justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim
								justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam
								dictum felis eu pede mollis pretium. Integer tincidunt. Cras
								dapibus.</p>
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
