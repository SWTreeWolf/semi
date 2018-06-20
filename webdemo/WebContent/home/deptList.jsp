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
    <th>department_id</th><th>department_name</th>
   </tr>
   
   <c:forEach items="${aList}" var="dto">
    <tr>
     <td>${dto.department_id}</td>
     <td>${dto.department_name}</td>
    </tr>    
   </c:forEach>
 </table>
</body>
</html>