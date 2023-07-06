package jobkorea.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import jobkorea.db.DBCon;
import jobkorea.vo.jobNotice;

public class JobNoticeDao {
	
	public void wirte(jobNotice j) throws Exception {
		// insert 작업
		String sql = "insert into jobhm values((select max(to_number(no))+1 from jobhm),"
				+ "'개발연구원2','LG화학2','[CTO] 7월 경력사원 채용2',"
				+ "'경력2','석사↑2','학력무관2','영어2','정규직2',"
				+ "'2억','서울시2','~2023-07-31','개발자2')";
		// DB연결 
		Connection con = DBCon.getConnection();	
		// 실행 
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, j.getCareer());
		pstmt.setString(2, sql);
		pstmt.setString(3, sql);
		pstmt.setString(4, sql);
		pstmt.setString(5, sql);
		pstmt.setString(6, sql);
		pstmt.setString(7, sql);
	}
	
}
