package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vo.Member;

public class MemberDao {
	String sql = "select id,pwd,name,gender,birth,is_lunar,"
			+ "cphone,email,hobby,regdate from member"
			+ " where id=?";
	
	Connection con = db.DBCon.getConnection();
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, uid);
	
	ResultSet rs = pstmt.executeQuery();
	Member m = null;
	if(rs.next()) {
		m = new Member();
		m.setId(rs.getString("id"));
		m.setPwd(rs.getString("pwd"));
		System.out.println("id : "+m.getId());
		System.out.println("pwd : "+m.getPwd());
	}
	
	return m;
}
