<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
<h2>usePool</h2>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		// dbcp 접속
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/noticeXe");
		conn = ds.getConnection();
		
		String sql = "select seq,title,content from notices";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String seq = rs.getString("seq");
			String title = rs.getString("title");
			String content = rs.getString("content");
%>
		<%=seq %>,<%=title %>,<%=content %>
<%			
		}
		
	} catch (Exception e) {
		
	} 

%>
</body>
</html>