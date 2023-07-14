package jh.customer.dao;

import java.sql.*;
import java.util.*;

import jh.customer.db.DBCon;
import jh.customer.vo.JHNotice;

public class JHNoticeDao {
	
	public void insert(JHNotice j) throws Exception {

		  String sql = "insert into jhetcseoul values((select max(to_number(jhno))+1 from jhetcseoul),?,?,?,sysdate,0,?)";
		  
		  Connection con = DBCon.getConnection();
		  
		  PreparedStatement pstmt = con.prepareStatement(sql); 
		  pstmt.setString(1, j.getJhtitle()); 
		  pstmt.setString(2, j.getJhwriter());
		  pstmt.setString(3, j.getJhcontent());
		  pstmt.setString(4, j.getJhfile());
		  pstmt.executeUpdate();
		  
		  pstmt.close();
		  con.close();
	}
	
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
	
	public JHNotice getNotice(String jhno, String jhhit) throws Exception {
		
		String sql = "select jhno,jhtitle,jhwriter,jhcontent,jhdate,jhhit from jhetcseoul where jhno="+jhno;
		
		int jhnum = Integer.parseInt(jhhit);
		jhhitupdate(jhno,jhnum);
		
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
	
	
	  private void jhhitupdate(String jhno, int jhnum) throws Exception {
		  System.out.println("JHhit up");
		  
		  Connection con = DBCon.getConnection();
		  String sql = "update jhetcseoul set jhhit=? where jhno=?";
		  PreparedStatement pstmt = con.prepareStatement(sql);
		  pstmt.setInt(1, jhnum+1);
		  pstmt.setString(2, jhno);
			
		  pstmt.executeUpdate();
		
	}

	public List<JHNotice> jhnoticeAll(String field, String query) throws Exception {
	  
	  String sql = "select jhno,jhtitle,jhwriter,jhcontent,jhdate,jhhit from jhetcseoul where "+field+" like ? order by to_number(jhno) desc";
	  
	  Connection con = DBCon.getConnection();
	  
	  PreparedStatement pstmt = con.prepareStatement(sql);
	  pstmt.setString(1, "%"+query+"%");
	  
	  ResultSet rs = pstmt.executeQuery();
	  
	  List<JHNotice> list = new ArrayList<JHNotice>(); 
	  while (rs.next()) { 
		  JHNotice j = new JHNotice(); 
		  j.setJhno(rs.getString("jhno"));
		  j.setJhtitle(rs.getString("jhtitle"));
		  j.setJhwriter(rs.getString("jhwriter"));
		  j.setJhcontent(rs.getString("jhcontent")); 
		  j.setJhdate(rs.getDate("jhdate"));
		  j.setJhhit(rs.getInt("jhhit")); 
		  list.add(j); 
	  }
	  
	  return list;
	  
	  }

}
