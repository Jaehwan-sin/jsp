<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>
<h2>sessionTestForm1</h2>
<!-- 로그인 상태와 로그인 안된 상태 구분 -->

<%
	if(session.getAttribute("id")==null){// 로그인이 안된 상태
%>

<form action="sessionTest1.jsp">

	아이디 :
	<input type="text" id="id" name="id" placeholder="blue" /> <br />
	비밀번호 :
	<input type="password" id="pass" name="pass" placeholder="1234" /> <br />
	<input type="submit" value="login" />
	
</form>

<%
	} else {
%>
	<form action="logout.jsp">
		<input type="submit" value="logout" />
	</form>
<%
	}
	out.print("session : "+session.getAttribute("id"));
%>
</body>
</html>