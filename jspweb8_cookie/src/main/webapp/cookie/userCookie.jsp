<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>userCookie</h2>
<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null) {
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("id")) {
				out.println("Cookie name : "+cookies[i].getName()+"<br>");
				out.println("Cookie Value : "+cookies[i].getValue());
			}
		}
	}
%>
</body>
</html>