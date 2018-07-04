package semi.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.*;
import semi.DTO.*;


public class Inquiry_UpdateFormAction {
	public void execute(HttpServletRequest req, 
			HttpServletResponse resp) {
		
		int num=Integer.parseInt(req.getParameter("num")); 
		InquiryDAO dao = InquiryDAO.getInstance(); 
		InquiryDTO dto = dao.viewMethod(num); 
		req.setAttribute("dto", dto);
		
	}//end execute()
}
