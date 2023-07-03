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
</head>
<style>
	table{
		border-collapse: collapse;
		text-align : center;
	}
</style>
<body>
<h2>NOTICE</h2>
<%
	String sql = "select seq,title,writer,content,regdate,hit from notices order by to_number(seq) desc";
	/* DB연결 */
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url,user,pw);
	/* 실행 */
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
%>
<table width="700" border="2" >
	<tr> 
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
<%
	while(rs.next()){	
%>
	<tr>
		<td><%=rs.getString("seq") %></td>
		<td><a href="noticeDetail.jsp?c=<%=rs.getString("seq") %>"><%=rs.getString("title") %></a></td> <!-- get방식으로 seq를 보내 그에 맞는 내용을 보이게끔한다. -->
		<td><%=rs.getString("writer") %></td>
		<td><%=rs.getDate("regdate") %></td> <!-- 날짜형식이라 Date로 받는게 정확하다. -->
		<td><%=rs.getInt("hit") %></td>
	</tr>
<%
	}
%>	
</table>
<a href="noticeReg.jsp">글쓰기</a>

</body>
</html>
<%
	rs.close();
	stmt.close();
	con.close();
%>
