<%@page import="jh.customer.db.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/jhstyle.css" />
</head>
<body>
<h2>jhnotice</h2>
<h3 id="notice">공지사항</h3>
<a href="#">로그인</a>  | 
<a href="#">회원가입</a>
<input type="button" value="글쓰기" onclick = "location.href = 'jhnoticeReg.jsp'" id="writebtn" />
<%
	String sql = "select jhno,jhtitle,jhwriter,jhcontent,jhdate,jhhit from jhetcseoul order by jhno desc";

	Connection con = DBCon.getConnection();

	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);

%>
<table>

<%-- <c:forEach items="${list }" var="j">

	<tr>
		<th>${j.jhtitle}</th>
	</tr>
	<tr id="etc">
		<td>${j.jhdate }</td>
		<td>${j.jhwriter }</td>
		<td>${j.jhhit }</td>
	</tr>

</c:forEach> --%>

<%
	while(rs.next()) {
%>
	<tr>
		<th id="title"><a href="jhnoticeDetail.do?c=<%=rs.getString("jhno") %>"><%=rs.getString("jhtitle") %></a></th>
	</tr>
	<tr id="etc">
	<td><%=rs.getDate("jhdate") %>  |</td>  
	<td><%=rs.getString("jhwriter") %>  |</td>
	<td ><%=rs.getString("jhhit") %>  </td>
	</tr>	
<%
	}
%>
</table>
<hr />
<form action="" id="search">
	<select name="f">
		<option value="title" >제목</option>
		<option value="content" >내용</option>
		<option value="writer" >작성자</option>
	</select>
	
	<input type="text" name="q" id="q" />
	<input type="submit" value="검색" id="searchbtn"/>
</form>
</body>
</html>