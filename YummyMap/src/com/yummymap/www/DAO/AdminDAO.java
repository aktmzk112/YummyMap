package com.yummymap.www.DAO;

import java.sql.*;
import java.util.*;
import com.yummymap.www.DB.*;
import com.yummymap.www.SQL.*;


public class AdminDAO {
	WebDBCP db;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	AdminSQL asql;
	
	public AdminDAO() {
		db = new WebDBCP();
		asql = new AdminSQL();
	}
	
	//관리자 계정 조회 전담 함수
	public int selAdmin(String id , String pw) {
		int cnt = 0;
		
		con = db.getConnection();
		
		String sql = asql.getSQL(asql.SEL_AD);
		
		pstmt = db.getPreparedStatement(con, sql);
		
		try {
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt("cnt");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		
		
		return cnt;
	}
	
}
