<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp_008_directive_include</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
</head>
<body>

<!-- include directive : (merge개념) 지정된 페이지에서의 자원을 가져와 java source로 바뀐 뒤 compile 이루어짐

 src : C:\job\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work
 \Catalina\localhost\webdemo\org\apache\jsp\jspview\jsp_005f008_005fdirective_005finclude_jsp.java
 
 확인바람 (tmp0에 없으면 다른 tmp$에서 참조)
-->
<!-- include action : 각각의 결과값을 이루어짐 -->
<%@ include file ="jsp_008_directive_value.jsp" %>

<%
	//include지시어(directive)
	//jsp_008_directive_value.jsp 페이지에 자원을 현재페이지에서
	//사용할 수 있도록 페이지를 include
	int x=20;
	out.print(x+y);
%>
</body>
</html>