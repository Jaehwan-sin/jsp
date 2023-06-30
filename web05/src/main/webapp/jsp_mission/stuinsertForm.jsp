<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>stuinsertForm</h2>
<form action="stuinsertPro.jsp">

	번호 : <input type="text" id="no" name="no" /> <br />
	이름 : <input type="text" id="name" name="name" /> <br />
	주소 : <input type="text" id="addr" name="addr" /> <br />
	학년 : <input type="text" id="grade" name="grade" /> <br /> 
	<!-- 학년 : <select name="학년" id="grade"> 
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
	</select> <br />  -->
	학과번호 : <input type="text" id="deptno" name="deptno" /> <br />
	학점 : <input type="text" id="score" name="score" /> <br />
	<input type="submit" value="업데이트" />

</form>

</body>
</html>