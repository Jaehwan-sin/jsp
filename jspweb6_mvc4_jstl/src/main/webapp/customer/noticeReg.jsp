<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>noticeReg</h2>

<form action="noticeRegProc.do" method="post">

	제목 : <input type="text" name="title" /> <br />
	첨부파일 : <input type="file" name="txtFile" /> <br />
	내용 : 
	<textarea name="content" id="txtcontent" class="txtcontent">내용을 입력하세요.</textarea> <br />
	<input type="submit" value="save" />
	<input type="button" value="cancel" class="cancel"/>

</form>
</body>
</html>