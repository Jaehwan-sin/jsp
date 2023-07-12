<%@page import="vo.Bowl"%>
<%@page import="dao.BowlDao"%>
<%@page import="db.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function clearVal() {
		var inputVal = document.getElementById("q")
		inputVal.value="";
	}
</script>
</head>
<style>
	table{
		border-collapse: collapse;
		text-align : center;
		border : 2;
		width : 700px;
	}
	tr:nth-child(2n+1){
		background-color : #f2f2f2;
	}
	tr:first-child{
		font-weight : bold;
	}
</style>
<body>
<h2>bowlboard</h2>
<%
	String sql = "select bno,btitle,bcontent,bwriter,bdate,bcnt from bowlboard order by to_number(bno) desc";

	Connection con = DBCon.getConnection();
	
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);

	BowlDao dao = new BowlDao();
	Bowl b = new Bowl();

%> 
<c:if test="${empty sessionScope.uid }">
	<a href="../login/login.do">LOGIN</a>
</c:if>
<c:if test="${not empty sessionScope.uid }">
	<a href="../login/logoutproc.do">LOGOUT</a>
</c:if>

<form action="bowlboard.do" method="get">

	<select name="f">
		<option value="btitle" ${param.f=="btitle"?"selected":"" }>제목</option>
		<option value="bcontent" ${param.f=="bcontent"?"selected":"" }>내용</option>
	</select>
	
	<input type="text" name="q" value="${query }" id="q" onclick="clearVal()" />
	<input type="submit" value="검색" />
	<hr />
</form>
<table>
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>글쓴이</td>
		<td>날짜</td>
		<td>조회</td>
	</tr>

<%-- <c:forEach items="${list }" var="b">
	<tr>
		<td>${b.bno }</td>
		<td><a href="bowlDetail.do?c=${b.bno }&h=${b.bcnt}"></a>${b.btitle }</td>
		<td>${b.bwritter }</td>
		<td>${b.bdate }</td>
		<td>${b.bcnt }</td>
	</tr>
</c:forEach> --%>

<%
	while(rs.next()) {
%>
	<tr>
		<td><%=rs.getString("bno") %></td>
		<td><a href="bowldetail.do?c=<%=rs.getString("bno") %>"><%=rs.getString("btitle") %></a></td>
		<td><%=rs.getString("bwriter") %></td>
		<td><%=rs.getDate("bdate") %></td>
		<td><%=rs.getString("bcnt") %></td>
	</tr>
<%
	}
%>
</table>
<hr />
<a href="bowlReg.do"><h3>글 등록하기</h3></a>

</body>
</html>
