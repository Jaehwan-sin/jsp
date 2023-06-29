<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>hobbylogout.jsp</h2>
<!-- 로그아웃 처리 -->
<%
session.invalidate();//모든 세션제거
response.sendRedirect("hobbyForm.jsp");//로그인 폼으로 다시 이동
%>
</body>
</html>