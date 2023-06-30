<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>stuinsertPro</h2>
	
<%
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
		
		sql = "insert into studentinfo values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		// 각각 물음표 위치에 들어갈 변수 삽입
		pstmt.setString(1, no);
		pstmt.setString(2, name);
		pstmt.setString(3, addr);
		pstmt.setString(4, grade);
		pstmt.setString(5, deptno);
		pstmt.setString(6, score);
		//insert 실행
		pstmt.executeUpdate();
		System.out.println("데이터 추가 성공");
	} catch(Exception e) {
		out.print("입력 실패");
		e.printStackTrace();
	} finally {
		if(pstmt!=null) try{pstmt.close();} catch(Exception e2) {}
		if(conn!=null) try{conn.close();} catch(Exception e2) {}
	} response.sendRedirect("stuselectPro.jsp");// 데이터 입력 후 이동
	
%>

</body>
</html>