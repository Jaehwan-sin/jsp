package customer.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import customer.vo.Notice;

public class NoticeDao {
	
	public void write(Notice n) throws Exception {
		//insert 작업 
		String sql = "insert into notices values("+"(select max(to_number(seq))+1 from notices)"+",?,'CJ',?,sysdate,0)";
		// seq가 1씩 증가해야해서 서브쿼리문으로 max값에서 +1된 값이 들어가도록한다.
		// DB연결 
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pw = "123456";
		Connection con = DriverManager.getConnection(url,user,pw);
		// 실행 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, n.getTitle());
		pstmt.setString(2, n.getContent());
		pstmt.executeUpdate(); 
		
		pstmt.close();
		con.close(); 
	}
	
	public void update(Notice notice) throws Exception {
		String sql = "update notices "+"set title=?,content=? where seq=?";
		// "update notices "+"set title=?,content=? where seq=?"; 이렇게도 가능 
		// DB연결 
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pw = "123456";
		Connection con = DriverManager.getConnection(url,user,pw);
		// 실행 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, notice.getTitle());
		pstmt.setString(2, notice.getContent());
		pstmt.setString(3, notice.getSeq());
		pstmt.executeUpdate(); 
	}
	
	public void update2(String seq, String tit, String content) throws Exception {
		String sql = "update notices "+"set title=?,content=? where seq=?";
		// "update notices "+"set title=?,content=? where seq=?"; 이렇게도 가능 
		// DB연결 
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hr";
		String pw = "123456";
		Connection con = DriverManager.getConnection(url,user,pw);
		// 실행 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, tit);
		pstmt.setString(2, content);
		pstmt.setString(3, seq);
		pstmt.executeUpdate(); 
	}
}
