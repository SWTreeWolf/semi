package semi.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.Notice_SemiProDAO;
import semi.DTO.Notice_SemiProDTO;



public class Notice_UpdateFormAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		int num=Integer.parseInt(req.getParameter("num"));
		Notice_SemiProDAO dao= Notice_SemiProDAO.getInstance();
		Notice_SemiProDTO dto=dao.viewMethod(num);
		req.setAttribute("dto", dto);
	}

}
