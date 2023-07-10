<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<td><a href="noticeDetail.do?c=${n.seq }">${n.title }</a></td> <!-- get방식으로 seq를 보내 그에 맞는 내용을 보이게끔한다. -->
		<td>${n.writer }</td>
		<td>${n.regdate }</td> <!-- 날짜형식이라 Date로 받는게 정확하다. -->
		<td>${n.hit }</td>
	</tr>
	
</c:forEach>	
	
</table>
<a href="noticeReg.do">글쓰기</a>

</body>
</html>

