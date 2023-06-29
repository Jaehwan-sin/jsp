<%@page import="java.net.Inet4Address"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>requestTest</h2>

<%//값 받아오기
request.setCharacterEncoding("utf8");/* 값 받을때 한글이 깨지면 해결하는 명령어 */

String name = request.getParameter("name");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String hobby = request.getParameter("hobby");

if(gender.equals("m")){
	gender="남성";	
} else {
	gender="여성";	
}

/* 
url(Uniform Resource Locator)
uri(Uniform Resource Identifier) 식별자역할 
*/

String uri = request.getRequestURI();
StringBuffer url = request.getRequestURL();
String ctxPath = request.getContextPath();
String mod = request.getMethod();
String addr6 = request.getRemoteAddr();// IP ver6방식 주소
String addr4 = Inet4Address.getLocalHost().getHostAddress();// IP ver4방식 주소

%>

<!-- 값 출력하기 -->
이름 : <%=name %> <br />
나이 : <%=age %> <br />
성별 : <%=gender %> <br />
취미 : <%=hobby %> <br />

<!-- uri / url / ctxPath는 알아둘 것! -->
uri : <%=uri %> <br /> <!-- 파일경로 -->
url : <%=url %> <br /> <!-- 웹주소 -->
ctxPath : <%=ctxPath %> <br /> <!-- 프로젝트 이름 -->
mod : <%=mod %> <br /> <!-- get방식으로 전달, post방식도 있다-->
addr6 : <%=addr6 %> <br />
addr4 : <%=addr4 %> <br />
</body>
</html>