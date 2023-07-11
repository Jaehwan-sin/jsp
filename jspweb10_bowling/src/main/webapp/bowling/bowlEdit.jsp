<%@page import="vo.Bowl"%>
<%@page import="dao.BowlDao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>bowlEdit</h2>

<form action="bowlEditProc.do" method="post">
<table class="twidth">
	<colgroup>
		<col width="15%" />
		<col width="35%" />
		<col width="15%" />
		<col width="35%" />
	</colgroup>
	<caption>Edit</caption>
		<tbody>
			<tr>
				<th class="left">글번호</th>
				<td>${b.bno }</td>
				<th class="left">조회수</th>
				<td>${b.bcnt }</td>
			</tr>
			<tr>
				<th class="left">작성자</th>
				<td>${b.bwriter }</td>
				<th class="left">작성시간</th>
				<td>${b.bdate }</td>
			</tr>
			<tr>
				<th class="left">제목</th>
				<td colspan="3">
				<input type="text" class="inp" name="title" value="${b.btitle }" />
				</td>
			</tr>
			<tr>
				<th class="left">내용</th>
				<td colspan="3" id="content">
				<textarea name="content" class="txt" >${b.bcontent }</textarea>
				</td>
			</tr>
			<tr>
				<th class="left">첨부</th>
				<td colspan="3">첨부</td>
			</tr>
		</tbody>
</table>
<input type="hidden" name="c" value="${b.bno }" />
<input type="submit" value="수정하기" />
<a href="bowlDetail.jsp?c=${b.bno }">취소</a>
</form>
</body>
</html>