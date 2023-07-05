<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function loginCheck(ff) {
		window.open("login_check.jsp","","width=300,hieght=200,titlebar=0");
	}
</script>
</head>
<body>
<h2>LOGIN</h2>
<form action="" name="frm">
	<table>
		<tr>
			<td>아이디 <input type="text" id="id" name="id" size="8" /></td>
			<td rowspan="2">
				<input type="button" value="Login" onclick="loginCheck(this.form)" />
			</td>
		</tr>
		<tr>
			<td>비밀번호 <input type="password" id="pwd" name="pwd" size="8" /></td>
		</tr>
	
	</table>


</form>
</body>
</html>