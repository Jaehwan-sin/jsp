<%@page import="jobkorea.db.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jobRegProc</h2>
<%
	request.setCharacterEncoding("utf8");
	String company = request.getParameter("company");
	String title = request.getParameter("title");
	String career = request.getParameter("career");
	String work = request.getParameter("work");
	String academic_ability = request.getParameter("academic_ability");
	String location = request.getParameter("location");
	String time = request.getParameter("time");
	
	String sql = "insert into jobhm (no, work, company, title, career, academic_ability, location, time) values ((select max(to_number(no))+1 from jobhm),?,?,?,?,?,?,?)";
	
	Connection con = DBCon.getConnection();
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, work);
	pstmt.setString(2, company);
	pstmt.setString(3, title);
	pstmt.setString(4, career);
	pstmt.setString(5, academic_ability);
	pstmt.setString(6, location);
	pstmt.setString(7, time);
	pstmt.executeUpdate();
	
	response.sendRedirect("jobNotice.jsp");
%>
</body>
</html>
