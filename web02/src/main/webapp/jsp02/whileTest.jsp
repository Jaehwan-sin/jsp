<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>whileTest</h2>

<%//number타입이더라도 파람전달 될 때는 문자로 전달된다.
//값을 받을때는 무조건 String 타입으로 받지만 밑에서 숫자타입과 비교하기때문에
//parseInt를 사용하여 숫자타입으로 변환한다.
int number = Integer.parseInt(request.getParameter("number"));
int num = Integer.parseInt(request.getParameter("num"));

long multiply = 1;
int count = 0;

while(count<num){
	multiply*=number;
	count++;
}

%>

결과 : <%=multiply %>
</body>
</html>