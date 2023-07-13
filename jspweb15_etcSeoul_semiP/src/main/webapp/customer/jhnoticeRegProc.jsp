<%@page import="jh.customer.db.DBCon"%>
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
<h2>jhnoticeRegProc</h2>
<%
	request.setCharacterEncoding("UTF-8");
	String jhtitle = request.getParameter("jhtitle");
	String jhwriter = request.getParameter("jhwriter");
	String jhcontent = request.getParameter("jhcontent");
	
	String sql = "insert into jhetcseoul values((select max(to_number(jhno))+1 from jhetcseoul),?,?,?,sysdate,0)";
	
	Connection con = DBCon.getConnection();
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, jhtitle);
	pstmt.setString(2, jhwriter);
	pstmt.setString(3, jhcontent);
	pstmt.executeUpdate();
	
	response.sendRedirect("jhnotice.jsp");
%>
</body>
</html>
<%
	pstmt.close();
	con.close();
%>

