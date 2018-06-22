<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/content_01.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section id="content_01">
		<div class="div_wrap">
			<div>
				<a href="#"> <img src="images/index_image/btn_player.png">
				</a> <span>Room PreView</span>
				<p id="txt_wrap">Lorem ipsum dolor sit amet, consectetuer
					adipiscing elit. Aenean commodo ligula eget dolor.</p>
				<a href="#" id="learnMore">자세히보기</a>
			</div>
			<div>
				<a href="#"> <img src="images/index_image/btn_player.png">
				</a> <span>Specialty</span>
				<p id="txt_wrap">Lorem ipsum dolor sit amet, consectetuer
					adipiscing elit. Aenean commodo ligula eget dolor.</p>
				<a href="#" id="learnMore">자세히보기</a>
			</div>
			<div>
				<a href="#"> <img src="images/index_image/btn_player.png">
				</a> <span>Service</span>
				<p id="txt_wrap">Lorem ipsum dolor sit amet, consectetuer
					adipiscing elit. Aenean commodo ligula eget dolor.</p>
				<a href="#" id="learnMore">자세히보기</a>
			</div>
			<div>
				<a href="#"> <img src="images/index_image/btn_player.png">
				</a> <span>Reservation</span>
				<p id="txt_wrap">Lorem ipsum dolor sit amet, consectetuer
					adipiscing elit. Aenean commodo ligula eget dolor.</p>
				<a href="#" id="learnMore">자세히보기</a>
			</div>
		</div>
		<div id="min_board">
			<div>
				<table></table>
			</div>
			<div>
				<table></table>
			</div>
			<div>
				<table></table>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>