<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">
<style>
section {
	height: 800px;
	text-align: center;
}

div#pw_wrap {
	width: auto;
	height: 300px;
	margin-top: 18%;
	display: inline-block;
	text-align: center;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery.js"></script>
<script type="text/javascript" src="../semi_view/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../semi_view/js/header.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btn').on('click', function() {
			if ($('[type=password]').val() == "${password}") {
				$('form').attr('action', 'iq_updateForm.do');
				$('form').submit();
			} else {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
		})
	})
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<form name="frm" action="iq_updateForm.do" method="post">

			<div id="pw_wrap">
				<input name="num" value="${param.num}" type="hidden" /> <span>비밀번호</span>
				<input type="password" name="password" id="password" /> <input
					type="button" value="login" id="btn" />
			</div>

		</form>
		<input name="password" type="hidden" value="${password}" />
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>