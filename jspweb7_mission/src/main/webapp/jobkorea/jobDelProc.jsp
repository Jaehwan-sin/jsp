<%@page import="jobkorea.dao.JobNoticeDao"%>
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
<h2>jobDelProc</h2>

<%
String no = request.getParameter("c");


JobNoticeDao dao = new JobNoticeDao();
int del = dao.delete(no);

if(del>0){
	response.sendRedirect("jobNotice.jsp");
} else
	out.write("삭제오류");


/* Statement stmt = con.createStatement(); */


%>

</body>
</html>
