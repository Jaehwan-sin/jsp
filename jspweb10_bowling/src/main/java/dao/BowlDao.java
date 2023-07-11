package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.DBCon;
import vo.Bowl;

public class BowlDao {
	
	  public Bowl getboard(String bno) throws Exception { 
		  
	  String sql = "select bno,btitle,bcontent,bwriter,bdate,bcnt from bowlboard";
	  
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


	public void update(String btitle, String bcontent, String bno) throws Exception {
		String sql = "update bowlboard"+"set btitle=?, bcontent=? where bno=?";
		
		// DB연결 
		Connection con = DBCon.getConnection();
			
		// 실행 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, btitle);
		pstmt.setString(2, bcontent);
		pstmt.setString(3, bno);
		pstmt.executeUpdate();  
	}
	
	public int delete(String bno) throws Exception {
		String sql = "delete from bowlboard where bno="+bno;
		
		Connection con = DBCon.getConnection();
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		int del = pstmt.executeUpdate();
		
		return del;
	}


	public List<Bowl> bowlselAll(String field, String query) throws Exception {
		
		// String sql = "select bno,btitle,bcontent,bwriter,bdate,bcnt from bowlboard order by to_number(bno) desc";
		String sql = "select bno,btitle,bcontent,bwriter,bdate,bcnt from bowlboard where "+field+" like ? order by to_number(bno) desc";
		
		Connection con = DBCon.getConnection();
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, "%"+query+"%");
		
		ResultSet rs = pstmt.executeQuery();
		
		List<Bowl> list = new ArrayList<Bowl>();
		while(rs.next()) {
			Bowl b = new Bowl();
			b.setBno(rs.getString("bno"));
			b.setBtitle(rs.getString("btitle"));
			b.setBcontent(rs.getString("bcontent"));
			b.setBwriter(rs.getString("bwriter"));
			b.setBdate(rs.getDate("bdate"));
			b.setBcnt(rs.getString("bcnt"));
			list.add(b);
		}
		return list;
	}


	public Bowl getNotice(String bno, String hit) throws Exception {
		
		String sql = "select bno,btitle,bcontent,bwriter,bdate,bcnt from bowlboard where bno="+bno;
		
		int hnum = Integer.parseInt(hit);
		hitupdate(bno,hnum);
		
		Connection con = DBCon.getConnection();
		
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		
		Bowl b = new Bowl();
		b.setBno(rs.getString("bno"));
		b.setBtitle(rs.getString("btitle"));
		b.setBwriter(rs.getString("bwriter"));
		b.setBcontent(rs.getString("bcontent"));
		b.setBdate(rs.getDate("bdate"));
		b.setBcnt(rs.getString("bcnt"));
		
		rs.close();
		stmt.close();
		con.close();
		
		return b;
	}


	private void hitupdate(String bno, int hnum) throws Exception {
		System.out.println("hit up");
		
		Connection con = DBCon.getConnection();
		String sql = "update bowlboard set hit=? where bno=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, hnum+1);
		pstmt.setString(2, bno);
		
		pstmt.executeUpdate();
	}

}
