<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>makecookie</h2>
<!-- 쿠키는 웹사이트에 접속할 때 생성되는 정보를 임시로 저장하는 파일
쿠키의 사이즈는 4kb이하의 크기
쿠키의 목적은 웹사이트에 접속한 사용자의 정보를 유지하거나
사이트 접속한 사용자들이 쉽게 접속할 수 있도록 정보제공 -->
<%
	Cookie cookie = new Cookie("id","master");
	cookie.setMaxAge(60*1);//1분동안 저장
	response.addCookie(cookie);//response에 쿠키를 추가
	out.println("쿠키 생성됨");
%>

<form action="userCookie.jsp">
	<input type="submit" value="쿠키 확인하기" />
</form>

</body>
</html>