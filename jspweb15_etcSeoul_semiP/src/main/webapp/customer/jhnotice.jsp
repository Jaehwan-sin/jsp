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
<script>
	function clearVal() {
		var inputVal = document.getElementById("q")
		inputVal.value="";
	}
</script>
<link rel="stylesheet" href="../css/jhstyle.css" />
</head>
<body>
<h2>jhnotice</h2>
<c:if test="${empty sessionScope.jhid }">
	<input type="button" value="LOGIN" onclick="location.href = '../login/login.do'" id="writebtn"/>
	<input type="button" value="JOIN" onclick = "location.href = '../joinus/jhjoin.jsp'" id="writebtn" />	
</c:if>
<c:if test="${not empty sessionScope.jhid }">
	<!-- <a href="../login/jhlogoutproc.do">LOGOUT</a> -->
	<input type="button" value="LOGOUT" onclick="location.href = '../login/jhlogoutproc.do'" id="writebtn"/>
	<input type="button" value="글쓰기" onclick = "location.href = 'jhnoticeReg.do'" id="writebtn" />
</c:if>
<h3 id="notice">공지사항</h3> 

<table>

<c:forEach items="${list }" var="j">

	<tr>
		<th>
			<a href="jhnoticedetail.do?c=${j.jhno }&h=${j.jhhit }">${j.jhtitle}</a>
		</th>	
	</tr>
	<tr id="etc">
		<td>${j.jhdate }</td>
		<td>${j.jhwriter }</td>
		<td>${j.jhhit }</td>
	</tr>

</c:forEach>

</table>
<hr />
<form action="jhnotice.do" id="search" method="get">
	<select name="f">
		<option value="jhtitle" ${param.f=="jhtitle"?"selected":"" }>제목</option>
		<option value="jhcontent" ${param.f=="jhcontent"?"selected":"" } >내용</option>
		<option value="writer" >작성자</option>
	</select>
	
	<input type="text" name="q" value="${query }" id="q" onclick="clearVal()" />
	<input type="submit" value="검색" id="searchbtn"/>
</form>
</body>
</html>