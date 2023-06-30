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
</head>
<body>
<h2>stuselectPro</h2>
<h3>데이터 조회</h3>

	<table border="1" width="700">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>주소</td>
			<td>학년</td>
			<td>학과번호</td>
			<td>학점</td>
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
		sql = "select no,name,addr,grade,deptno,score from studentinfo";
		pstmt = conn.prepareStatement(sql);
		// 실행 Resultset으로 데이터 저장됨.
		rs = pstmt.executeQuery();
				
	} catch (Exception e) {
		out.print("데이터 조회 실패");
	}
	
	while(rs.next()) {
	%>	
	
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %></td>
	</tr>
	<%
	}
	%>
	</table>
	<hr />
		<a href="stuinsertForm.jsp">데이터 추가하기</a> &nbsp;&nbsp;&nbsp;
		<a href="stuupdateForm.jsp">데이터 수정하기</a> &nbsp;&nbsp;&nbsp;
		<a href="studeleteForm.jsp">데이터 삭제하기</a> &nbsp;&nbsp;&nbsp;
		<a href="stufilter.jsp">데이터 정렬하기</a> &nbsp;&nbsp;&nbsp;
</body>
</html>