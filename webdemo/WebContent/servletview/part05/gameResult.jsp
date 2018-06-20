<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 	/* String res=(String)request.getAttribute("res");
    out.print(res); */
    
    //단열값만 파라미터로 넘길수 있다 .
     String res=request.getParameter("res");
    out.print(res); 
 %>
 
<%--  <%= res %> --%>
</body>
</html>
















