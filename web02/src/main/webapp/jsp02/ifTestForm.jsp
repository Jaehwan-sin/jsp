<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>ifTestForm.jsp</h1>
<h2>if else 좋아하는 색상</h2>
<form action="ifTest.jsp">
	<label for="name">이름</label>
	<input type="text" id="name" name="name" placeholder="홍길동" autofocus required /> <br />
	<label for="name">색상</label> <br />
	<select name="color" id="color">
		<option value="blue" selected>파랑</option>
		<option value="green">초록</option>
		<option value="red">빨강</option>
		<option value="yellow">노랑</option>
	</select> 
	<br />
	<input type="submit" value="send"/>
</form>
</body>
</html>