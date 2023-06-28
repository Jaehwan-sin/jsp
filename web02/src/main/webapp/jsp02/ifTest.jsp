<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String name = request.getParameter("name");// 값을 받는다. ""는 앞에서 name으로 보내줬기에 그대로 사용해야한다.
String color = request.getParameter("color");// 값을 받는다. ""는 앞에서 color로 보내줬기에 그대로 사용해야한다.
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>ifTest.jsp</h1>
이름 : <%=name %> <br />
색상 : <%=color %> 
</body>
</html>