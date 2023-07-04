<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JoinProc</h2>
<%
	request.setCharacterEncoding("utf8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String pass2 = request.getParameter("pass2");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String birth = String.format("%s-%s-%s", year,month,day);
	
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	String[] hobbys = request.getParameterValues("hobby");
	String hobby = "";
	
	if(hobbys!=null) {
		for(int i=0; i<hobbys.length; i++) {
			hobby+=hobbys[i];
			if(hobbys.length>i+1){
				hobby+=",";
			}
		}
	}
	
	List<String> errors = new ArrayList();
	if(id==null || id.equals("")) {
		errors.add("아이디없음");
	} else if(!pass.equals(pass2)) {
		errors.add("비밀번호가 다릅니다.");
	}
	
	if(errors.size()>0) {
		request.setAttribute("errors", errors);
		request.getRequestDispatcher("join.jsp").forward(request, response);
	} else {
		String sql = "insert into member_mission values(?,?,?,?,?,?,?,?,sysdate)";
		//DB 연결
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="hr";
		String pw="123456";
		Connection con=DriverManager.getConnection(url,user,pw);
		//실행
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, name);
		pstmt.setString(4, gender);
		pstmt.setString(5, birth);
		pstmt.setString(6, phone);
		pstmt.setString(7, email);
		pstmt.setString(8, hobby);
		//insert
		pstmt.executeUpdate();
		response.sendRedirect("../index.jsp");
	}
%>

</body>
</html>