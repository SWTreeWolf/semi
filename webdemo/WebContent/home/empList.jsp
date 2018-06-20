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
    <th>employee_id</th><th>first_name</th>
   </tr>
   
   <c:forEach items="${aList}" var="dto">
    <tr>
     <td>${dto.employee_id}</td>
     <td>${dto.first_name}</td>
    </tr>    
   </c:forEach>
 </table>
</body>
</html>