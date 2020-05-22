package com.yummymap.www.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class BoardVO {
	private int txtno, count, rnum, catno;
	private String title, mid, mtxt, cdate;
	private Date bDate;
	
	public int getTxtno() {
		return txtno;
	}
	public void setTxtno(int txtno) {
		this.txtno = txtno;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public int getCatno() {
		return catno;
	}
	public void setCatno(int catno) {
		this.catno = catno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMtxt() {
		return mtxt;
	}
	public void setMtxt(String mtxt) {
		this.mtxt = mtxt;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate() {
		SimpleDateFormat form1 = new SimpleDateFormat("yyyy/MM/dd");
		this.cdate = form1.format(bDate);
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public Date getbDate() {
		return bDate;
	}
	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}
}

