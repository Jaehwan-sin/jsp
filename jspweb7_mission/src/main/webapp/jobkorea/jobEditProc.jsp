<%@page import="jobkorea.dao.JobNoticeDao"%>
<%@page import="jobkorea.vo.JobNotice"%>
<%@page import="java.sql.PreparedStatement"%>
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
<body>
<h2>jobEditProc</h2>
<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("c");
	String title = request.getParameter("title");
	String career = request.getParameter("career");

	JobNotice j = new JobNotice();
	j.setNo(no);
	j.setTitle(title);
	j.setCareer(career);
	
	JobNoticeDao dao = new JobNoticeDao();
	dao.update2(no,title,career);
	
	response.sendRedirect("jobDetail.jsp?c="+no);
%>
</body>
</html>
