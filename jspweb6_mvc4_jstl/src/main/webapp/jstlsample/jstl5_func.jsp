<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jstl5_func</h2>
<c:set var="str1" value=" Functions <태그>를 사용합니다." />
<c:set var="str2" value="사용" />
<c:set var="str3" value="${fn:trim(str1) }" /> <!-- trim은 앞뒤로 빈 칸 제거 -->
<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10" />

leng(str1): ${fn:length(str1) } <br />
leng(str3): ${fn:length(str3) } <br />
leng(tokens): ${fn:length(tokens) } <br />
toUpperCase(str1) : ${fn:toUpperCase(str1) } <br />
toLowerCase(str1) : ${fn:toLowerCase(str1) } <br />
subString(str1) : ${fn:substring(str1,1,6) } <br /><!-- str1의 첫번째 글자부터 6번째 까지 -->

replace(str1,src,dest) : ${fn:replace(str1," ","") } <br /><!-- str1의 띄어쓰기를 없는걸로 바꾸겠다 -->

indexOf(str1,str2) : ${fn:indexOf(str1,str2) } <br /><!-- str1에서 str2이 있는 위치값 --> 
</body>
</html>