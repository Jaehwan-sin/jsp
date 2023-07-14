<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function jhlogoutProc() {
		location.href = "login/jhlogoutProc";
	}
</script>
</head>
<body>
<h2>JHMAINFORM</h2>
<%
	if(session.getAttribute("sessionID")==null) {
		response.sendRedirect("login/jhloginForm.jsp");
	} else {
%>
	<%=session.getAttribute("sessionID") %>님 로그인 되었습니다. <br /><br />
	<input type="button" value="jhlogout" onclick="jhlogoutProc()"/>
<%
	}
%>
</body>
</html>