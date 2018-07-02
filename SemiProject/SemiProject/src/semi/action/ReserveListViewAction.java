package semi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.ReservationDAO;
import semi.DTO.PersonDTO;
import semi.DTO.ReservationDTO;

public class ReserveListViewAction {

	@SuppressWarnings("unchecked")
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int l_tipNum = Integer.parseInt(req.getParameter("l_tipNum"));
		ReservationDAO dao = ReservationDAO.getInstance();
		PersonDTO pdto = dao.getPerson(l_tipNum);
		ReservationDTO rdto = dao.getRes(l_tipNum);

		req.setAttribute("pdto", pdto);
		req.setAttribute("rdto", rdto);
	}//end execute()
}//end class
