package semi.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.InquiryDAO;
import semi.DTO.CmtDTO;

public class Inquiry_ReplyUpdateAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int c_num = Integer.parseInt(req.getParameter("c_num"));
		String content = req.getParameter("re_c_content");
		int b_num = Integer.parseInt(req.getParameter("b_num"));
		String re_password = req.getParameter("re_password");
		CmtDTO cdto = new CmtDTO();
		cdto.setContent(content);
		cdto.setC_num(c_num);
		cdto.setB_num(b_num);
		InquiryDAO dao = InquiryDAO.getInstance();

		String password = dao.cm_searchPWMethod(c_num);

		resp.setContentType("text/json;charset=utf-8");
		PrintWriter out = resp.getWriter();
		if (password.equals(re_password)) {
			dao.cmUpdate(cdto);
			out.print(b_num);
			System.out.println("이것이 bnum" + b_num);
		} else {
			out.print(-2);
		}
	}
}