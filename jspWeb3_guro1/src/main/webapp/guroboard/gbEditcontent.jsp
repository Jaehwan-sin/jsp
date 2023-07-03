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
<h2>gbEditcontent</h2>

<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("c");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	String sql = "update guroboard "+"set title=?, content=? where no="+no; 
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
	pstmt.executeUpdate();
	
	response.sendRedirect("gbcontent.jsp?c="+no);
%>
</body>
</html>
<%
	pstmt.close();
	con.close();
%>