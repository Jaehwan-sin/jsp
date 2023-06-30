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
<h2>prdeletePro</h2>

<%
	request.setCharacterEncoding("utf-8");
	String pno = request.getParameter("pno");
	
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
		
		sql = "delete from productinfo where pno=?";
		pstmt = conn.prepareStatement(sql);
		// 각각 물음표 위치에 들어갈 변수 삽입
		pstmt.setString(1, pno);
		//insert 실행
		pstmt.executeUpdate();
		System.out.println("데이터 삭제 성공");
	} catch(Exception e) {
		out.print("입력 실패");
		e.printStackTrace();
	} finally {
		if(pstmt!=null) try{pstmt.close();} catch(Exception e2) {}
		if(conn!=null) try{conn.close();} catch(Exception e2) {}
	} response.sendRedirect("prselectPro.jsp");// 데이터 입력 후 이동
%>

</body>
</html>