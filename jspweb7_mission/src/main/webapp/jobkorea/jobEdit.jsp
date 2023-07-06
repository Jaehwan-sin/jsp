<%@page import="jobkorea.db.DBCon"%>
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
<h2>jobEdit</h2>
<%
	String no = request.getParameter("c");
	String sql = "select no,work,company,title,career,academic_ability,prefer_basic,prefer_language,employment_type,salary,location,time,position from jobhm";
	
	Connection con = DBCon.getConnection();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next();
%>
<table width="1000">
	<tr><%=rs.getString("company") %></tr><br />
	<tr><textarea name="title" id="title" cols="60" rows="3"><%=rs.getString("title") %></textarea></tr>
	<hr />
	<tr>
		<td>지원자격</td>
		<td>근무조건</td>
	</tr>
	<tr>
		<td>경력</td><td><%=rs.getString("career") %></td>
		<td>급여</td><td><%=rs.getString("salary") %></td>
	</tr>
	<tr>
		<td>학력</td><td><%=rs.getString("prefer_basic") %></td>
		<td>지역</td><td><%=rs.getString("location") %></td>
	</tr>
</table>
</body>
</html>