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
<link rel="stylesheet" href="../css/jhdetail.css" />
</head>
<body>
<h2>jhEdit</h2>
<%
	/* String jhno = request.getParameter("c");
	String sql = "select jhno,jhtitle,jhwriter,jhcontent,jhdate,jhhit from jhetcseoul where jhno="+jhno;
	
	Connection con = DBCon.getConnection();

	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next(); */
	JHNotice j = (JHNotice)request.getAttribute("j");
%>
<form action="jhnoticeEditProc.do" method="post">
<table>
	<tr>
		<th id="title">
		<input type="text" name="jhtitle" value="<%=j.getJhtitle() %>" />
		</th>
	</tr>
	<tr id="etc">
	<td><%=j.getJhdate() %>  |</td>  
	<td><%=j.getJhwriter() %>  |</td>
	<td><%=j.getJhhit() %>  </td>
	</tr>
	<td id="line">
		<textarea name="jhcontent" id="jhcontent" cols="30" rows="10"><%=j.getJhcontent() %></textarea>
	</td>	
</table>

	<hr />
<input type="hidden" name="c" value="<%=j.getJhno() %>" />
<input type="submit" value="수정하기" />
<a href="jhnoticeDetail.jsp?c=<%=j.getJhno() %>">취소</a>

</form>
</body>
</html>