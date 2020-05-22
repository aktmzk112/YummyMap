package com.yummymap.www.vo;

import java.sql.*;
import java.text.*;

public class MemberVO {
	private int mno;
	private String mname, mid, mpw, mtel, memail, mDate;
	private Date joinDate;
	private Time joinTime;
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public Date getJoindate() {
		return joinDate;
	}
	public void setJoindate(Date joindate) {
		this.joinDate = joindate;
	}
	public String getmDate() {
		return mDate;
	}
	public void setmDate() {
		SimpleDateFormat form1 = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat form2 = new SimpleDateFormat("HH:mm");
		this.mDate = form1.format(joinDate) + "  " + form2.format(joinTime);
	}
	public void setmDate(String mDate) {
		this.mDate = mDate;
	}
	
	
	
}
