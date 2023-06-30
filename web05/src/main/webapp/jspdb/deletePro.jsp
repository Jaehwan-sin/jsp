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
<h2>deletePro.jsp</h2>

<%
	request.setCharacterEncoding("utf-8");//한글 입력시 깨지면 코드추가
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

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
		
		/* ID를 조건으로 모든 정보 삭제하기 */
		
		sql = "delete from member1 where id=?";//PreparedStatement에서는 value값을 ?로 표시
		pstmt = conn.prepareStatement(sql);
		// 각각 물음표 위치에 들어갈 변수 삽입
		pstmt.setString(1, id);
		// 실행
		pstmt.executeUpdate();//delete 실행
		System.out.println("삭제 성공");
	} catch(Exception e) {
		out.print("삭제 실패");
		e.printStackTrace();
	} finally {
		// 자원회수
		if(pstmt!=null) try{pstmt.close();} catch(Exception e2) {}
		if(conn!=null) try{conn.close();} catch(Exception e2) {}	
	} response.sendRedirect("selectPro.jsp");
%>

ID : <%=id %> <br />
PW : <%=pw %> <br />

</body>
</html>