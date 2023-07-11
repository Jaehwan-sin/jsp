<%@page import="java.sql.*"%>
<%@page import="db.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="vo.Bowl"%>
<%@page import="dao.BowlDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>bowlDetail</h2>
<%
	String bno = request.getParameter("c");
		
	BowlDao dao = new BowlDao();
	Bowl b = dao.getboard(bno);
%>
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
				<%-- <td>${b.bno}</td> --%>
				<td><%=b.getBno() %></td>
				<th class="left">조회수</th>
				<%-- <td>${b.bcnt}</td> --%>
				<td><%=b.getBcnt() %></td>
			</tr>
			<tr>
				<th class="left">작성자</th>
				<%-- <td>${b.bwriter}</td> --%>
				<td><%=b.getBwriter() %></td>
				<th class="left">작성시간</th>
				<%-- <td>${b.bdate}</td> --%>
				<td><%=b.getBdate() %></td>
			</tr>
			<tr>
				<th class="left">제목</th>
				<%-- <td colspan="3">${b.btitle}</td> --%>
				<td colspan="3"><%=b.getBtitle() %></td>
			</tr>
			<tr>
				<th class="left">내용</th>
				<%-- <td colspan="3" id="content">${b.bcontent}</td> --%>
				<td colspan="3" id="content"><%=b.getBcontent() %></td>
			</tr>
			<tr>
				<th class="left">첨부</th>
				<td colspan="3">첨부</td>
			</tr>
		</tbody>
</table>
<hr />
<a href="bowlEdit.do?c=<%=b.getBno() %>">수정하기</a>
<a href="bowlDelProc.do?c=<%=b.getBno() %>">삭제</a>
<a href="bowlboard.jsp">목록</a>
</body>
</html>