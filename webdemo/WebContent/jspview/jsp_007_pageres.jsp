<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp_007_pageres</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	
</script>
</head>
<body>
	<%
		String color = request.getParameter("color");
		String data = request.getParameter("data");
		out.print("<p>" + color + "/" + data + "</p>");
	%>
</body>
</html>