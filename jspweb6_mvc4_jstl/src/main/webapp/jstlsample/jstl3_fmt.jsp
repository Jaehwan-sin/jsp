<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jstl3_fmt</h2>
number : <fmt:formatNumber value="12345678" type="number"></fmt:formatNumber> <br />
currency : <fmt:formatNumber value="12345678" type="currency" currencySymbol="￦"></fmt:formatNumber> <br />
percent : <fmt:formatNumber value="12345678" type="percent"></fmt:formatNumber> <br />
pattern : <fmt:formatNumber value="12345678" pattern=".0"></fmt:formatNumber> <br />

<c:set var="now" value="<%=new Date() %>"></c:set>
${now } <br />

date : <fmt:formatDate value="${now }" type="date"/> <br />
time : <fmt:formatDate value="${now }" type="time"/> <br />
both : <fmt:formatDate value="${now }" type="both"/> <br />
</body>
</html>