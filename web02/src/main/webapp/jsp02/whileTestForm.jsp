<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>whileTestForm</h2>
<form action="whileTest.jsp" method="post">
	<label for="number">곱해질 값</label>
	<input type="number" name="number" required /> <br />
	<label for="number">곱해질 횟수</label>
	<input type="number" name="num" required />
	
	<input type="submit" value="send" />
	
	
	
</form>
</body>
</html>