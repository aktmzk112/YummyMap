package com.yummymap.www.vo.admin;

import java.sql.*;
import java.text.*;
public class MemberInfoVO {
	private int mno;
	private String mname, mid , mtel , memail, sdate, mdomain;
	private Date jDate;
	private Time jTime;
	
	
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
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMemail() {
		return memail;
	}
	public String getMdomain() {
		return mdomain;
	}
	public void setMdomain(String mdomain) {
		this.mdomain = mdomain;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public Date getjDate() {
		return jDate;
	}
	public void setjDate(Date jDate) {
		this.jDate = jDate;
	}
	public Time getjTime() {
		return jTime;
	}
	public void setjTime(Time jTime) {
		this.jTime = jTime;
	}
	
	
	
	
}
