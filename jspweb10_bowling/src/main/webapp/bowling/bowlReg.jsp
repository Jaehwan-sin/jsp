<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>bowlReg</h2>

<form action="bowlRegProc.do" method="post">

	제목 : <input type="text" name="title" /> <br />
	작성자 : <input type="text" name="writer" /> <br />
	내용 : 
	<textarea name="content" id="txtcontent" class="txtcontent" cols="40" rows="20">내용을 입력하세요.</textarea> <br />
	<input type="submit" value="save" />
	<input type="button" value="cancel" class="cancel"/>

</form>

</body>
</html>