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

<form action="sessionTest1.jsp">
	아이디 :
	<input type="text" id="id" name="id" placeholder="blue" /> <br />
	비밀번호 :
	<input type="password" id="pass" name="pass" placeholder="blue" /> <br />
	<input type="submit" value="login" />
	
	
</form>

<%
out.print("session : "+session.getAttribute("id"));
%>
</body>
</html>