<%@page import="customer.vo.Notice"%>
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
<h2>noticeEditProc</h2>
<!-- DB에 해당 글을 수정 -->

<%
	request.setCharacterEncoding("utf-8");
	String seq = request.getParameter("c");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	Notice n = new Notice();
	n.setTitle(title);
	n.setContent(content);
	n.setSeq(seq);
	
	NoticeDao dao = new NoticeDao();
	//dao.update(n);//모델로 보내는 형식
	dao.update2(seq,title,content);
	
	response.sendRedirect("noticeDetail.jsp?c="+seq);
%>

</body>
</html>