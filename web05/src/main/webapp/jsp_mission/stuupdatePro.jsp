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
<h2>stuupdatePro</h2>

<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String grade = request.getParameter("grade");
	String deptno = request.getParameter("deptno");
	String score = request.getParameter("score");

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
		sql = "update studentinfo set name=?, addr=?, grade=?, deptno=?, score=? where no=?";
		pstmt = conn.prepareStatement(sql);
		// 각각 물음표 위치에 들어갈 변수 삽입
		pstmt.setString(1, name);
		pstmt.setString(2, addr);
		pstmt.setString(3, grade);
		pstmt.setString(4, deptno);
		pstmt.setString(5, score);
		pstmt.setString(6, no);
		// update 실행
		pstmt.executeUpdate();
		System.out.println("업데이트 성공");
	} catch(Exception e) {
		out.print("업데이트 실패");
		e.printStackTrace();
	} finally {
		if(pstmt!=null) try{pstmt.close();} catch(Exception e2) {}
		if(conn!=null) try{conn.close();} catch(Exception e2) {}	
	} response.sendRedirect("stuselectPro.jsp");
%>
</body>
</html>