<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>IfTest</h2>
	<%
		int val = 6;
		if(val>5){
			String str = "변수 val이 5보다 크다.";
		
	%>
		<%=str %>
	
	<%
		}else {
			String str = "변수 val이 5보다 크지않다.";
	%>
		<%=str %>
	<%		
		}
	%>		
		
</body>
</html>