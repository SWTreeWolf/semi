<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
</head>
<body>
	<%! String colorName = "blue"; %>
	
	<%-- <jsp:param value="red name="color"/> --%>
	<jsp:forward page="jsp_007_pageres.jsp">
		<jsp:param value="<%=colorName %>" name="color" />
		<jsp:param value="10" name="data" />
	</jsp:forward>
</body>
</html>