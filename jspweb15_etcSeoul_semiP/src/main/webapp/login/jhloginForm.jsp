<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/jhlogin_style.css" />
<script>

function checkValue() {
	inputForm = eval("document.jhlogininfo"); // logininfo의 정보를 객체로 가져오기
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
	location.href="../joinus/jhjoin.jsp";
}
</script>
</head>
<body>
<div id="wrap">
<h2>loginForm</h2>
<form action="jhloginproc.do" name="jhlogininfo" method="post" onsubmit="return checkValue()">
	
	<br />
	<table>
		<tr>
			<td bgcolor="black"><font color = "white">아이디</font></td>
			<td><input type="text" name="id" maxlength="40" /></td>
		</tr>
		<tr>
			<td bgcolor="black"><font color = "white">비밀번호</font></td>
			<td><input type="password" name="password" maxlength="40" /></td>
		</tr>
	</table>
	<br />
	<input type="submit" value="LOGIN" />
	<input type="button" value="JOIN" onclick="goJoinForm()" />
</form>
<%
	String msg = request.getParameter("msg");
	if(msg!=null && msg.equals("0")) {
		out.println("<br>");
		out.println("<font color='red' size='5'>비밀번호 확인</font>");
	} else if(msg!=null && msg.equals("-1")) {
		out.println("<br>");
		out.println("<font color='red' size='5'>아이디 확인</font>");
	}
%>
</div>
</body>
</html>