package semi.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.InquiryDAO;
import semi.DTO.InquiryDTO;

public class Inquiry_ReplyDelAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int b_num=Integer.parseInt(req.getParameter("b_num"));
		int c_num=Integer.parseInt(req.getParameter("c_num"));
		String re_password=req.getParameter("re_password");
			InquiryDAO dao=InquiryDAO.getInstance();
			String password=dao.cm_searchPWMethod(c_num);
			
			resp.setContentType("text/json;charset=utf-8");
			PrintWriter out = resp.getWriter(); 
			
			if(password.equals(re_password)) {
				dao.cmDelete(c_num);
				out.print(b_num);
			}else {
				System.out.println("틀렷다");
				out.print(-2);
			}
	}
}
