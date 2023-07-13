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
<form action="jhnoticeRegProc.jsp" method="post">
<table>
	<tr>
		<th id="title">
		제목 : <input type="text" name="jhtitle" />
		</th>
	</tr>
	<tr id="etc">
	<td>
		작성자 : <input type="text" name="jhwriter" /> <br />
		내용 : 
		<textarea name="jhcontent" id="content" cols="30" rows="10"></textarea>
	</td>  
	</tr>	
</table>
	<input type="submit" value="save" />
	<input type="button" value="cancel" onclick = "location.href = 'jhnotice.jsp'" />

</form>
</body>
</html>