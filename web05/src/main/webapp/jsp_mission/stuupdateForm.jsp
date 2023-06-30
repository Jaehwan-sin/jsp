<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>stuupdateForm</h2>

<form action="stuupdatePro.jsp">

	번호 : <input type="text" id="no" name="no" /> <br />
	이름 : <input type="text" id="name" name="name" /> <br />
	주소 : <input type="text" id="addr" name="addr" /> <br />
	학년 : <input type="text" id="grade" name="grade" /> <br />
	학과번호 : <input type="text" id="deptno" name="deptno" /> <br />
	학점 : <input type="text" id="score" name="score" /> <br />
	<input type="submit" value="데이터 수정" />

</form>
</body>
</html>