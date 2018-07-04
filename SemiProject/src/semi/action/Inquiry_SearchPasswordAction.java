package semi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.*;
import semi.DTO.*;

public class Inquiry_SearchPasswordAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		int num = Integer.parseInt(req.getParameter("num"));
		InquiryDAO dao = InquiryDAO.getInstance();
		String password = dao.searchPWMethod(num);
		req.setAttribute("password", password);
	
	}//end execute() 
}//end class
