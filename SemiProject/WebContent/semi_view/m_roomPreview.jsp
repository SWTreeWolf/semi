<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<link rel="stylesheet" href="../semi_view/css/swiper.min.css">
<link rel="stylesheet" href="../semi_view/css/roomPreview.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>
<script type="text/javascript" src="../semi_view/js/swiper.min.js"></script>
<script>
	$(document).ready(function() {
		var swiper = new Swiper('.swiper-container', {
	        slidesPerView: 1,
	        spaceBetween: 30,
	        loop: true,
	        autoplay:{
	        	delay: 3000
	        },
	        navigation: {
	            nextEl: '.swiper-button-next',
	            prevEl: '.swiper-button-prev',
	        }
	    });
	});
</script>
</head>

<body>
	<jsp:include page="header.jsp" />
	<div id="reserve-form-wrapper-wrapper">
		<div id="reserve-form-wrapper">
			<div class="reserveForm" id="reserve1">

				<h1 class="subject">객실정보</h1>
				<div class="sub-line"></div>
				<div id="reserve1-top">
					<div id="img">
						<c:if test="${param.r_num==1}">
							<img class="img" id="room-img"
								src="../semi_view/images/main_image/bed1.jpg" />
						</c:if>
						<c:if test="${param.r_num==2}">
							<img class="img" id="room-img"
								src="../semi_view/images/main_image/bed2.jpg" />
						</c:if>
						<c:if test="${param.r_num==3}">
							<img class="img" id="room-img"
								src="../semi_view/images/main_image/bed3.jpg" />
						</c:if>
						<c:if test="${param.r_num==4}">
							<img class="img" id="room-img"
								src="../semi_view/images/main_image/bed4.jpg" />
						</c:if>
						<c:if test="${param.r_num==5}">
							<img class="img" id="room-img"
								src="../semi_view/images/main_image/bed5.jpg" />
						</c:if>
					</div>


					<div id="description">
						<dl>
							<c:if test="${param.r_num==1}">
								<dt>높은 청결도★★★</dt>
								<dd>최근에 머문 게스트 중 4명이 매우 청결하다고 언급한 객실 입니다.</dd>
								<dt>완벽한 조명★★★</dt>
								<dd>침대 옆에는 잠자리에들기 전에 편하게 사용 할 수 있는 스탠드가 있습니다</dd>
								<dt>아늑한 침대★★★</dt>
								<dd>복층 구조 계단을 올라가면 최고급 호텔 침구류로 준비된 아늑한 침대가 창가에 놓여 있습니다.</dd>
							</c:if>
							<c:if test="${param.r_num==2}">
								<dt>높은 청결도★★★</dt>
								<dd>최근에 머문 투숙객 중 4명이 매우 청결하다고 언급한 객실 입니다.</dd>
								<dt>넓은 방구조★★★</dt>
								<dd>저희 펜션에서 가장 넓은 객실으로 다수의 투숙객들에게 인기가 많습니다.</dd>
								<dt>뛰어난 경치★★★</dt>
								<dd>객실내에서 아름다운 자연환경을 감상하실 수 있습니다.</dd>

							</c:if>
							<c:if test="${param.r_num==3}">
								<dt>뛰어난 경치★★★</dt>
								<dd>객실내에서 아름다운 자연환경을 감상하실 수 있습니다.</dd>
								<dt>완벽한 조명★★★</dt>
								<dd>침대 옆에는 잠자리에들기 전에 편하게 사용 할 수 있는 스탠드가 있습니다</dd>
								<dt>아기와 함께★★★</dt>
								<dd>유아를 동반하는 투숙객들에게 적합한 객실입니다.</dd>
							</c:if>
							<c:if test="${param.r_num==4}">
								<dt>뛰어난 경치★★★</dt>
								<dd>객실내에서 아름다운 자연환경을 감상하실 수 있습니다.</dd>
								<dt>완벽한 조명★★★</dt>
								<dd>침대 옆에는 잠자리에들기 전에 편하게 사용 할 수 있는 스탠드가 있습니다</dd>
								<dt>부모님과 함께★★★</dt>
								<dd>부모님과 어르신분들을 위한 안마의자가 준비되어있는 객실입니다.</dd>
							</c:if>
							<c:if test="${param.r_num==5}">
								<dt>세련된 인테리어★★★</dt>
								<dd>사진이 가장 아름답게 나오는 인테리어와 실내광이 뛰어난 객실입니다.</dd>
								<dt>완벽한 조명★★★</dt>
								<dd>침대 옆에는 잠자리에들기 전에 편하게 사용 할 수 있는 스탠드가 있습니다</dd>
								<dt>뛰어난 경치★★★</dt>
								<dd>객실내에서 아름다운 자연환경을 감상하실 수 있습니다.</dd>
							</c:if>
						</dl>
					</div>
					<!--description-->

				</div>
				<!--reserve1-top-->

				<div id="reserve1-bottom">
					<div id="amenity">
						<p>편의시설</p>
						<div class="amenity-col">
							<div>
								<img class="limg" src="../semi_view/images/main_image/bath.png" />
								욕실
							</div>
							<div>
								<img class="limg" src="../semi_view/images/main_image/tele.png" />
								TV
							</div>
							<div>
								<img class="limg" src="../semi_view/images/main_image/hair.png" />
								헤어드라이어
							</div>
						</div>
						<!-- amenity col end -->

						<div class="amenity-col">
							<div>
								<img class="limg" src="../semi_view/images/main_image/wash.png" />
								세탁기
							</div>
							<div>
								<img class="limg"
									src="../semi_view/images/main_image/coffee.png" /> 커피포트
							</div>
							<div>
								<img class="limg"
									src="../semi_view/images/main_image/cradle.png" /> 아기요람
							</div>
						</div>
						<!-- amenity col end -->

					</div>
					<!--amenity end -->
					<div id="facility">
						<p>침대/가구</p>

						<div class="facil">
							<p>
								<img class="facilimg"
									src="../semi_view/images/main_image/lilbed.png" />
							</p>
							1번침실</br>더블침대 1개
						</div>
						<c:if test="${param.r_num>=3}">
							<div class="facil">
								<p>
									<img class="facilimg"
										src="../semi_view/images/main_image/lilbed.png" />
								</p>
								2번침실</br>더블침대 1개
							</div>
						</c:if>
						<div class="facil">
							<p>
								<img class="facilimg"
									src="../semi_view/images/main_image/armchair.png" />
							</p>
							거실</br>소파 1개
						</div>
					</div>
					<!--facility end -->
				</div>
			</div>
		</div>
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
			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
			<!-- Add Arrows -->
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
