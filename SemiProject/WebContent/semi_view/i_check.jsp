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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$('#btn').on('click',function(){
		if($('[type=password]').val()=="${password}"){
			$('form').attr('action','updateForm.do'); 
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
	<form name="frm" action="updateForm.do" method="post" > 
		<input name="num" value="${param.num}" type="hidden"/> 
		<span>비밀번호</span>
		<input type="password" name="password" id="password" /> 
		<input type="button" value="login" id="btn" />
	</form>
	<input name ="password" type="hidden" value="${password}" />
</body>
</html>