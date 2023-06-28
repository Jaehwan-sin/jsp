<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>IFTEST</h2>
<!-- 
get방식은 주소창 마지막에 name이라는 key값으로 value값을 보낸다.
post는 입력값을 내부소스로 보낸다. 보안상의 이유로 post방식이 더 선호됨.
label for는 이름을 클릭하면 name 쪽으로 이동한다.
placeholder는 기본값으로 적혀있는 글씨 
required는 내용이 꼭 있어야한다, 즉 꼭 입력해라
-->
<form action="declareTest.jsp" method="post">

	<label for="name">이름</label>
	<input type="text" id="name" name="name" placeholder="홍길동"
	autofocus required/>
	<input type="submit" value="확인"/>
	
</form>



</body>
</html>