<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>

<style type="text/css">
.subject {
	font-size: 27px;
	margin-left: 43%;
}

.sub-line {
	height: 3px;
	width: 136px;
	background-color: wheat;
	margin-left: 42%;
}

#reserveTable table, th, td {
	border-collapse: collapse;
}

#reserveTable table {
	border-color: grey;
	float: left;
}

#reserveTable table tr {
	height: 36px;
}

#reserveTable table tr:nth-of-type(5), table tr:nth-of-type(11) {
	border-bottom: 2px solid wheat;
	border-bottom-style: dotted;
}

th {
	width: 100px;
	text-align: left;
	color: darkgrey;
}

#reserveTable table td {
	width: 540px;
	text-align: right;
}

#reserveTable table caption {
	font-size: 24px;
	text-align: left;
	margin-bottom: 13px;
}

#reserveTable {
	position: relative;
	margin: 0 260px 100px;
	padding: 40px;
	width: 600px;
	top: 129px;
	height: 584px;
	margin-bottom: 200px;
	border: 2px solid lightgrey;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

#reservedImg {
	margin-left: 510px;
	margin-top: 100px;
	width: 170px;
	height: 170px;
}

#reservedDiv {
	margin-left: 510px;
	/* position: relative; */
	/* left: 300px; */
	/* top: 30px; */
	margin-top: 40px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1 class="subject">예약완료</h1>
	<div class="sub-line"></div>

	<img id="reservedImg" src="../semi_view/images/main_image/reserved.png" />
	<div id="reservedDiv">예약이 완료되었습니다.</div>
	<c:if test="${param.payType=='banking'}">
		<p style="position: relative; left: 475px; top: 10px;">입금기한까지
			입금부탁드립니다^^</p>
	</c:if>
	<div id="reserveTable">

		<table>
			<caption>예약정보</caption>
			<tr>
				<th>예약번호</th>
				<td>${requestScope.l_tipNum}</td>
			</tr>
			<tr>
				<th>객실정보</th>
				<td>No.${param.r_num} ${requestScope.r_name}</td>
			</tr>
			<tr>
				<th>입실일</th>
				<td>${param.dateIn}</td>
			</tr>
			<tr>
				<th>퇴실일</th>
				<td>${param.dateOut}</td>
			</tr>
			<tr>
				<th>인원수</th>
				<td>${param.guests}명</td>
			</tr>

			<tr>
				<th>예약자명</th>
				<td>${param.p_name}</td>
			</tr>
			<tr>
				<th>생년월일</th>
				<td>${param.p_birth}</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>${param.p_phoneNumber}</td>
			</tr>
			<tr>
				<th>E-mail</th>
				<td>${param.p_email}</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>${param.p_address}</td>
			</tr>
			<tr>
				<th>요청사항</th>
				<td>${param.p_contents}</td>
			</tr>
			<tr>
				<th>객실 총 합계</th>
				<td>${requestScope.r_total}원</td>
			</tr>
			<tr>
				<th>지불형태</th>
				<td><c:if test="${param.payType=='card'}">
카드결제
</c:if> <c:if test="${param.payType=='banking'}">
현금결제
</c:if></td>
			</tr>
			<tr>
				<th>지불정보</th>
				<td><c:if test="${param.payType=='card'}">
지불완료
</c:if> <c:if test="${param.payType=='banking'}">
미납
</c:if></td>
			</tr>
			<tr>
				<th>예약상태</th>
				<td><c:if test="${param.payType=='card'}">
예약확정
</c:if> <c:if test="${param.payType=='banking'}">
예약대기
</c:if></td>
			</tr>
		</table>
	</div>

</body>
</html>