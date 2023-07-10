package vo;

import java.util.Date;

public class Bowl {
	
	private String bno;
	private String btitle;
	private String bcontent;
	private String bwriter;
	private Date bdate;
	private String bcnt;
	
	public String getBno() {
		return bno;
	}
	public void setBno(String bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date date) {
		this.bdate = date;
	}
	public String getBcnt() {
		return bcnt;
	}
	public void setBcnt(String bcnt) {
		this.bcnt = bcnt;
		
	}
}
