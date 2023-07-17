<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/jhReg.css" />
</head>
<body>
<h2>jhnoticeRegProc</h2>
<form action="jhnoticeRegProc.do" method="post" enctype="multipart/form-data">
<div id="table-container">
<table>
	<tr>
		<th id="title">
		제목 : <input type="text" name="jhtitle" />
		</th>
	</tr>
	<tr id="etc">
	<td>
		<label for="content">첨부파일 :</label> <input type="file" name="jhfile" /> <br />
		<label for="content">내용 :</label>
		<textarea name="jhcontent" id="content" cols="30" rows="10"></textarea>
	</td>  
	</tr>	
</table>
</div>
<br />
	<input type="hidden" name="jhid" value="${jhid }" />
	<input type="submit" value="SAVE" onclick = "location.href = 'jhnotice.do'"/>
	<input type="button" value="CANCEL" onclick = "location.href = 'jhnotice.do'" />

</form>
</body>
</html>