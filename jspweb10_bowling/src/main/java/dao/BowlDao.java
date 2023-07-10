package dao;

import java.sql.*;

import db.DBCon;
import vo.Bowl;

public class BowlDao {
	
	  public Bowl getboard(String bno) throws Exception { 
		  
	  String sql = "select bno,btitle,bcontent,bwriter,bdate,bcnt from bowlboard;";
	  
	  Connection con = DBCon.getConnection();
	  
	  Statement stmt = con.createStatement(); 
	  ResultSet rs = stmt.executeQuery(sql); 
	  rs.next();
	  
	  Bowl b = new Bowl(); 
	  b.setBno(rs.getString("bno"));
	  b.setBtitle(rs.getString("btitle")); 
	  b.setBcontent(rs.getString("bcontent"));
	  b.setBwriter(rs.getString("bwriter")); 
	  b.setBdate(rs.getDate("bdate"));
	  b.setBcnt(rs.getString("bcnt"));
	  
	  rs.close(); 
	  stmt.close(); 
	  con.close();
	  
	  return b; 
	}
	 
	
	public void write(Bowl b) throws Exception {
		//insert 작업 
		String sql = "insert into bowlboard values("+"(select max(to_number(bno))+1 from bowlboard)"+",?,?,?,sysdate,0)";
		// seq가 1씩 증가해야해서 서브쿼리문으로 max값에서 +1된 값이 들어가도록한다.
		// DB연결 
		Connection con = DBCon.getConnection();
		// 실행 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, b.getBtitle());
		pstmt.setString(2, b.getBcontent());
		pstmt.setString(3, b.getBwriter());
		pstmt.executeUpdate(); 
		
		pstmt.close();
		con.close(); 
	}


	public void update(String title, String content, String bno) throws Exception {
		String sql = "update bowlboard"+"set btitle=?, bcontent=?, where bno=?";
			
		// DB연결 
		Connection con = DBCon.getConnection();
			
		// 실행 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, bno);
		pstmt.executeUpdate();  
	}
}
