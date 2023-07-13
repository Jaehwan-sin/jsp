<%@page import="jh.customer.vo.JHNotice"%>
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
<link rel="stylesheet" href="../css/jhdetail.css" />
</head>
<body>
<h2>jhnoticeDetail</h2>
<%
	String jhno = request.getParameter("jhno");
/* 	String sql = "select jhno,jhtitle,jhwriter,jhcontent,jhdate,jhhit from jhetcseoul where jhno="+jhno;
	
	Connection con = DBCon.getConnection();

	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next(); */
/* 	JHNoticeDao dao = new JHNoticeDao();
	JHNotice j = dao.getNotice(jhno); */
	
	JHNotice j = (JHNotice)request.getAttribute("j");
%>
<form action="JHEditProcController.jsp">
<table>
	<tr>
		<th id="title"><h3><%=j.getJhtitle() %></h3></th>
	</tr>
	<tr id="etc">
	<td><%=j.getJhdate() %>  |</td>  
	<td><%=j.getJhwriter() %>  |</td>
	<td><%=j.getJhhit() %>  </td>
	</tr>
	<td id="line"><%=j.getJhcontent() %>  </td>	
</table>
	<hr />
<input type="button" value="목록" onclick = "location.href = 'jhnotice.jsp'" id="list" />
<a href="jhnoticeEdit.do?c=<%=j.getJhno() %>">수정</a>
<a href="jhnoticeDelProc.do?c=<%=j.getJhno() %>">삭제</a>
</form>
</body>
</html>