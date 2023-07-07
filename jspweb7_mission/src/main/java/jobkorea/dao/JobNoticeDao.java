package jobkorea.dao;

import java.sql.*;

import jobkorea.db.DBCon;

public class JobNoticeDao {
	
	public int delete(String no) throws Exception {
		
		String sql = "delete from jobhm where no="+no;
		
		Connection con = DBCon.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		int del = pstmt.executeUpdate();
		
		return del;
	}
	
	public void update2(String no, String title, String career) throws Exception {
		
		Connection con = DBCon.getConnection();
		String sql = "update jobhm set title=?, career=? where no="+no;
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, career);
		pstmt.executeUpdate(); 
	}
	
}