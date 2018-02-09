package consultation_history;

import java.sql.Date;

public class ch_data {
	//getter/setter
	private int no;
	private Date reg_date;
	private String subject;
	private String writer;
	private String content;
	private String pwd;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	@Override
	public String toString() {
		return "consultation_history [no=" + no + ", reg_date=" + reg_date + ", subject=" + subject + ", writer="
				+ writer + ", content=" + content + ", pwd=" + pwd + "]";
	}
	
	
}
