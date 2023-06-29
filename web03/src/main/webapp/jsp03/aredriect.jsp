<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>aredirect.jsp</h2>

<%
// 제어권을 bredirect로 넘기겠다는 뜻, 로그인을 하면 어디로 가겠다에 활용가능
response.sendRedirect("bredirect.jsp");

%>
</body>
</html>

<!--
내장객체란? jsp에서 제공하는 객체,
사용 : 제공된 객체를 통해서 메소드 접근
jsp페이지가 서블릿으로 변환되면서 jsp 컨테이너가 자동으로 제공

종류
request / response / session / application 많이 씀
request 요청정보 저장객체
response 응답정보를 저장객체
out 출력스트림객체
session 하나의 웹브라우저단위
application 서버단위저장객체
pageContext 페이지 정보저장
page 페이지정보
config 설정정보
exception 예외처리 
-->