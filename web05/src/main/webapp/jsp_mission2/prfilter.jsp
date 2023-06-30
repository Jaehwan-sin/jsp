<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#table{
		text-align: center;
		width : 700px; height : 300px;
	}
</style>
</head>
<body>
<h2>prfilter</h2>
<h3>데이터 조회</h3>

	<table id="table" border= 2px solid red;>
		<tr>
			<td>상품번호</td>
			<td>상품명</td>
			<td>상품간략소개</td>
			<td>상품가격</td>
			<td>등록일</td>
		</tr>
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";

	try {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String driver = "oracle.jdbc.driver.OracleDriver";
		String user = "hr";
		String pass = "123456";
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, pass);

		/* 테이블의 모든 정보 가져오기 */
		sql = "select pno,pname,pinfo,pprice,pdate from productinfo order by pno";
		pstmt = conn.prepareStatement(sql);
		// 실행 Resultset으로 데이터 저장됨.
		rs = pstmt.executeQuery();
				
	} catch (Exception e) {
		out.print("데이터 조회 실패");
	}
	
	while(rs.next()) {
	%>	
	
	<tr>
		<td><%=rs.getString("pno") %></td>
		<td><%=rs.getString("pname") %></td>
		<td><%=rs.getString("pinfo") %></td>
		<td><%=rs.getString("pprice") %></td>
		<td><%=rs.getString("pdate") %></td>
	</tr>
	<%
	}
	%>
	</table>
	<hr />
		<a href="prinsertForm.jsp">데이터 추가하기</a> &nbsp;&nbsp;&nbsp;
		<a href="prupdateForm.jsp">데이터 수정하기</a> &nbsp;&nbsp;&nbsp;
		<a href="prdeleteForm.jsp">데이터 삭제하기</a> &nbsp;&nbsp;&nbsp;
		
</body>
</html>