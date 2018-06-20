<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_06_foreach</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
</head>
<body>
	<!-- 게시판의 기본 -->
	<%
		for(int i=1;i<=5;i++)
			out.print(i);
	%>
	<p>for반복문과 같은 기능을 제공하는 forEach태그</p>
	<c:forEach var="i" begin="1" end="5" step="1">
		<c:out value="${i }"/><br />	
	</c:forEach>
</body>
</html>