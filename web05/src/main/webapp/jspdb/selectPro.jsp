<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
	<h2>selectPro.jsp</h2>
	<h3>데이터 조회</h3>

	<table border="1" width="500">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>주소</td>
		</tr>
		<!-- 아래 tr을 반복 -->
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
			sql = "select id,pw,name,addr from member1";
			pstmt = conn.prepareStatement(sql);
			// 실행 Resultset으로 데이터 저장됨.
			rs = pstmt.executeQuery();
					
		} catch (Exception e) {
			out.print("삭제 실패");
		}

		while(rs.next()) {// while문으로 rs.next는 rs에 담긴 테이블의 정보를 보여줘라.
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
		</tr>
		<%
		}
		%>
	</table>
		<a href="insertForm.jsp">추가하기</a> &nbsp;&nbsp;
		<a href="updateForm.jsp">수정하기</a> &nbsp;&nbsp;
		<a href="deleteForm.jsp">삭제하기</a> &nbsp;&nbsp;
</body>
</html>