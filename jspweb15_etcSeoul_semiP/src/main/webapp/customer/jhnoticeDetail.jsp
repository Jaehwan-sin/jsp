<%@page import="jh.customer.vo.JHNotice"%>
<%@page import="jh.customer.dao.JHNoticeDao"%>
<%@page import="jh.customer.db.DBCon"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="../css/jhdetail.css" /> -->
</head>
<body>
<h2>jhnoticeDetail</h2>

<table>
    <tr>
        <th id="title"><h3>${j.jhtitle }</h3></th>
    </tr>
    <tr id="etc">
        <td>${j.jhdate}  |</td>  
        <td>${j.jhwriter }  |</td>
        <td>${j.jhhit }  |</td> 
        <td>${j.jhfile }  </td>  
    </tr>
    <tr>
    	<td>
        	<a href="download.do?p=customer/jhupload/&f=${j.jhfile }">${j.jhfile }</a>
        </td>
        <td id="line" colspan="3">${j.jhcontent }  </td> 
    </tr>
</table>
    <hr />
<input type="button" value="목록" onclick="location.href='jhnotice.do'" id="list" />
<input type="button" value="수정" onclick="location.href='jhnoticeEdit.do?c=${j.jhno }'" id="list" />
<input type="button" value="삭제" onclick="location.href='jhnoticeDelProc.do?c=${j.jhno }'" id="list" />

</body>
</html>
