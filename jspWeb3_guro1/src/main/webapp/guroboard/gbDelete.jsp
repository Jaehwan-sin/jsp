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
<h2>gbDelete</h2>
<%
	String no = request.getParameter("c");
	String sql = "delete from guroboard where no="+no;
	
	/* DB연결 */
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url,user,pw);
	/* 실행 */
	PreparedStatement pstmt = con.prepareStatement(sql);
	int del = pstmt.executeUpdate();
	
	if(del>0){
		response.sendRedirect("guroboard.jsp");
	} else
		out.write("삭제오류");
%>
</body>
</html>