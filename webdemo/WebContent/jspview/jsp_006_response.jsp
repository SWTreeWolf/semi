<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
	
</script>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		if (id.equals("kim") && pwd.equals("1234")) {
	%>
	<!-- 서버에서 페이지이동 -->
	<jsp:forward page="jsp_006_logout.jsp" />
	<%
		} else {
			//서버와 클라이언트에서 페이지 이동
			//select, delete, insert etc... 트랜잭션 이용할때 사용
			response.sendRedirect("jsp_006_login.jsp");
			
			//out.println("<script>history.back();</script>");
			
		}
	%>
	<%-- <%if(블라블라){%>
			   <script type="text/javscript">
			      window.history.back();
			   </script>
			   
			   <%
			   }
			   %> --%>
</body>
</html>