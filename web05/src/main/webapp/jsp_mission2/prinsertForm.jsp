<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>prinsertForm</h2>
<form action="prinsertPro.jsp">
	
	
	상품번호 : <input type="text" id="pno" name="pno" /> <br />
	상품명 : <input type="text" id="pname" name="pname" /> <br />
	상품간략소개 : <input type="text" id="pinfo" name="pinfo" /> <br />
	상품가격 : <input type="text" id="pprice" name="pprice" /> <br />
	상품등록일 : <input type="text" id="pdate" name="pdate" /> <br /> 
	상품등록일은 YYYY-MM-DD 형식으로 입력하시오. <br />
	<input type="submit" value="업데이트" />

</form>
</body>
</html>