<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>
<h2>sessionTest2</h2>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
%>

	아이디 : <%=id %> <br />
	비밀번호 : <%=pass %> <br />

<%
// response.sendRedirect("logout2.jsp");
%>
<!-- 포워딩 -->
<jsp:forward page="logout2.jsp" />
<!-- logout2.jsp로 이동해라 -->
</body>
</html>