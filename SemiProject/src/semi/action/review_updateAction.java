package semi.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.review_BoardDAO;
import semi.DTO.review_BoardDTO;

public class review_updateAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		int num = Integer.parseInt(req.getParameter("num"));
		review_BoardDAO dao = review_BoardDAO.getInstance();
		review_BoardDTO dto = dao.viewMethod(num);
		req.setAttribute("dto", dto);
	}//end execute()
}//end class
