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
<h2>loginproc</h2> 
<%
	request.setCharacterEncoding("utf8");
	String id = request.getParameter("id");
	String pass = request.getParameter("password");
	String sql = "select pwd from member where id=?";
	/* DB 연결 */	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="hr";
	String pw="123456";
	Connection con=DriverManager.getConnection(url,user,pw);
	// 실행
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	//로그인 경우의 수
	String ypass="";
	int x = -1;// 숫자로 로그인 성공/실패의 경우의 수를 만들어 그에 따라 메시지 전달
	String msg = "";
	
	if(rs.next()) {
		ypass=rs.getString("pwd");
		if (ypass.equals(pass)) //내가 입력한 password와 데이터베이스의 password가 일치하냐
			x = 1;//로그인 성공
		else 
			x = 0;//패스워드 불일치	
	} else {
		x = -1;// 아이디 없음
	}
	System.out.println("xxxxx : "+x);
	 //x값에 따라서 msg라는 파람값을 다이나믹하게 전달
	if (x==1) {// 성공
		session.setAttribute("sessionID", id);// session에다 sessionID라는 이름으로 id를 전달
		msg="../mainForm.jsp";
	} else if (x==0) {// 실패
		msg="loginForm.jsp?msg=0";
	} else {
		msg="./loginForm.jsp?msg=-1";
	}
		response.sendRedirect(msg);
%>
</body>
</html>