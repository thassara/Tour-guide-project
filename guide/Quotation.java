package com.guide;

public class Quotation  {

	int qid;
	String cname;
	int dnum;
	int gnum;
	String atime;
	String email;
	
	
	public Quotation(int qid, String cnam, int dnum, int gnum, String atime, String email) {
		super();
		this.qid = qid;
		this.cname = cnam;
		this.dnum = dnum;
		this.gnum = gnum;
		this.atime = atime;
		this.email = email;
		
	}
	

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getCnam() {
		return cname;
	}

	public void setCnam(String cnam) {
		this.cname = cnam;
	}

	public int getDnum() {
		return dnum;
	}

	public void setDnum(int dnum) {
		this.dnum = dnum;
	}

	public int getGnum() {
		return gnum;
	}

	public void setGnum(int gnum) {
		this.gnum = gnum;
	}

	public String getAtime() {
		return atime;
	}

	public void setAtime(String atime) {
		this.atime = atime;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

	
	
	
}
