<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>lunchResult</h2>
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String Lunch = request.getParameter("Lunch");
String Lunch2 = request.getParameter("Lunch2");

String lmenu = "";
if(Lunch.equals("Jajangmyeon")){
	lmenu="짜장면";
}else if(Lunch.equals("JJamBBong")){
	lmenu="짬뽕";
}else if(Lunch.equals("Bokumbab")){
	lmenu="볶음밥";
}

%>

아이디는 <%=id %>입니다. <br />
비밀번호는 <%=pass %>입니다. <br />
선택하신 점심메뉴는 <%=Lunch %>입니다. <br />

<h3>
	<%=id %>님이 선택하신 점심메뉴는 <%=lmenu %>입니다.
</h3>
<hr />
<%=Lunch2 %>
</body>
</html>