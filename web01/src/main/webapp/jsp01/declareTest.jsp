<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 주석 범위 지정 후 Ctrl + Shift + / 주석 해제는 Ctrl + Shift + \ -->


<%--
선언문 : <%! %> - 전역변수 선언
스크립트릿(코드블럭)(scriptlet) : <% %> - 자바 프로그래밍 쓸 수있다.
표현식 : <%= %> - 화면에 값을 출력 
--%>

<%
String str1 = "게임 ID : "+str2;
String username = "username : "+str2;
%>


<%!
String str2 = "blue";
%>

접속자 : <%=str1 %> <br>
접속자 : <%=str2 %> <br>
접속자 : <%=username %> <br>
</body>
</html>