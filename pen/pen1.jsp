<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link type="text/css" rel="stylesheet" href="css/jquery-ui.min.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>

<!--   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->


<style type="text/css">
*{
margin: 0;
padding: 0;
}
#header {
	height: 200px;
}

#logo {
background-color:grey;
display:inline;
}


#nav {
margin-left:40%;
margin-top:30px;
height: 50px;
font-size:14px;
text-align:center;
position:relative;
z-index:1000;
}

#nav ul {
	list-style: none;
}

#nav>ul>li {
	float: left;
	margin-left: 30px;
    width:100px;
    height:10px;
}

ul li ul {
display:none;
padding:5px;

}

ul li ul li{

}
#nav ul li a {
	padding: 5px;
	text-decoration: none;
    display:block;
      color:black;
}

ul li ul li a{
	float: none;
    color: white;
    text-align: center;
}


#nav ul li:hover>ul{
	background-color:#003366;
}
#nav ul li:hover a{
	background-color:#003366;
    color:white;
}

#nav ul li:hover ul{
display: block;
}
#nav ul li ul li a:hover{
	background-color: white;
    color:black;
}

#header-bottom {
	background-color: #003366;
	padding: 10px;
	height: 30px;
	width:1500px;
    z-index:-1;
}

#reserve {
margin-left: 300px;
margin-top:5px;
}

#reserve div {
	float: left;
	margin-right: 10px;
}

#reserve div input, select {
	background-color: #004d99;
    padding:2px;
	border:none;
    position:relative;
    color:white;
}
.check-date{
color:white;
}

::placeholder{
color:white;
}

#check-submit{
background-color:orange;
    padding:3px;
	border:none;
    color:#000066;
}
</style>

<script>
	$(function() {
		//////////////////////////////날짜선택////////////////////////////////	  
	  	 $.datepicker.setDefaults({
	     dateFormat: "yy-mm-dd",
				    prevText: '이전 달',
				    nextText: '다음 달',
				    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], //월 이름
				    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], //
				    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
				    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
				    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
				    yearSuffix: '년'
				});  
		$("#dateIn").datepicker({
				changeYear : false,
				onClose:function(selectedDate){
					$("#dateOut").datepicker('option','minDate',selectedDate);
				}
			});
			$("#dateOut").datepicker({
				changeYear : false,
				onClose:function(selectedDate){
				$("#dateIn").datepicker('option','maxDate',selectedDate);
			}
			});
			
			
		////////////////////////////날짜선택/////////////////////////////////////
	});
</script>



</head>
<body>
	<div id="header">
		<h1 id="logo">펜션123</h1>
		<nav id="nav">
			<ul>
				<!-- nav ul -->
				<li><a href="">SIDE ROOM</a>
					<ul>
						<li><a href="">preview</a></li>
						<li><a href="">ROOM -A</a></li>
						<li><a href="">ROOM -B</a></li>
						<li><a href="">ROOM -C</a></li>
					</ul></li>
				<li><a href="">SPECIALITY</a>
					<ul>
						<li><a href="">POOL</a></li>
						<li><a href="">CAFE</a></li>
						<li><a href="">ETC</a></li>
					</ul></li>
				<li><a href="">SERVICE</a>
					<ul>
						<li><a href="">서비스 안내</a></li>
					</ul></li>
				<li><a href="">VOICE</a>
					<ul>
						<li><a href="">공지사항</a></li>
						<li><a href="">이용문의</a></li>

						<li><a href="">이용후기</a></li>
						<li><a href="">FAQ</a></li>
						<li><a href="">예약</a></li>
					</ul></li>
				<li><a href="">MAP</a>
					<ul>
						<li><a href="">오시는길</a></li>
					</ul></li>
			</ul>


			<!-- nav ul end-->


		</nav>
		<div id="header-bottom">
			<div id="reserve">
				<!-- 예약 바  -->
				<form id="reserve-form" method="post" action="">
					<div class="check-date">
						<input type="text" id="dateIn" name="dateIn" placeholder="ARRIVAL">
					</div>

					<div class="check-date">
						<input type="text" id="dateOut" name="dateOut"
							placeholder="DEPARTURE">

					</div>

					<div class="check-guests">
						<select name="guests">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
						</select>
					</div>
					<input id="check-submit" type="submit" value="예약 가능한 객실 검색">

				</form>
				<!-- reserve-form end -->
			</div>
			<!-- reserve end -->
		</div>
		<!-- hedaer-bottom end -->
	</div>
	<!-- header end -->

</body>
</html>