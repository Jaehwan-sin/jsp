<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>hobbyTest.jsp</h2>
<%
	String hakbun = request.getParameter("hakbun");
	String stupass = request.getParameter("stupass");	
	String stuhobby = request.getParameter("stuhobby");
	
 	String hobby = "";
	if(stuhobby.equals("운동")){
		hobby="운동";
	}else if(stuhobby.equals("음악듣기")){
		hobby="음악듣기";
	}else if(stuhobby.equals("게임")){
		hobby="게임";
	}else if(stuhobby.equals("독서")){
		hobby="독서";
	} 
%>

학번 : <%= hakbun %> <br />
비밀번호 : <%= stupass %> <br />
취미 : <%= stuhobby %> <br />

<% // 로그인 처리
	if(hakbun.equals("12") && stupass.equals("12")){
		session.setAttribute("hakbun", hakbun);
		session.setAttribute("stuhobby", stuhobby);
	}
		response.sendRedirect("hobbyForm.jsp");
%>
</body>
</html>