package semi.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.*;
import semi.DTO.*;


public class Inquiry_ViewAction {

	public void execute(HttpServletRequest req, HttpServletResponse resp) { 
		int num=Integer.parseInt(req.getParameter("num")); 
		InquiryDAO dao = InquiryDAO.getInstance(); 
		dao.readCountMethod(num);
		req.setAttribute("dto", dao.viewMethod(num));
	}//end execute() 
}//end class
