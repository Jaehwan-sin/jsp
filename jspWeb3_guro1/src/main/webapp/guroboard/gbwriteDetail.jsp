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
<h2>gbwriteDetail</h2>
<%
	request.setCharacterEncoding("utf-8");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String dept = request.getParameter("dept");
	String writer = request.getParameter("writer");
	
	String sql = "insert into guroboard values((select max(to_number(no))+1 from guroboard),?,?,?,?,sysdate,0)";
	/* DB연결 */
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url,user,pw);
	/* 실행 */
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, dept);
	pstmt.setString(4, writer);
	pstmt.executeUpdate();
	
	response.sendRedirect("guroboard.jsp");
%>
</body>
</html>
<%
	pstmt.close();
	con.close();
%>