<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>outTest.jsp</h2>

<%
//buffer : 임시 저장공간
int buffersize = out.getBufferSize();
int remainsize = out.getRemaining();
int useSize = buffersize - remainsize;

%>
<h2>현재 버퍼 사용 현황</h2>
전체버퍼 : <%=buffersize %> <br />
사용버퍼 : <%=useSize %> <br />
남은버퍼 : <%=remainsize %> <br />
</body>
</html>