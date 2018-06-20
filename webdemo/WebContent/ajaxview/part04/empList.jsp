<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="ajaxview/part04/jquery.js"></script>

<!--  $(document).ready(function(){
	
	
	$('#btn').on('click',function(){
location.href="/webdemo/empList2?data="+$('#data').val();
	});
}); -->


</head>
<body>


<div class="div">
<span>이름</span>
<input type="text" name="data" id="data"/>
<input type="button" value="commit" id="btn"/>
<div id="wrap">

<table>
<tr id="tr">
<th>employee_id</th><th>first_name</th><th>salary</th>
</tr>
<%-- <c:forEach var="dto" items="${requestScope.list}">
<tr>
<td>${dto.employee_id}</td><td>${dto.first_name}</td><td>${dto.salary}</td>
</tr>
</c:forEach> --%>

</table>
</div>
</div>
</body>
</html>