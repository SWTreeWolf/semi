<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">
h2 {
	margin-left: 600px;
}

#room-list {

	width: 800px;
	height: 1000px;
	margin-top: 50px;
	margin-left: 300px;
}

.room {
	background-color: #e4e4e7;
	width: 800px;
	height: 340px;
	margin-bottom: 20px;
}

.reserve-btn a{
	background-color: orange;
	color: #003366;
	text-decoration:none;
	width: 120px;
	height: 50px;
	font-size: 25px;
	line-height: 50px;
	text-align: center;
	position: relative;
	left: 660px;
	top: -30px;
    clear:left;
    float:left;
}
.reserve-btn a:hover{
background-color: #cc6600;
}
.img{
width:300px;
height:300px;
background-color:pink;
float:left;
z-index:1;
position:relative;
}

dl{
position:relative;
top:25px;
left:20px;
}
dt{
font-size:30px;
color:#003366;
}

dd a{
color:#003366;
}
</style>
</head>
<body>

	<jsp:include page="/pen/pen1.jsp" />

	<div id="content"></div>

	<h2>예약가능한 객실</h2>

	<div id="room-list">

		<div class="room">
			<img class="img" src="images/bed1.jpg"></img>
			<dl>
				<dt>정말예쁜방</dt>
				<dd>정말정말 예쁘다</dd>
				<dd><a href="">객실 상세정보 보러가기</a></dd>
			</dl>

			<div class="reserve-btn"><a href="">예약하기</a></div>
		</div>


	
		<div class="room">
			<img class="img" src="images/bed1.jpg"></img>
			<dl>
				<dt>정말예쁜방</dt>
				<dd>정말정말 예쁘다</dd>
				<dd><a href="">객실 상세정보 보러가기</a></dd>
			</dl>

			<div class="reserve-btn"><a href="">예약하기</a></div>
		</div>


		<div class="room">
			<img class="img" src="images/bed1.jpg"></img>
			<dl>
				<dt>정말예쁜방</dt>
				<dd>정말정말 예쁘다</dd>
				<dd><a href="">객실 상세정보 보러가기</a></dd>
			</dl>

			<div class="reserve-btn"><a href="">예약하기</a></div>
		</div>


</div>

</body>
</html></html>