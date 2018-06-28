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
				<img src="../semi_view/images/index_image/bg_01.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/index_image/bg_01.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/index_image/bg_01.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/index_image/bg_01.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/index_image/bg_01.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/index_image/bg_01.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/index_image/bg_01.jpg">
			</div>
			<div class="swiper-slide">
				<img src="../semi_view/images/index_image/bg_01.jpg">
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
				<a href="#"> <img src="../semi_view/images/index_image/btn_player.png">
				</a> <span>Room PreView</span>
				<p id="txt_wrap">Lorem ipsum dolor sit amet, consectetuer
					adipiscing elit. Aenean commodo ligula eget dolor.</p>
				<a href="#" id="learnMore">자세히보기</a>
			</div>
			<div>
				<a href="pool.do"> <img src="../semi_view/images/index_image/btn_player.png">
				</a> <span>Specialty</span>
				<p id="txt_wrap">Lorem ipsum dolor sit amet, consectetuer
					adipiscing elit. Aenean commodo ligula eget dolor.</p>
				<a href="pool.do" id="learnMore">자세히보기</a>
			</div>
			<div>
				<a href="service.do"> <img src="../semi_view/images/index_image/btn_player.png">
				</a> <span>Service</span>
				<p id="txt_wrap">Lorem ipsum dolor sit amet, consectetuer
					adipiscing elit. Aenean commodo ligula eget dolor.</p>
				<a href="service.do" id="learnMore">자세히보기</a>
			</div>
			<div>
				<a href="#"> <img src="../semi_view/images/index_image/btn_player.png">
				</a> <span>Reservation</span>
				<p id="txt_wrap">Lorem ipsum dolor sit amet, consectetuer
					adipiscing elit. Aenean commodo ligula eget dolor.</p>
				<a href="#" id="learnMore">자세히보기</a>
			</div>
		</div>
		<div id="m_img">
			<img src="../semi_view/images/main_image/m_img.jpg">
		</div>
		<!-- <div id="min_board">
			<table>
				<tr>
					<td align="center">
						<table class="voice">
							<tbody>
								<tr>
									<td><a href="#">VOICE</a></td>
								</tr>
								<tr>
									<td><a href="#">제목111111111111111111111111</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td align="center">
						<table class="notice">
							<tbody>
								<tr>
									<td><a href="#">NOTICE</a></td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td align="center">
						<table class="board">
							<tbody>
								<tr>
									<td><a href="#">BOARD</a></td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
								<tr>
									<td><a href="#">제목</a></td>
									<td>2018-01-11</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</table>
		</div> -->

	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
