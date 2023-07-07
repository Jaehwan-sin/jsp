<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- JSTL은 JSP 표준라이브러리(JSP Standard Tag Library)의 약어이다. 
자주 사용될 수 있는 커스텀 태그들을 모아서 표준으로 모아놓은 태그 라이브러리다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>jstl_token</h2>
<%-- <c:forTokens items="이름1,이름2,이름3,이름4,이름5" delims=","><!-- delims는 구분자이다. -->
반복 <br />
</c:forTokens> --%>

<%-- <c:forTokens var="name" items="이름1,이름2,이름3,이름4,이름5" delims=","><!-- delims는 구분자이다. -->
${name } <br />
</c:forTokens> --%>

<%-- <c:forTokens var="name" items="이름1,이름2,이름3,이름4,이름5" delims="," varStatus="st"><!-- delims는 구분자이다. -->
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens> --%>

<%-- <c:forTokens var="name" items="이름1,이름2,이름3,이름4,이름5" delims="," 
 varStatus="st" begin="1" end="3" step="2"><!-- delims는 구분자이다. -->
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens> --%>

<%-- <c:forTokens var="name" items="이름1/20,이름2/21,이름3/22,이름4/23,이름5/24" delims=",/" 
 varStatus="st" ><!-- delims는 구분자이다. -->
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens> --%>

<c:forTokens var="name" items="이름1/20,이름2/21,이름3/22,이름4/23,이름5/24" delims=",/" 
 varStatus="st" ><!-- delims는 구분자이다. -->
index:${st.index } <br />
current:${st.current } <br />
count:${st.count } <br />
first:${st.first } <br />
last:${st.last } <br />
begin:${st.begin } <br />
end:${st.end } <br />
step:${st.step } <br />
<hr />
</c:forTokens>

</body>
</html>