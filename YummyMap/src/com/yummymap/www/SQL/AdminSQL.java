package com.yummymap.www.SQL;

public class AdminSQL {
 public final int SEL_AD = 1001;
 
 public String getSQL(int code) {
	 StringBuffer buff = new StringBuffer();
	 
	 switch(code) {
	 case SEL_AD : 
		 buff.append("SELECT ");
		 buff.append(" count(*) cnt ");
		 buff.append("FROM ");
		 buff.append(" member ");
		 buff.append("WHERE ");
		 buff.append(" grade = 'A' ");
		 buff.append(" AND mid = ? ");
		 buff.append(" AND mpw = ? ");
		 break;
	 }
	 return buff.toString();
	 
 }
}
