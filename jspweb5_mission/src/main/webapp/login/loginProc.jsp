<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>loginProc</h2>

<%
	request.setCharacterEncoding("utf8");
	String id = request.getParameter("id");
	String pass = request.getParameter("password");
	String sql = "select pwd from member_mission where id=?";
	//DB 연결
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="hr";
	String pw="123456";
	Connection con=DriverManager.getConnection(url,user,pw);
	// 실행
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	
	String ypass = "";
	String msg = "";
	int x = -1;
	
	if(rs.next()) {
		ypass = rs.getString("pwd");
		if(ypass.equals(pass)) {
			x = 1;
		} else {
			x = 0;
		}
	} else {
		x = -1;
	}
	
	if (x==1) {
		session.setAttribute("sessionID", id);
		msg="../mainForm.jsp";
	} else if (x==0) {
		msg="loginForm.jsp?msg=0";
	} else {
		msg="loginForm.jsp?msg=-1";
	}
		response.sendRedirect(msg);
%>
</body>
</html>