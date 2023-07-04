<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

function checkValue() {
	inputForm = eval("document.logininfo"); // logininfo의 정보를 객체로 가져오기
	if (!inputForm.id.value) {
		inputForm.id.focus();
		return false;
	}
	if (!inputForm.password.value) {
		inputForm.password.focus();
		return false;
	}
}

function goJoinForm() {
	location.href="../joinus/join.jsp";
}
</script>
</head>
<body>
<h2>loginForm</h2>
<form action="loginproc.jsp" name="logininfo" method="post" onsubmit="return checkValue()">
	<img src="../img/welcome.jpg" alt="wel_img" />
	<br /><br />
	<table>
		<tr>
			<td bgcolor="skyblue">아이디</td>
			<td><input type="text" name="id" maxlength="50" /></td>
		</tr>
		<tr>
			<td bgcolor="skyblue">비밀번호</td>
			<td><input type="text" name="password" maxlength="50" /></td>
		</tr>
	</table>
	<input type="submit" value="login" />
	<input type="button" value="join" onclick="goJoinForm()" />
</form>
</body>
</html>