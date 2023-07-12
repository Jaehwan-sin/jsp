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
	}
	tr:nth-child(2n+1){
		background-color : #f2f2f2;
	}
</style>
<body>
<h2>NOTICE</h2>
<c:if test="${empty sessionScope.uid }"> <!-- 로그인 진행 전 상태 -->
	<a href="../login/login.do">login</a>  |
	<a href="#">Join</a>
</c:if>
<c:if test="${not empty sessionScope.uid }"> <!-- 로그인이 된 상태 -->
	<a href="../login/logoutproc.jsp">logout</a>
</c:if>

<hr />


<form action="notice.do" method="get">

	<select name="f">
		<option value="title" ${param.f=="title"?"selected":"" }>제목</option>
		<option value="content" ${param.f=="content"?"selected":"" }>내용</option>
	</select>
	
	<!-- value 값은 검색창에 검색 후 그 검색어가 남게하는 코드 -->
	<input type="text" name="q" value="${query }" id="q" onclick="clearVal()"/>
	<input type="submit" value="검색" />
	<hr />
	
</form>

<table width="700" border="2" >
	<tr> 
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>

<c:forEach items="${list }" var="n">

	<tr>
		<td>${n.seq }</td>
		<td><a href="noticeDetail.do?c=${n.seq }&h=${n.hit }">${n.title }</a></td> <!-- get방식으로 seq를 보내 그에 맞는 내용을 보이게끔한다. -->
		<td>${n.writer }</td>
		<td>${n.regdate }</td> <!-- 날짜형식이라 Date로 받는게 정확하다. -->
		<td>${n.hit }</td>
	</tr>
	
</c:forEach>	
	
</table>
<hr />

<c:if test="${not empty sessionScope.uid }"> <!-- 로그인이 된 상태 -->
	<a href="noticeReg.do">글쓰기</a>
</c:if>

</body>
</html>

