<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_01</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
</head>
<body>
<%--
el_jstl 라이브러리 추가하기 위한 방법.
1. C:\job\util\apache-tomcat-8.5.31\webapps\examples\WEB-INF\lib 폴더내
2개의 jar파일 복사
2. [해당 프로젝트]\webContent\WEB-INF\lib

EL(Expression Language) : 표현언어
1. jsp스크립트를 대신해서 속성값들을 편리하게 출력할 수
   있도록 제공되는 언어이다.
2. ${} 
--%>

<%
		//	scope(영역)-데이터를 참조할 수 있도록 저장해놓은 공간
		// request, session 영역에서 많이 사용됨
		
		//page영역에 p1이름으로 page값이 저장된다.
		pageContext.setAttribute("p1", "page");

		//request영역에 p2이름으로 request값이 저장된다.
		request.setAttribute("p2", "request");

		//session영역에 p3이름으로 session값이 저장된다.
		session.setAttribute("p3", "session");

		//application p4이름으로 application값이 저장된다.
		application.setAttribute("p4", "application");
%>

<p>
	${pageScope.p1} / ${requestScope.p2} 
	/ ${sessionScope.p3} / ${applicationScope.p4 }
</p>
<!-- 속성값을 가져올때 영역을 명시하지 않으면
	 page -> request -> session -> application순으로 검색한다. -->
<p>${p3}</p>
</body>
</html>