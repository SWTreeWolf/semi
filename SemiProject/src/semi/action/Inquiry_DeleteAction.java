package semi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.*;
import semi.DTO.*;


public class Inquiry_DeleteAction {
	public void exeute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException  {
		
		int num= Integer.parseInt(req.getParameter("num")); 
		String password = req.getParameter("password"); 
		
		if (req.getParameter("num") == null || req.getParameter("password") == null) {
			resp.sendRedirect("list.do");
		} else  {
			InquiryDAO dao = InquiryDAO.getInstance();
			dao.deleteMethod(num);		
		}
	 
	}//end execute()
}//end class
