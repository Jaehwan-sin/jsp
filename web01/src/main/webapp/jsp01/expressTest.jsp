<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
	table{
		width : 500px; 
		border : 2px solid red;
		border-collapse : collapse;
	}
	table tr td{
		border : 2px solid green;
	}
</style>
<%
String[] str = {"jsp","java","javascript","html5"};
%>
	<table>
		<tr>
			<td>번호</td>
			<td>값</td>
		</tr>
		<%
		/* 반복하는 자바코드쓰기 */
		for(int i=0; i<str.length; i++){
		%>
		<tr>
			<td><%=i+1 %></td>
			<td><%=str[i] %></td>
		</tr>
		<%
		}
		%>
		
		
	</table>
	
	
	
	
	
	
	
</body>
</html>