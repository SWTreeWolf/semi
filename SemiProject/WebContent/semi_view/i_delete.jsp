<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인 </title>
<link rel="stylesheet" href="../semi_view/css/reset.css">
<link rel="stylesheet" href="../semi_view/css/main_common.css">
<link rel="stylesheet" href="../semi_view/css/jquery-ui.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.submit').on('click',function(){
			if(confirm("정말 삭제하시겠습니까?")==true) {
				if($('[type=password]').val()=="${password}"){
					$('form').attr('action','iq_delete.do'); 
					$('form').submit();
				}else { 
					alert("비밀번호가 일치하지 않습니다."); 
					return false; 
				}
				}else { 
					$('form').attr('action','iq_deleteForm.do'); 
					$('form').submit(); 
				}
			
		});
		
		$('.reset').on('click',function(){
			if(confirm("정말 취소하시겠습니까?")==true){
				alert('취소되었습니다.'); 
				$('form').attr('action','iq_view.do'); 
				$('form').submit(); 
			}
  		});
	});
</script>

</head>
<body>

	<form name="frm" action="delete.do" method="post"> 
		<input name="num" value="${param.num}" type="hidden"/> 
		<div>비밀번호 확인 : </div>
		
		<div><input name="password" type="password" ></div>
		<div>
			<input type="button" value="삭제" class="submit" /> 
			<input type="button" value="취소" class="reset" /> 
		</div>
	</form>
	<input name ="password" type="hidden" value="${password}" />
</body>
</html>