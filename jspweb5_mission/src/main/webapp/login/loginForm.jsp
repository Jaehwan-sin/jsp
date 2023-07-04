<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function checkValue() {
		inputForm = eval("document.logininfo");
		if(!inputForm.id.value) {
			inputForm.id.focus();
			return false;
		} else if(!inputForm.password.value) {
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
<h2>LoginForm</h2>
<form action="loginProc.jsp" name="logininfo" method="post" onsubmit="return checkValue()">
	<table>
		<tr>
			<td bgcolor="orange">아이디</td>
			<td><input type="text" name="id" maxlength="50" /></td>
		</tr>
		<tr>
			<td bgcolor="orange">비밀번호</td>
			<td><input type="password" name="password" maxlength="50" /></td>
		</tr>
	</table>
	<input type="submit" value="LOGIN" />
	<input type="button" value="JOIN" onclick="goJoinForm()" />
</form>
<%
	String msg = request.getParameter("msg");
	if(msg!=null && msg.equals("0")) {
		out.println("<br>");
		out.println("<font color='red' size='5'>비밀번호 확인</font>");
	}else if(msg!=null && msg.equals("-1")) {
		out.println("<br>");
		out.println("<font color='red' size='5'>아이디 확인</font>");
	}
%>
</body>
</html>