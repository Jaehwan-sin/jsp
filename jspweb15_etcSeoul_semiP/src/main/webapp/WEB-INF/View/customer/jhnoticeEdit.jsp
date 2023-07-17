<%@page import="jh.customer.vo.JHNotice"%>
<%@page import="jh.customer.db.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/jhdetail.css" />
</head>
<body>
<h2>jhEdit</h2>
<script>
	function cancelbtn() {
		history.back();
	}
</script>
<form action="jhnoticeEditProc.do" method="post">
<table>
	<tr>
		<td id="title">
			<div id="jhtitle" >제목</div> <input type="text" name="jhtitle" value="${j.jhtitle }" />
		</td>
	</tr>
	<tr id="etc">
		<td>${j.jhdate } |</td> 
		<td>${j.jhwriter} |</td>
		<td>${j.jhhit}  </td>
	</tr>
	<td id="line">
		<div id="jhcontent">내용</div> <br />
		<textarea name="jhcontent" cols="30" rows="10">${j.jhcontent }</textarea>
	</td>	
</table>
	<hr />
<div id="button">
	<input type="hidden" name="c" value="${j.jhno }" />
	<input type="submit" value="수정하기" />
	<input type="button" value="취소" onclick="cancelbtn()"/>
</div>
</form>
</body>
</html>