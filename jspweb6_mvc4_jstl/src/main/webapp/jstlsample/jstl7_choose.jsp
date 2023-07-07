<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jstl7_choose</h2>
<%
	int ranNum = (int)(Math.random()*10);
	String grade = "a"+ranNum;
	System.out.println("grade : "+grade);
%>
<c:set value="<%=grade %>" var="grade"></c:set>
<c:choose>
	<c:when test="${grade=='a1' }">
		당신의 등급은 : A1
	</c:when>
	<c:when test="${grade=='a2' }">
		당신의 등급은 : A2
	</c:when>
	<c:when test="${grade=='a3' }"> 
		당신의 등급은 : A3
	</c:when>
	<c:otherwise>
		당신의 등급은 : 기타 등급입니다.
	</c:otherwise>
</c:choose>
</body>
</html>