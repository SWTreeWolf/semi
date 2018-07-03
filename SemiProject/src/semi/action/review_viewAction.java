package semi.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.review_BoardDAO;

public class review_viewAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		int num = Integer.parseInt(req.getParameter("num"));
		review_BoardDAO dao = review_BoardDAO.getInstance();
		dao.readCountMethod(num);
		req.setAttribute("dto", dao.viewMethod(num));

	}//end execute()
}//end class
