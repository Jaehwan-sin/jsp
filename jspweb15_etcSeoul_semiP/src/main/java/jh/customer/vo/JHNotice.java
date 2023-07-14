package jh.customer.vo;

import java.util.Date;

public class JHNotice {
	
	private String jhno;
	private String jhtitle;
	private String jhwriter;
	private String jhcontent;
	private Date jhdate;
	private int jhhit;
	private String jhfile;
	
	public String getJhfile() {
		return jhfile;
	}
	public void setJhfile(String jhfile) {
		this.jhfile = jhfile;
	}
	public String getJhno() {
		return jhno;
	}
	public void setJhno(String jhno) {
		this.jhno = jhno;
	}
	public String getJhtitle() {
		return jhtitle;
	}
	public void setJhtitle(String jhtitle) {
		this.jhtitle = jhtitle;
	}
	public String getJhwriter() {
		return jhwriter;
	}
	public void setJhwriter(String jhwriter) {
		this.jhwriter = jhwriter;
	}
	public String getJhcontent() {
		return jhcontent;
	}
	public void setJhcontent(String jhcontent) {
		this.jhcontent = jhcontent;
	}
	public Date getJhdate() {
		return jhdate;
	}
	public void setJhdate(Date jhdate) {
		this.jhdate = jhdate;
	}
	public int getJhhit() {
		return jhhit;
	}
	public void setJhhit(int jhhit) {
		this.jhhit = jhhit;
	}
	
	
}
