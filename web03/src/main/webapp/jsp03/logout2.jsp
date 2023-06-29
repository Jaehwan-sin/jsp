<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>logout2.jsp</h2>
<!-- 로그아웃 처리 -->
<!-- 파람값 받기 -->
<%
String id = request.getParameter("id");
%>

id : <%=id %>

</body>
</html>