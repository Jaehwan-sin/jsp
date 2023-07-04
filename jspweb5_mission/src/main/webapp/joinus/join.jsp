<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>
<%
	if(request.getAttribute("errors")!=null) {
		List <String> errors = (List)request.getAttribute("errors");
		for(int i=0; i<errors.size(); i++) {
%>
	<%=errors.get(i) %> <br />
<%			
		}
	}
%>
</p>
<h2>Join</h2>
<form action="joinproc.jsp">
	<label for="id">아이디</label>
		<input type="text" name="id" />
		<input type="button" value="중복확인" /> <br />
		
	<label for="pass">비밀번호</label>
	<input type="password" name="pass" /> <br />
	
	<label for="pass2">비밀번호 확인</label>
	<input type="password" name="pass2" /> <br />
	
	<label for="name">이름</label>
	<input type="text" name="name" /> <br />
	
	<label for="gender">성별</label>
		<select name="gender" id="gender">
			<option value="남성">남성</option>
			<option value="여성">여성</option>
		</select> <br />
		
	<label for="year">생년월일</label>
	<input type="text" name="year" size="5" />년
	<input type="text" name="month" size="5" />월
	<input type="text" name="day" size="5" />일 <br />
	
	<label for="phone">핸드폰번호</label>
	<input type="tel" name="phone" /> 예 : 010-1234-5678 <br />
	
	<label for="email">이메일</label>
	<input type="text" name="email" /> <br />
	
	<label for="hobby">취미</label>
		<input type="checkbox" name="hobby" value="음악" /> 음악 
		<input type="checkbox" name="hobby" value="영화" /> 영화 
		<input type="checkbox" name="hobby" value="여행" /> 여행 <br />
		
	<input type="submit" value="확인" />
</form>
</body>
</html>