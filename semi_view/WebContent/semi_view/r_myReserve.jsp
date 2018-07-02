<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/myReserve.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../semi_view/js/myReserve.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<section id="myReserve-wrapper">
		<div class="subject-wrapper">
			<h2 class="subject">나의 예약검색</h2>
			<div class="sub-line"></div>
		</div>
		<div id="myReserve-search">
			<div id="myReserve-search-input">
				<label for="myReserve-search-l_tipNum">예약번호</label> <input
					id="myReserve-search-l_tipNum" /> <label style="margin-left: 50px"
					for="myReserve-search-p_name">예약자 이름</label> <input
					id="myReserve-search-p_name" />
				<button id="myReserve-search-btn">검색</button>
			</div>
		</div>
		<!-- end myReserve-search -->

		<div id="no-reserve">
			<img src="../semi_view/images/main_image/search.png" />
			<p>해당하는 정보에 대한 예약이 존재하지 않습니다.</p>
		</div>
		<!-- no-reserve end -->

		<div id="myReserveTable"></div>

	</section>
	<!-- end myReserve-wrapper -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>