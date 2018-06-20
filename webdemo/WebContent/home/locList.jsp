<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
</head>
<body>
 <table>
   <tr>
    <th>location_id</th><th>city</th>
   </tr>
   
   <c:forEach items="${aList}" var="dto">
    <tr>
     <td>${dto.location_id}</td>
     <td>${dto.city}</td>
    </tr>    
   </c:forEach>
 </table>
</body>
</html>