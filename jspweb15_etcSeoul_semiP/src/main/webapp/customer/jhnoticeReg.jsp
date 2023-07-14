<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jhnoticeRegProc</h2>
<form action="jhnoticeRegProc.do" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<th id="title">
		제목 : <input type="text" name="jhtitle" />
		</th>
	</tr>
	<tr id="etc">
	<td>
		첨부파일 : <input type="file" name="jhfile" /> <br />
		내용 : 
		<textarea name="jhcontent" id="content" cols="30" rows="10"></textarea>
	</td>  
	</tr>	
</table>
	<input type="hidden" name="jhuid" value="${jhuid }" />
	<input type="submit" value="save" onclick = "location.href = 'jhnotice.do'"/>
	<input type="button" value="cancel" onclick = "location.href = 'jhnotice.do'" />

</form>
</body>
</html>