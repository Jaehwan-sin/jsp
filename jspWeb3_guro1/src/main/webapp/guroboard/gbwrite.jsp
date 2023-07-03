<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h2>gbwrite</h2>
<form action="gbwriteDetail.jsp">
	제목 : <input type="text" name="title" width = "500"/> <br />
	작성자 : <input type="text" name="writer" /> <br />
	부서 : <input type="text" name="dept" /> <br />
	첨부파일 : <input type="file" name="file"/> <br />
	내용 :
	<textarea name="content" id="content">내용을 입력하세요.</textarea> <br />
	<input type="submit" value="저장" />
	<input type="button" value="취소" class="cancel" />
</form>
</body>
</html>