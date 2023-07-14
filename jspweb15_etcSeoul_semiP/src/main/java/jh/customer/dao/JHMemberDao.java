package jh.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jh.customer.db.DBCon;
import jh.customer.vo.JHMember;

public class JHMemberDao {

	public JHMember getJHMember(String jhid) throws Exception {
		
		String sql = "select id,pwd from member where id=?";
		
		Connection con = DBCon.getConnection();
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, jhid);
		
		ResultSet rs = pstmt.executeQuery();
		JHMember jm = null;
		
		if (rs.next()) {
			jm = new JHMember();
			jm.setId(rs.getString("id"));
			jm.setPwd(rs.getString("pwd"));
			System.out.println("id : "+jm.getId());
			System.out.println("pwd : "+jm.getPwd());
		}
		
		return jm;
	}
}
