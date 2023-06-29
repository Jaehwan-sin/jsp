<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>lunchForm</h2>
<form action="lunchResult.jsp">
아이디 : <input type="text" id="id" name="id" autofocus required/> <br />
비밀번호 : <input type="password" id="pass" name="pass" required/> <br />
점심메뉴 : 
<select name="Lunch" id="Lunch">
	<option value="Jajangmyeon">짜장면</option>
	<option value="JJamBBong">짬뽕</option>
	<option value="Bokumbab">볶음밥</option>
</select> <br />

<select name="Lunch2" id="Lunch2">
	<option>짜장면</option>
	<option>짬뽕</option>
	<option>볶음밥</option>
</select> <br />

<input type="submit" value="send" />
</form>
</body>
</html>