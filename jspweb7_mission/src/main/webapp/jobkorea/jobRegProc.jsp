<%@page import="jobkorea.vo.jobNotice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	jobNotice j = new jobNotice();
	j.setTitle(company);
	j.setTitle(title);
	j.setTitle(career);
	j.setTitle(work);
	j.setTitle(academic_ability);
	j.setTitle(location);
	j.setTitle(time);
	
	jobNotice dao = new jobNotice();
	dao.write(j);
	
	response.sendRedirect("jobNotice.jsp");
%>
</body>
</html>