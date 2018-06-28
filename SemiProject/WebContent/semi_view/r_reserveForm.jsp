<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<link rel="stylesheet" href="../semi_view/css/reserveForm.css">

<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>
<script type="text/jscript" src="../semi_view/js/reserveForm.js"></script>

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
							<img class="img" id="room-img" src="../semi_view/images/main_image/bed1.jpg" />
						</c:if>
						<c:if test="${param.r_num==2}">
							<img class="img" id="room-img" src="../semi_view/images/main_image/bed2.jpg" />
						</c:if>
						<c:if test="${param.r_num==3}">
							<img class="img" id="room-img" src="../semi_view/images/main_image/bed3.jpg" />
						</c:if>
						<c:if test="${param.r_num==4}">
							<img class="img" id="room-img" src="../semi_view/images/main_image/bed4.jpg" />
						</c:if>
						<c:if test="${param.r_num==5}">
							<img class="img" id="room-img" src="../semi_view/images/main_image/bed5.jpg" />
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
								<img class="limg" src="../semi_view/images/main_image/bath.png" /> 욕실
							</div>
							<div>
								<img class="limg" src="../semi_view/images/main_image/tele.png" /> TV
							</div>
							<div>
								<img class="limg" src="../semi_view/images/main_image/hair.png" /> 헤어드라이어
							</div>
						</div>
						<!-- amenity col end -->

						<div class="amenity-col">
							<div>
								<img class="limg" src="../semi_view/images/main_image/wash.png" /> 세탁기
							</div>
							<div>
								<img class="limg" src="../semi_view/images/main_image/coffee.png" /> 커피포트
							</div>
							<div>
								<img class="limg" src="../semi_view/images/main_image/cradle.png" /> 아기요람
							</div>
						</div>
						<!-- amenity col end -->

					</div>
					<!--amenity end -->
					<div id="facility">
						<p>침대/침구</p>
						<div class="facil">
							<p>
								<img class="facilimg" src="../semi_view/images/main_image/lilbed.png" />
							</p>
							1번침실</br>더블침대 1개
						</div>
						<div class="facil">
							<p>
								<img class="facilimg" src="../semi_view/images/main_image/lilbed.png" />
							</p>
							1번침실</br>더블침대 1개
						</div>
						<div class="facil">
							<p>
								<img class="facilimg" src="../semi_view/images/main_image/lilbed.png" />
							</p>
							1번침실</br>더블침대 1개
						</div>

					</div>
					<!--facility end -->
				</div>
				<!--reserve1-bottom end-->
				<p class="v" id="reserve1V">
					<a href="#"> <img src="../semi_view/images/main_image/btn_intro_arrow.png"
						alt="" />
					</a>
				</p>




			</div>
			<!--------------------------------reserve1 end---------------------------------------->

			<div class="reserveForm" id="reserve2">
				<h1 class="subject">유의사항</h1>
				<div class="sub-line"></div>

				<div id="warning">
					<h3>자동 예약취소 안내</h3>
					<ul>
						<li>현금결제는 12시간내 입금이 확인되지 않으면 자동으로 예약 취소 됩니다.</li>
						<li>예약시 정확한 성명,전화번호,생년월일을 기재하지 않으면 예약 취소가 될 수 있습니다.</li>
					</ul>
					<h3>객실 이용 시간</h3>
					<ul>
						<li>입실시간은 이용당일 15:00부터 21:00시 까지 입니다.</li>
						<li>퇴실시간은 마지막 이용일 12:00시 까지 입니다.</li>
					</ul>
					<h3>환불 규정</h3>
					<ul>
						<li>최대 인원 초과시 환불 없이 퇴실 조치합니다.</li>
						<li>예약일 15일전 취소 100%환불</li>
						<li>예약일 7일전 취소 50%환불</li>
						<li>예약일 2일전 30%환불</li>
						<li>예약일 1일전 10%환불 , 당일 환불없음</li>
					</ul>
				</div>
				<!-- warning end -->
				<p class="v" id="reserve2V">
					<a href="#"> <img src="../semi_view/images/main_image/btn_intro_arrow.png"
						alt="" />
					</a>
				</p>

			</div>
			<!------------------------------------------reserve2 end------------------------------------------>



			<div class="reserveForm" id="reserve3">
				<h1 class="subject">예약하기</h1>
				<div class="sub-line"></div>
				<form action="reserve.pen" method="post">
					<div id="writing">
						<div id="reserveInfo">
							<h2>예약정보</h2>
							<h4>${param.stay}박${param.guests}명</h4>
							<table>
								<tr>
									<td>도착일<span>${param.dateIn}</span></td>
								</tr>
								<tr>
									<td>출발일<span>${param.dateOut}</span></td>
								</tr>
								<tr>
									<td>객실요금<span>${param.stay}박 X
											${requestScope.r_pay}원</span></td>
								</tr>
								<tr>
									<td>총 요금<span>${requestScope.r_total}원</span></td>
								</tr>
							</table>
							<textarea name="p_contents" cols="46" rows="7" placeholder="요청사항"
								autocomplete="off"></textarea>
						</div>
						<!-- reserveInfo -->
						<div id="personInfo">
							<h2>고객정보</h2>
							<p>
								<input type="text" class="write" name="p_name"
									placeholder="예약자이름" autocomplete="off" required /><span
									class="as">*</span>
							</p>
							<p>
								<input type="text" class="write" name="p_birth"
									placeholder="생년월일" autocomplete="off" required /><span
									class="as">*</span>
							</p>
							<p>
								<input type="text" class="write" name="p_phoneNumber"
									placeholder="전화번호" autocomplete="off" required /><span
									class="as">*</span>
							</p>
							<p>
								<input type="text" class="write" name="p_email"
									placeholder="E-mail" autocomplete="off" required /><span
									class="as">*</span>
							</p>
							<p>
								<input type="text" class="write" name="p_address"
									placeholder="주소" autocomplete="off" />
							</p>
						</div>
						<!-- end personInfo -->
						<div id="payInfo">
							<h2>지불방법</h2>
							<label for="card">카드결제</label> <input type="radio" class="radio"
								id="card" name="payType" value="card" checked="checked" /> <label
								for="banking">무통장입금</label> <input type="radio" class="radio"
								id="banking" name="payType" value="banking" />
							<div id="bankPay">
								<p>
									<input type="text" class="write" placeholder="예금주" /><span
										class="as" autocomplete="off">*</span>
								</p>

							</div>
							<div id="cardPay">
								<div>
									<img id="cardImg" src="../semi_view/images/main_image/cardImg1.png" />
								</div>
								<p>
									<input type="text" class="write" placeholder="카드회사이름"
										autocomplete="off" required /><span class="as">*</span>
								</p>
								<p>
									<input type="text" class="write" placeholder="카드번호"
										autocomplete="off" required /><span class="as">*</span>
								</p>
								<p>
									<input type="text" class="write" placeholder="MM/YY"
										autocomplete="off" required /><span class="as">*</span>
								</p>

							</div>
							<!-- cardPay end -->
							<p>
								<input id="check1" type="checkbox" required /><label
									for="check1" class="check">환불규정에 대해 동의합니다.(필수)</label>
							</p>
							<p>
								<input id="check2" type="checkbox" /><label for="check2"
									class="check">상업용도의 개인정보 활용에 동의합니다.(선택)</label>
							</p>
							<input id="bookBtn" type="submit" value="예약하기" />
						</div>
						<!--payInfo end-->

						<input type="hidden" name="r_num" value="${param.r_num}" />
						<!-- 방번호 -->
						<input type="hidden" name="dateIn" value="${param.dateIn}" /> <input
							type="hidden" name="dateOut" value="${param.dateOut}" /> <input
							type="hidden" name="guests" value="${param.guests}" />
						<!-- 인원 수 -->
						<input type="hidden" name="stay" value="${param.stay}" />
						<!-- 숙박일자 -->


					</div>
					<!--writing end -->
				</form>

			</div>
			<!---------------------------------------- reserve3 end---------------------------------------- -->


		</div>
		<!-- reserve wrapper end -->
	</div>
	<!-- reserve-form-wrapper-wrapper end -->
</body>
</html>
