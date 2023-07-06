<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="jobkorea.db.DBCon"%>
<%@page import="java.sql.Connection"%>
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
	}
	/* tr:nth-child(2n+1){
		background-color : #f2f2f2;
	} */
</style>
<body>
<h2>jobNotice</h2>
<%
	String sql = "select no,work,company,title,career,academic_ability,prefer_basic,prefer_language,employment_type,salary,location,time,position from jobhm";
	Connection con = DBCon.getConnection();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
%>
<table width="1600" border="1">
<%
	while(rs.next()){
%>
<tr>
	<td><%=rs.getString("company") %></td>
	<td><a href="jobDetail.jsp?c=<%=rs.getString("no") %>"><%=rs.getString("title") %></a></td>
	<td><%=rs.getString("career") %></td>
	<td>자소서 작성</td> 
</tr>

<tr>
	<td></td>
	<td><%=rs.getString("work") %></td>
	<td><%=rs.getString("academic_ability") %></td>
	<td>공채자료</td>
</tr>
<tr>
	<td></td>
	<td></td>
	<td><%=rs.getString("location") %></td>
	<td><%=rs.getString("time") %></td>
</tr>
<%
	}
%>

</table>
<hr />
<a href="jobReg.jsp">채용정보 등록하기</a>
</body>
</html>