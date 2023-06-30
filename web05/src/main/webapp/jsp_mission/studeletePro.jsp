<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>studeletePro</h2>

<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");

	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	
	try {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String driver = "oracle.jdbc.driver.OracleDriver";
		String user = "hr";
		String pass = "123456";
		Class.forName(driver);
		conn = DriverManager.getConnection(url,user,pass);
		
		/* no를 조건으로 다른 정보 변경하기 */
		sql = "delete from studentinfo where no=?";
		pstmt = conn.prepareStatement(sql);
		// 각각 물음표 위치에 들어갈 변수 삽입
		pstmt.setString(1, no);
		// update 실행
		pstmt.executeUpdate();
		System.out.println("삭제 성공");
	} catch(Exception e) {
		out.print("삭제 실패");
		e.printStackTrace();
	} finally {
		if(pstmt!=null) try{pstmt.close();} catch(Exception e2) {}
		if(conn!=null) try{conn.close();} catch(Exception e2) {}	
	} response.sendRedirect("stuselectPro.jsp");
%>
</body>
</html>