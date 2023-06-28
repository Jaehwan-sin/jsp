<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info="copyright by hong !!!"
    
    session="true"
    buffer="8kb"
    autoFlush="true"
    isThreadSafe="true"
    
    %>
    
    <!-- 
    session="true" - 세션 사용여부
    buffer="8kb" - 버퍼 용량
    autoFlush="true" - 버퍼가 가득차면 자동으로 비우기
    isThreadSafe="true" - 멀티쓰레드를 사용할 지 여부
     -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	String strDate = format.format(now);
	String name="홍길동";
%>

	오늘의 날짜는 <%=strDate %>입니다. <br />
	당신의 이름은 <%=name %>입니다. <br>
	그대의 이름은 <%="홍길순" %>


</body>
</html>