<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>G클래스 3조</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<link rel="stylesheet" href="../semi_view/css/location.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>
<script>
	function initMap() {
		var uluru = {
			lat : -22.363,
			lng : 80.044
		};
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 4,
			center : uluru
		});
		var marker = new google.maps.Marker({
			position : uluru,
			map : map
		});
	}
</script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA2wV7V-mah5FhOeVAsPthFITqOgZGdUDM&callback=initMap">
	
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section id="location_01">
		<div id="map_wrap">
			<div id="map"></div>
		</div>
		<div id="txt_wrap">
			<img src="../semi_view/images/main_image/test_img2.gif" usemap="#loc">
			<map name="loc" id="loc">
				<area shape="rect" coords="794,191,881,285"
					href="http://dmaps.kr/jqsh" target="_blank" />
				<area shape="rect" coords="539,530,706,559"
					href="http://tour.yd.go.kr/kor/part/express_bus.aspx?MC=604002"
					target="_blank" />
				<area shape="rect" coords="664,191,751,285"
					href="http://goo.gl/maps/67uJV" target="_blank" />
				<area shape="rect" coords="529,192,616,286"
					href="http://me2.do/Gv4XpXpS" target="_blank" />
				<area shape="rect" coords="717,530,885,560"
					href="http://tour.yd.go.kr/kor/part/intercity_bus.aspx?MC=604003"
					target="_blank" />
				<area shape="rect" coords="539,764,706,797"
					href="http://www.korail.go.kr/" target="_blank" />
			</map>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>