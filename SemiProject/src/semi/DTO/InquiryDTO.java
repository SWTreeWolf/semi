package semi.DTO;

import java.util.Date;

public class InquiryDTO {
	
	private int num, viewcount, ref, re_step, re_level; 
	private String writer, password, content, email,hpage,lk1, lk2, title,  upload; 
	private Date qdate; 

	public InquiryDTO() {
		// TODO Auto-generated constructor stub
	}
	

	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getRef() {
		return ref;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getHpage() {
		return hpage;
	}


	public void setHpage(String hpage) {
		this.hpage = hpage;
	}


	public String getLk1() {
		return lk1;
	}


	public void setLk1(String lk1) {
		this.lk1 = lk1;
	}


	public String getLk2() {
		return lk2;
	}


	public void setLk2(String lk2) {
		this.lk2 = lk2;
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



	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getViewcount() {
		return viewcount;
	}

	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}





	public Date getQdate() {
		return qdate;
	}

	public void setQdate(Date qdate) {
		this.qdate = qdate;
	}
	
	
	
}
