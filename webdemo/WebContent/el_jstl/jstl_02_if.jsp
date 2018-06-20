<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_02_if</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
</head>
<body>
<%
	int num = 10;
	if(num % 2 == 0)
		out.print("even");
	if(num % 2 == 1)
		out.print("odd");
%>
<hr />
<%--
	<c:if test="${조건식}" var="변수명" scope="범위" >
	</c:if>
		var, scope은 생략할 수 있다.
		scope생략하면 기본값은 page이다. (자세한건  jspview/help 폴더내에 scope이미지 참조)  
 --%>

<c:set var="num" value="10"/>
<c:if test="${num%2==0}"> <!--test="${num%2==0}\\s" 불가(\\s: 공백을 의미)   -->
	<c:out value="even" />
</c:if>
<c:if test="${num%2==1}">
	<c:out value="odd"/>
</c:if>


</body>
</html>