<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
<!--  스크립트릿(SCRIPTLET) : 자바소스 구현 -->
<%
//HttpServletRequest request=new HttpServeltRequest();
	String fname=(String)request.getAttribute("fname");
%>

<!-- 표현식(expression) : 변수나 메소드를 호출해서 출력 -->
<p><%=  fname%></p>
</body>
</html>