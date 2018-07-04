<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>G클래스 3조</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	
</script>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>
<style>
#service {
	margin-top:4%;
	width: 100%;
	text-align: center;
}

#service div {
	margin: auto;
	width: 900px;
}

#service div img {
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section id="service">
        <div><img src="../semi_view/images/main_image/s_img1.jpg"></div>
        <div><img src="../semi_view/images/main_image/s_img2.jpg"></div>
        <div><img src="../semi_view/images/main_image/s_img3.jpg"></div>
        <div><img src="../semi_view/images/main_image/s_img4.jpg"></div>
        <div><img src="../semi_view/images/main_image/s_img5.jpg"></div>
    </section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>