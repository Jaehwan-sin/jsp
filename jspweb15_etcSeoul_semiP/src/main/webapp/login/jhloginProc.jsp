<%@page import="jh.customer.db.DBCon"%>
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
<h2>jhloginProc</h2>
<%
	request.setCharacterEncoding("utf8");
	String id = request.getParameter("id");
	String pass = request.getParameter("password");
	String sql = "select pwd from member where id=?";
	
	Connection con = DBCon.getConnection();
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();

	String jhpass = "";
	int x = -1;
	String msg = "";

	if(rs.next()) {
		jhpass = rs.getString("pwd");
		if(jhpass.equals(pass)) {
			x = 1;
		} else {
			x = 0;
		}
	} else {
		x = -1;
	}
		System.out.println("xxxxx : "+x);
		
	if(x==1) {
		session.setAttribute("sessionID", id);
		msg = "../jhmainForm.jsp";
	} else if (x==0) {
		msg = "loginForm.jsp?msg=0";
	} else {
		msg = "loginForm.jsp?msg=-1";
	}
		response.sendRedirect(msg);
%>
</body>
</html>