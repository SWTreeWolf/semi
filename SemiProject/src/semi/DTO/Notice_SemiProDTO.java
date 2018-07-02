package semi.DTO;

import java.sql.Date;

public class Notice_SemiProDTO {
	private int num, readcount, ref, re_step, re_level;
	private String writer, subject, summernote, upload;
	private Date reg_date;
	
	public Notice_SemiProDTO() {
		
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getSummernote() {
		return summernote;
	}

	public void setSummernote(String summernote) {
		this.summernote = summernote;
	}
	
	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getRe_step() {
		return re_step;
	}

	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}

	public int getRe_level() {
		return re_level;
	}

	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}
	

}
