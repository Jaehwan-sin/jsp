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
<h2>insertPro.jsp</h2>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");

	/* 전달받은 내용을 DB에 입력하기
	DB에 연동 */

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
		
		sql = "insert into member1 values(?,?,?,?)";//PreparedStatement에서는 value값을 ?로 표시
		pstmt = conn.prepareStatement(sql);
		// 각각 물음표 위치에 들어갈 변수 삽입
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, addr);
		// 실행
		pstmt.executeUpdate();//insert 실행
		System.out.println("입력 성공");
	} catch(Exception e) {
		out.print("입력 실패");
		e.printStackTrace();
	} finally {
		// 자원회수
		if(pstmt!=null) try{pstmt.close();} catch(Exception e2) {}
		if(conn!=null) try{conn.close();} catch(Exception e2) {}	
	} response.sendRedirect("selectPro.jsp");
%>

ID : <%=id %> <br />
PW : <%=pw %> <br />
NAME : <%=name %> <br />
ADDR : <%=addr %> <br />

</body>
</html>