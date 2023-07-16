<%@page import="jh.customer.vo.JHNotice"%>
<%@page import="jh.customer.dao.JHNoticeDao"%>
<%@page import="jh.customer.db.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/jhdetail.css" />
</head>
<body>
<h2>jhnoticeDetail</h2>

<table>
	<thead>
    	<tr>
        	<th><h3>${j.jhtitle }</h3></th>
    	</tr>
    </thead>
    <tr id="etc">
        <td>${j.jhdate}  |</td>  
        <td>${j.jhwriter }  |</td>
        <td>${j.jhhit }</td>
    </tr>
    <tr>
    	<td id="etc">
        	첨부파일 <a href="download.do?p=/customer/jhupload/&f=${j.jhfile }">${j.jhfile }</a><br />
        </td>
    </tr>
</table>
    <hr />
<div id="list">
	<input type="button" value="목록" onclick="location.href='jhnotice.do'"/>
	<input type="button" value="수정" onclick="location.href='jhnoticeEdit.do?c=${j.jhno }'" />
	<input type="button" value="삭제" onclick="location.href='jhnoticeDelProc.do?c=${j.jhno }'" />
</div>
<hr />
<c:if test="${j.jhfile ne null }" >
	<img src="./jhupload/${j.jhfile }" width="400" height="300" /> <br />
	<td>${j.jhcontent }</td> 
</c:if>
<hr />
<c:set value="${j.jhfile }" var="jhfilename"/>
<c:set var="jhfilenm" value="${fn:toLowerCase(jhfilename) }"/>
<c:forTokens items="${jhfilenm }" delims="." varStatus="status" var="token">
	<c:if test="${status.last }">
		<c:choose>
			<c:when test="${token eq 'jpg' }">
				${jhfilename } :: 그림파일 jpg <br />
				${status.last }
				<img src="./jhupload/${j.jhfile }" width="300" height="200" alt="" />
			</c:when>
			<c:when test="${token eq 'png' }">
				${jhfilename } :: 그림파일 png <br />
				${status.last }
				<img src="./jhupload/${j.jhfile }" width="300" height="200" alt="" />
			</c:when>
		</c:choose>
	</c:if>
</c:forTokens>
<hr />
</body>
</html>
