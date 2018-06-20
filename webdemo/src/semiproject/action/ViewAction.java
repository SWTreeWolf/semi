package semiproject.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semiproject.dao.SemiDAO;


public class ViewAction {

	public void execute(HttpServletRequest req, HttpServletResponse resp) { 
		int num=Integer.parseInt(req.getParameter("num")); 
		SemiDAO dao = SemiDAO.getInstance(); 
		req.setAttribute("dto", dao.viewMethod(num));
		dao.readCountMethod(num);
	}//end execute() 
}//end class
