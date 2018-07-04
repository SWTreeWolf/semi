package semi.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.Notice_SemiProDAO;



public class Notice_ViewAction {
	
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
		int num=Integer.parseInt(req.getParameter("num"));
		Notice_SemiProDAO dao =Notice_SemiProDAO.getInstance();
		dao.readCountMethod(num);
		req.setAttribute("dto", dao.viewMethod(num));
		
	}
}
