<%@page import="db.DBCon"%>
<%@page import="java.sql.*"%>
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
		border : 2;
		width : 700px;
	}
	tr:nth-child(2n+1){
		background-color : #f2f2f2;
	}
	tr:first-child{
		font-weight : bold;
	}

</style>
<body>
<h2>bowlboard</h2>
<%
	String sql = "select bno,btitle,bcontent,bwriter,bdate,bcnt from bowlboard order by to_number(bno) desc";

	//Connection con = DBCon.getConnection();
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

<table>
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>글쓴이</td>
		<td>날짜</td>
		<td>조회</td>
	</tr>
<%
	while(rs.next()) {		
%>
	<tr>
		<td><%=rs.getString("bno") %></td>
		<td><a href="bowlDetail.jsp?c="<%=rs.getString("bno") %>><%=rs.getString("btitle") %></a></td>
		<td><%=rs.getString("bwriter") %></td>
		<td><%=rs.getDate("bdate") %></td>
		<td><%=rs.getString("bcnt") %></td>
	</tr>
	
<%-- <c:forEach items="${list }" var="b">
	<tr>
		<td>${b.bno }</td>
		<td>${b.btitle }</td>
		<td>${b.bwritter }</td>
		<td>${b.bdate }</td>
		<td>${b.bcnt }</td>
	</tr>
</c:forEach>	 --%>

<%
	}
%>
</table>
<hr />
<a href="bowlReg.jsp"><h3>글 등록하기</h3></a>

</body>
</html>
