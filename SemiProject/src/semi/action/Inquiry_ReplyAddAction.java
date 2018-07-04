package semi.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.*;
import semi.DTO.*;
import sun.awt.RepaintArea;

public class Inquiry_ReplyAddAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int b_num=Integer.parseInt(req.getParameter("b_num")); 
		String password = req.getParameter("c_password"); 
		CmtDTO cdto = new CmtDTO(); 
		InquiryDAO dao = InquiryDAO.getInstance();
		cdto.setB_num(b_num);
		cdto.setPassword(password);
		cdto.setContent(req.getParameter("c_content"));
		cdto.setWriter(req.getParameter("c_writer"));
		
		dao.insertCmt(cdto);
		
		resp.setContentType("text/json;charset=utf-8");
		PrintWriter out = resp.getWriter(); 
		out.print(b_num);
	}
}
