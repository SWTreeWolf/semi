<%@page import="org.json.simple.JSONObject"%>
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
	<%
		JSONObject object = new JSONObject();
		object.put("name", "홍길동");
		object.put("age",40);
		//out.print(object);
		out.print(object.get("name"));
	%>
</body>
</html>