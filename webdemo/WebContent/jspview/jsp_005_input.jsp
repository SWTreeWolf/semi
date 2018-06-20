<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	
</script>
</head>
<body>
	<form action="jsp_005_out.jsp" method="get">
		<input type="text" name="x" size="20" /> <select name="ope">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">*</option>
			<option value="/">/</option>
		</select> <input type="text" name="y" size="20" /> <input type="submit"
			value="commit" />
	</form>
</body>
</html>