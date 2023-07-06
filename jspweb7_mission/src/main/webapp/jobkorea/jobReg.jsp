<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table{
		border-collapse: collapse;
		text-align : center;
	}
	/* tr:nth-child(2n+1){
		background-color : #f2f2f2;
	} */
</style>
<body>
<h2>jobReg</h2>
<form action="jobRegProc.jsp" method="post">
	<table width="1600" border="1">

<tr>
	<td>회사 <input type="text" name="company" /></td>
	<td>제목 <input type="text" name="title" /></td>
	<td>경력 <input type="text" name="career" /></td>
	<td>자소서 작성</td> 
</tr>

<tr>
	<td></td>
	<td>work <input type="text" name="work" /></td>
	<td>대졸 <input type="text" name="academic_ability" /></td>
	<td>공채자료</td>
</tr>
<tr>
	<td></td>
	<td></td>
	<td>위치 <input type="text" name="location" /></td>
	<td>~언제까지 <input type="text" name="time" /></td>
</tr>
</table>
<hr />
<a href="jobRegProc.jsp">등록하기</a>
</form>
</body>
</html>