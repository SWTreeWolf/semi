<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>G클래스 3조</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<link rel="stylesheet" href="../semi_view/css/reserveListView.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/jscript" src="../semi_view/js/header.js"></script>

</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="reserveListView-wrapper">
		<a id="reserveReturnBtn" href="managerReserveList.do">예약목록으로 돌아가기</a>
		<div id="reserveListView">
			<div id="resrveSubejct">
				<span id="subName">${pdto.p_name}님의 예약</span> <span id="subNum">번호:
					1</span>
			</div>
			<table id="reserveViewTable">
				<caption>예약정보</caption>
				<tr>
					<th>예약번호</th>
					<td>${rdto.l_tipNum}</td>
					<th>예약자명</th>
					<td>${pdto.p_name}</td>
				</tr>
				<tr>
					<th>입실일자</th>
					<td>${rdto.l_dateIn}</td>
					<th>퇴실일자</th>
					<td>${rdto.l_dateOut}</td>
				</tr>
				<tr>
					<th>객실번호</th>
					<td>${rdto.r_num}</td>
					<th>예약순번</th>
					<td>${rdto.l_num}</td>
				</tr>
				<tr>
					<th>총 지불 금액</th>
					<td>${rdto.r_total}</td>
					<th>지불상태</th>
					<td><c:if test="${rdto.yes==0}">입금대기</c:if>
						<c:if test="${rdto.yes==1}">입금완료</c:if></td>
				</tr>

			</table>
			<table id="personViewTable">
				<caption>예약자 상세정보</caption>
				<tr>
					<th>예약자 이름</th>
					<td>${pdto.p_num}</td>
					<th>전화번호</th>
					<td>${pdto.p_phoneNumber}</td>
				</tr>
				<tr>
					<th>이메일주소</th>
					<td>${pdto.p_email}</td>
					<th>생년월일</th>
					<td>${pdto.p_birth}</td>
				</tr>
				<tr>
					<th>주소</th>
					<td colspan=3>${pdto.p_address}</td>
				</tr>
				<tr id="contentTr">
					<th>고객 요청사항</th>
					<td colspan=3><c:if test="${pdto.p_contents==null}">요청사항 없음</c:if>
						<c:if test="${pdto.p_contents!=null}"> ${pdto.p_contents} </c:if>
					</td>
				</tr>
			</table>


		</div>
		<!-- end reserveListView -->
	</div>
</body>
</html>