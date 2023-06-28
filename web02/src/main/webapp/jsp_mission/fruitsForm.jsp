<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>fruitsForm.jsp</h2>
<h3>좋아하는 과일 선택</h3>
<form action="fruitsResult.jsp">
	<label for="name">이름</label>
	<input type="text" id="name" name="name" placeholder="이름을 입력하세요."
	autofocus required/> <br />
	<label for="name">나이</label>
	<input type="text" id="age" name="age" placeholder="나이를 입력하세요."
	autofocus required/>
	<label for="fruits"></label> <br />
	<select name="fruits" id="fruits">
		<option value="apple">사과</option>
		<option value="banana">바나나</option>
		<option value="grape">포도</option>
		<option value="strawberry">딸기</option>
		<option value="SJH">신재환깃허브풀테스트 0628 2119</option>
	</select> <br />
	<input type="submit" value="send" />
</form>
</body>
</html>