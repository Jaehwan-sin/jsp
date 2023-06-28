<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>선언문 샘플</h2>
	<%!
		String ID = "blue";
		public String getId(){ 
			return ID;
		}
	%>
	
	<h2>id변수 : <%=ID %></h2>
	<h2>메소드 접근 : <%=getId() %></h2>
		
</body>
</html>