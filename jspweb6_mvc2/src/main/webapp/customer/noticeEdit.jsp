<%@page import="customer.vo.Notice"%>
<%@page import="customer.dao.NoticeDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h2>noticeEdit</h2>

<%
	/* String seq = request.getParameter("c");

	NoticeDao dao = new NoticeDao();
	Notice n = dao.getNotice(seq); */
	Notice n = (Notice)request.getAttribute("n");
	/* String sql = "select seq,title,writer,content,regdate,hit from notices where seq="+seq;
	
	// DB연결 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "hr";
	String pw = "123456";
	Connection con = DriverManager.getConnection(url,user,pw);
	// 실행 
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	rs.next(); */
%>
<form action="noticeEditProc.jsp" method="post">
<table class="twidth">
	<colgroup>
		<col width="15%" />
		<col width="35%" />
		<col width="15%" />
		<col width="35%" />
	</colgroup>
	<caption>Edit</caption>
		<tbody>
			<tr>
				<th class="left">글번호</th>
				<td><%=n.getSeq() %></td>
				<th class="left">조회수</th>
				<td><%=n.getHit() %></td>
			</tr>
			<tr>
				<th class="left">작성자</th>
				<td><%=n.getWriter() %></td>
				<th class="left">작성시간</th>
				<td><%=n.getRegdate() %></td>
			</tr>
			<tr>
				<th class="left">제목</th>
				<td colspan="3">
				<input type="text" class="inp" name="title" value="<%=n.getTitle() %>" />
				</td>
			</tr>
			<tr>
				<th class="left">내용</th>
				<td colspan="3" id="content">
				<textarea name="content" class="txt" ><%=n.getContent() %></textarea>
				</td>
			</tr>
			<tr>
				<th class="left">첨부</th>
				<td colspan="3">첨부</td>
			</tr>
		</tbody>
</table>
<input type="hidden" name="c" value="<%=n.getSeq() %>" /> <!-- 아래 버튼으로 값을 전달할 수가 없어서 value와 name을 활용하여 보낸다. 화면에 안 보이게 type을 hidden으로  -->
<input type="submit" value="수정하기" />
<a href="noticeDetail.jsp?c=<%=n.getSeq() %>">취소</a>
</form>
</body>
</html>