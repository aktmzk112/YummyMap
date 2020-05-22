package com.yummymap.www.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.yummymap.www.DB.WebDBCP;
import com.yummymap.www.SQL.BoardSQL;
import com.yummymap.www.vo.BoardVO;


public class BoardDAO {
	WebDBCP db;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	BoardSQL bSQL;
	
	public BoardDAO() {
	db = new WebDBCP();
	bSQL = new BoardSQL();
	}

	// 게시판 테이블 글 등록 데이터베이스 작업 전담 처리 함수
	public int addBoard(HashMap<String, String> map) {
		int cnt = 0;
		// 1. 커넥션
		con = db.getConnection();
		// 2. 질의명령
		String sql = bSQL.getSQL(bSQL.ADD_BRD);
		// 3. pstmt 
		pstmt = db.getPreparedStatement(con, sql);
		try {
			// 4. 질의명령 완성
			pstmt.setString(1,map.get("mid"));
			pstmt.setString(2, map.get("title"));
			pstmt.setString(3, map.get("mtxt"));
			// 5. 질의명령 보내고 결과받고
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(pstmt);
			db.close(con);
		}
		// 6. 결과 내보내고
		return cnt;
	}
	// 게시판 리스트 뽑기
	public ArrayList<BoardVO> getAllList(){
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		con = db.getConnection();
		String sql = bSQL.getSQL(bSQL.SEL_ALL_LIST);
		stmt = db.getStatement(con);
		try {
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				BoardVO bVO = new BoardVO();
				bVO.setTxtno(rs.getInt("txtno"));
				bVO.setTitle(rs.getString("title"));
				bVO.setMid(rs.getString("mid"));
				bVO.setbDate(rs.getDate("cdate"));
				bVO.setCdate();
				bVO.setCount(rs.getInt("count"));
				list.add(bVO);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			db.close(rs);
			db.close(stmt);
			db.close(con);
		}
		return list; 
	}
}
