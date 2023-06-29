<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>hobbyForm.jsp</h2>

<%
	if(session.getAttribute("hakbun")==null) {
%>

<form action="hobbyTest.jsp">
	학번 :
	<input type="text" id="id" name="hakbun" placeholder="학번을 입력하세요" /> <br />
	비밀번호 :
	<input type="password" id="pass" name="stupass" placeholder="비밀번호를 입력하세요" /> <br />
	취미 :
	<select name="stuhobby" id="stuhobby">
		<option value="운동">운동</option>
		<option value="음악듣기">음악듣기</option>
		<option value="게임">게임</option>
		<option value="독서">독서</option>
	</select> <br />
	<input type="submit" value="login" />
</form>

<%
	} else {
%>

<form action="hobbylogout.jsp">
	<input type="submit" value="logout"/>
</form>

<%
	}
	out.print("session : "+session.getAttribute("hakbun"));
	%>
	<br />
	<%
	out.print("취미 : "+session.getAttribute("stuhobby"));
%>
</body>
</html>