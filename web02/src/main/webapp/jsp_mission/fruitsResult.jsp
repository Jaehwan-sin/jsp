<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String name = request.getParameter("name");
String age = request.getParameter("age");
String fruits = request.getParameter("fruits");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>fruitsResult</h2>
이름 : <%=name %> <br />
나이 : <%=age %> <br />
과일 : <%=fruits %> <br />

<img src="../img/<%=fruits %>.png" alt="" />

<div id="fru"></div>
<style>
	#fru{
		width : 100px;
		height : 100px;
		background : <%=fruits %>;
	}
</style>

<%
	String strFruits = "";
	
	if(fruits.equals("grape")){
		strFruits="포도";
	}else if(fruits.equals("apple")){
		strFruits="사과";
	}else if(fruits.equals("banana")){
		strFruits="바나나";
	}else if(fruits.equals("strawberry")){
		strFruits="딸기";
	}
%>

<h3><%=name %>님의 나이는 <%=age %>이며 좋아하는 과일은 <%=strFruits %>입니다.</h3>
</body>
</html>