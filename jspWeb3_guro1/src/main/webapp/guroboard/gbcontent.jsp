<%@page import="java.sql.*"%>
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
<h2>gbcontent</h2>
<%
	String no = request.getParameter("c");
	String sql = "select no,title,content,dept,writer,regdate,hit from guroboard where no="+no;

	/* DB연결 */
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:Xe";
	String user = "hr";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url,user,pw);
	/* 실행 */
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
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
				<td><%=rs.getString("no") %></td>
				<th class="left">조회수</th>
				<td><%=rs.getInt("hit") %></td>
			</tr>
			<tr>
				<th class="left">작성자</th>
				<td><%=rs.getString("writer") %></td>
				<th class="left">작성시간</th>
				<td><%=rs.getDate("regdate") %></td>
			</tr>
			<tr>
				<th class="left">제목</th>
				<td colspan="3"><%=rs.getString("title") %></td>
			</tr>
			<tr>
				<th class="left">내용</th>
				<td colspan="3" id="content"><%=rs.getString("content") %></td>
			</tr>
			<tr>
				<th class="left">첨부</th>
				<td colspan="3">첨부</td>
			</tr>
		</tbody>
</table>
<a href="gbEdit.jsp?c=<%=rs.getString("no") %>">수정하기</a>
<a href="gbDelete.jsp?c=<%=rs.getString("no") %>">삭제</a>
<a href="guroboard.jsp">목록</a>
</body>
</html>
<%
	rs.close();
	pstmt.close();
	con.close();
%>