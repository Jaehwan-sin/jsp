<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jstl_foreach</h2>
<%
	List<String> nameList=new ArrayList<String>(Arrays.asList("이름4","이름5","이름6"));
	request.setAttribute("name3", nameList);
	List<String> nameList2=new ArrayList<String>(Arrays.asList("이름7","이름8","이름9"));
	request.setAttribute("name4", nameList2);
%>
<%-- <c:forEach var="name" items="이름1,이름2,이름3">
	<br />${name }
</c:forEach> --%>

<%-- <c:forEach var="name" items="이름1,이름2,이름3" varStatus="st">
	<br />${st.count } : <c:out value="name"/> > 마지막에 / 하면 바로 </c:out> 생략가능
</c:forEach> --%>

<%-- <c:forEach var="name" items="${name3 }" varStatus="st">
	<br />${st.count } : <c:out value="${name }"/> 
</c:forEach> --%>

<%-- <c:forEach var="list4" items="${name4 }" varStatus="st">
	<br />${st.count } : <c:out value="${list4 }"/> 
</c:forEach> --%>

<%-- <c:forEach var="list4" items="${name4 }" varStatus="st">
	<br />${st.count } : ${name4[st.index] }
</c:forEach> <!-- 위와 같은 내용이다. --> --%>

<%-- <c:forEach var="i" begin="1" end="10">
	<br /> <c:out value="${i }"/>
</c:forEach> --%>

<%-- <c:forEach var="i" begin="1" end="10" varStatus="st">
	${i }
	<c:if test="${not st.last }">,</c:if> <!-- 마지막 , 지우기 -->
</c:forEach> --%>

<%-- <c:set value="0" var="n"/>

<c:forEach var="i" begin="1" end="10" varStatus="st">
	${i }
	<c:set value="${n+i }" var="n"></c:set>
	<c:if test="${not st.last }">,</c:if>
</c:forEach>
sum = ${n } --%>

<c:set value="0" var="n" scope="application"/>

<c:forEach var="i" begin="1" end="10" varStatus="st">
	${i }
	<c:set value="${n+i }" var="n"></c:set>
	<c:if test="${not st.last }">,</c:if>
</c:forEach>
sum = ${n }

</body>
</html>