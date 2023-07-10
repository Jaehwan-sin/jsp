<%@page import="customer.vo.Notice"%>
<%@page import="customer.dao.NoticeDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<h2>noticeDetail</h2>

<table class="twidth">
	<colgroup>
		<col width="15%" />
		<col width="35%" />
		<col width="15%" />
		<col width="35%" />
	</colgroup>
	<caption>Detail</caption>
		<tbody>
			<tr>
				<th class="left">글번호</th>
				<%-- <td><%=n.getSeq() %></td> --%>
				<!-- EL 태그로 불러오기 -->
				<!-- EL태그를 사용하기위해선 https://tomcat.apache.org/download-taglibs.cgi 의 el태그를 다운받아서 lib폴더에 넣어야 작동한다. -->
				<td>${n.seq}</td>
				<th class="left">조회수</th>
				<td>${n.hit}</td>
			</tr>
			<tr>
				<th class="left">작성자</th>
				<td>${n.writer}</td>
				<th class="left">작성시간</th>
				<td>${n.regdate}</td>
			</tr>
			<tr>
				<th class="left">제목</th>
				<td colspan="3">${n.title}</td>
			</tr>
			<tr>
				<th class="left">내용</th>
				<td colspan="3" id="content">${n.content}</td>
			</tr>
			<tr>
				<th class="left">첨부</th>
				<td colspan="3">첨부</td>
			</tr>
		</tbody>
</table>
<a href="noticeEdit.do?c=${n.seq}">수정하기</a>
<a href="noticeDelProc.do?c=${n.seq}">삭제</a>
<a href="notice.jsp">목록</a>
</body>
</html>