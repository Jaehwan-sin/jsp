<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/guroboardstyle.css" />
</head>
<body>
<h2>guroboard</h2>
<%
	String sql = "select no,title,content,dept,writer,regdate,hit from guroboard order by to_number(no) desc";
	/* DB연결 */
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url,user,pw);
	/* 실행 */
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);

%>
<table id="guroboard" width="1000" border="2">
	<tr id="boardtitle">
		<td>번호</td>
		<td>제목</td>
		<td>부서</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
		<td>파일</td>
	</tr>
<%
	while(rs.next()){
%>	
	<tr id="text">
		<td><%=rs.getString("no") %></td>
		<td><a href="gbcontent.jsp?c=<%=rs.getString("no") %>"><%=rs.getString("title") %></a></td>
		<td><%=rs.getString("dept") %></td>
		<td><%=rs.getString("writer") %></td>
		<td><%=rs.getDate("regdate") %></td>
		<td><%=rs.getInt("hit") %></td>
		<td><img src="../img/pdf.png" alt="pdf이미지" /></td>
	</tr>
<%
	}
%>
</table>
<!-- <a href="gbwrite.jsp">글쓰기</a> -->
<button id="btn"><a href="gbwrite.jsp" >글쓰기</a></button>
</body>
</html>
<%
	rs.close();
	pstmt.close();
	con.close();
%>