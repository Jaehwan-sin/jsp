<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>requestForm</h2>

<form action="requestTest.jsp">
	<label for="name">이름</label>
	<input type="text" id="name" name="name" autofocus required/> <br />
	<label for="name">나이</label>
	<input type="text" id="age" name="age" min="20" max="99" required/> <br />
	<fieldset>
		<legend>성별</legend>
		<input type="radio" id="gender" name="gender" value="m" checked />
		<label for="gender">남</label>
		<input type="radio" id="gender" name="gender" value="f" />
		<label for="gender">여</label>
	</fieldset>
	<label for="hobby">취미</label>
	<select name="hobby" id="hobby">
		<option>잠자기</option>
		<option>무협지 보기</option>
		<option>애니 시청</option>
		<option>건프라</option>
	</select> <br />
	<input type="submit" value="send" />

</form>
</body>
</html>