<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String name = request.getParameter("name");// 값을 받는다. ""는 앞에서 name으로 보내줬기에 그대로 사용해야한다.
String color = request.getParameter("color");// 값을 받는다. ""는 앞에서 color로 보내줬기에 그대로 사용해야한다.
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
<h1>ifTest.jsp</h1>
이름 : <%=name %> <br />
색상 : <%=color %> <br />

<img src="../img/<%=color %>.png" alt="" /> <br /><hr />

<div id="col"></div>
<style>
	#col{
		width : 100px;
		height : 100px;
		background : <%=color %>;
	}
</style>

<%
String strCol = "";

if(color.equals("blue")){
	strCol="파랑";
}else if(color.equals("red")){
	strCol="빨강";
}else if(color.equals("green")){
	strCol="초록";
}else if(color.equals("yellow")){
	strCol="노랑";
}

%>
<h3><%=name %>님이 좋아하는 색상은 : <%=strCol %>색입니다.</h3>
</body>
</html>