<%@page import="customer.dao.NoticeDao"%>
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
<h2>noticeDelProc</h2>

<%
	String seq = request.getParameter("c");
	
	
	NoticeDao dao = new NoticeDao();
	int del = dao.delete(seq);
	
	if(del>0){
		response.sendRedirect("notice.jsp");
	} else
		out.write("삭제오류");
	
	/* System.out.println("del cnt : "+del); */
	
%>

</body>
</html>