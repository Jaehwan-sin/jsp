<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>
<h2>sessionTest1.jsp</h2>
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
%>

	아이디 : <%=id %> <br />
	비밀번호 : <%=pass %> <br />

<%
/* 로그인 처리 id blue pw 1234 true*/

if(id.equals("blue") && pass.equals("1234")) {// 로그인 성공
	/* 성공하면 아이디를 세션에 담기 */
	//session.setAttribute("세션의 이름",밸류값)
	session.setAttribute("id",id);
	//브라우저의 저장공간인 session에 id라는 이름으로 저장하는것
} 
	//다시 폼으로 보내기
	response.sendRedirect("sessionTestForm1.jsp");
%>
</body>
</html>