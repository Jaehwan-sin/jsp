<%@page import="jh.customer.dao.JHNoticeDao"%>
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
<h2>jhnoticeDelProc</h2>
<%
	String jhno = request.getParameter("c");
	
	JHNoticeDao dao = new JHNoticeDao();
	dao.delete(jhno);
	
	response.sendRedirect("jhnotice.jsp");
%>
</body>
</html>