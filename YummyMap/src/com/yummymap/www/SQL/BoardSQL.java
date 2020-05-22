package com.yummymap.www.SQL;

public class BoardSQL {
	public final int SEL_ALL_LIST = 1001;
	public final int EDIT_COUNT_BRD = 2001;
	public final int ADD_BRD = 3001;

	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_ALL_LIST:
			buff.append("SELECT ");
			buff.append("    txtno, title, mid, cdate, count "); 
			buff.append("FROM ");
			buff.append("    txt t, member m");
			buff.append("WHERE ");
			buff.append("	t.mid = m.mid ");
			break;
		case EDIT_COUNT_BRD:
			buff.append("UPDATE ");
			buff.append("	txt ");
			buff.append("SET "); 
			buff.append("	count = count + 1 "); 
			buff.append("WHERE ");
			buff.append("	txtno = ? ");
			break;
		case ADD_BRD:
			buff.append("INSERT INTO ");
			buff.append("board(txtno, mid, title, mtxt) ");
			buff.append("VALUES( ");
			buff.append("	(SELECT NVL(MAX(txtno)+1,1000) FROM txt), ");
			buff.append("	(SELECT mno FROM member WHERE mid = ?), ");
			buff.append("?, ? "); 
			buff.append(") ");
			break;
		}
		return buff.toString();
	}
}