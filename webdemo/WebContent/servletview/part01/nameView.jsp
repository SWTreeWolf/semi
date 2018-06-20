<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="UTF-8">
<title>nameView</title>
</head>
<body>
	<fieldset>
		<legend>get방식</legend>
		<form action="namePro" name="frm" method="get">
			<span>name:</span>
			
			<input type="text" name="fname"  />
			<input type="submit" value="commit"  />
		</form>
	</fieldset>
	
	<hr/>
	<fieldset>
		<legend>post방식</legend>
		<form action="namePro" name="frm" method="post">
			<span>name:</span>
			
			<input type="text" name="fname"  />
			<input type="submit" value="commit"  />
		</form>
	</fieldset>
</body>
</html>