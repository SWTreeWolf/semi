<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl_08_foreach</title>
</head>
<body>
<%
		List<Integer> aList=new ArrayList<Integer>();
		aList.add(new Integer(10));
		aList.add(new Integer(20));
		aList.add(new Integer(30));
		aList.add(new Integer(40));
		aList.add(new Integer(50));
		
		for(int i=0; i<aList.size(); i++){
			out.print("<p>"+aList.get(i)+"</p>");
		}
		
		request.setAttribute("aList", aList);
%>
<hr/>
<c:forEach items="${requestScope.aList}" var="data">
<p> <c:out value="${data}"/> </p>
</c:forEach>

</body>
</html>