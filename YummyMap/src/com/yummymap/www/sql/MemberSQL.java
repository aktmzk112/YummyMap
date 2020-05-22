package com.yummymap.www.SQL;

public class MemberSQL {
	public final int SEL_LOGIN_CNT = 1001;
	public final int ADD_MEMB = 1002;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_LOGIN_CNT:
			buff.append("SELECT ");
			buff.append("	COUNT(*) cnt ");
			buff.append("FROM ");
			buff.append("	member ");
			buff.append("WHERE ");
			buff.append("	mid = ? ");
			buff.append("	AND mpw = ? ");
		break;
		case ADD_MEMB:
			buff.append("INSERT INTO ");
			buff.append("	member(mno, mname, mid, mpw, memail, grade, tel, ano) ");
			buff.append("VALUES( " );
			buff.append("	(SELECT NVL(MAX(mno)+1, 1000) FROM member), ");
			buff.append("	?, ?, ?, ?, ?, ?, ? ");
			buff.append(")");
			break;
		}
		return buff.toString();
	}
}
