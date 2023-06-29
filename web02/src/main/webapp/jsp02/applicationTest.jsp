<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>
	<h1>applicationTest</h1>
<%
	String info = application.getServerInfo();
	String path = application.getRealPath("/");
	application.log("로그기록 : "+info);
%>
웹컨테이너 버전이름 : <%=info %> <br />
웹어플리케이션 로컬 시스템 경로 : <%=path %>
</body>
</html> 