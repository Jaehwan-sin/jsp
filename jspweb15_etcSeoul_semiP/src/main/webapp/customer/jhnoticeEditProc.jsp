<%@page import="jh.customer.dao.JHNoticeDao"%>
<%@page import="jh.customer.vo.JHNotice"%>
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
<h2>jhEditProc</h2>

<%
	/* request.setCharacterEncoding("utf-8");
	String jhno = request.getParameter("c");
	String jhtitle = request.getParameter("jhtitle");
	System.out.println(jhtitle);
	String jhcontent = request.getParameter("jhcontent");
	
	String sql = "update jhetcseoul "+"set jhtitle=?,jhcontent=? where jhno="+jhno;

	Connection con = DBCon.getConnection();
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, jhtitle);
	pstmt.setString(2, jhcontent);
	pstmt.executeUpdate();
	
	response.sendRedirect("jhnoticeDetail.jsp?c="+jhno); */
	
	request.setCharacterEncoding("utf-8");
	String jhno = request.getParameter("c");
	String jhtitle = request.getParameter("jhtitle");
	String jhcontent = request.getParameter("jhcontent");
	
	JHNotice j = new JHNotice();
	j.setJhtitle(jhtitle);
	j.setJhcontent(jhcontent);
	j.setJhno(jhno);
	
	JHNoticeDao dao = new JHNoticeDao();
	dao.edit(jhtitle,jhcontent,jhno);
	
	response.sendRedirect("jhnoticeDetail.jsp?c="+jhno);
%>

</body>
</html>
