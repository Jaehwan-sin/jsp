package jh.customer.dao;

import java.sql.*;

import jh.customer.db.DBCon;
import jh.customer.vo.JHNotice;

public class JHNoticeDao {
	
	public void delete(String jhno) throws Exception {
		
		String sql = "delete from jhetcseoul where jhno="+jhno;
		
		Connection con = DBCon.getConnection();
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.executeUpdate();
		
	}
	
	public void edit (String jhno, String jhtitle, String jhcontent) throws Exception {
		
		String sql = "update jhetcseoul "+"set jhtitle=?,jhcontent=? where jhno=?";
		
		Connection con = DBCon.getConnection();

		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, jhtitle);
		pstmt.setString(2, jhcontent);
		pstmt.setString(3, jhno);
		pstmt.executeUpdate();  
	}
	
	public JHNotice getNotice(String jhno) throws Exception {
		
		String sql = "select jhno,jhtitle,jhwriter,jhcontent,jhdate,jhhit from jhetcseoul where jhno="+jhno;
		
		Connection con = DBCon.getConnection();

		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();

		JHNotice j = new JHNotice();
		j.setJhno(rs.getString("jhno"));
		j.setJhtitle(rs.getString("jhtitle"));
		j.setJhwriter(rs.getString("jhwriter"));
		j.setJhcontent(rs.getString("jhcontent"));
		j.setJhdate(rs.getDate("jhdate"));
		j.setJhhit(rs.getInt("jhhit"));
		
		rs.close();
		stmt.close();
		con.close();
		
		return j;
	}
	
	/*
	 * public List<JHNotice> jhnoticeAll() throws Exception {
	 * 
	 * String sql =
	 * "select jhno,jhtitle,jhwriter,jhcontent,jhdate,jhhit from jhetcseoul order by jhno desc"
	 * ;
	 * 
	 * Connection con = DBCon.getConnection();
	 * 
	 * Statement stmt = con.createStatement(); ResultSet rs =
	 * stmt.executeQuery(sql);
	 * 
	 * List<JHNotice> list = new ArrayList<JHNotice>(); while (rs.next()) { JHNotice
	 * j = new JHNotice(); j.setJhno(rs.getString("jhno"));
	 * j.setJhtitle(rs.getString("jhtitle"));
	 * j.setJhwriter(rs.getString("jhwriter"));
	 * j.setJhcontent(rs.getString("jhcontent")); j.setJhdate(rs.getDate("jhdate"));
	 * j.setJhhit(rs.getInt("jhhit")); list.add(j); }
	 * 
	 * return list;
	 * 
	 * }
	 */
	
}
