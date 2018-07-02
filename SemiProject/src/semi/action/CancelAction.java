package semi.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.ReservationDAO;


public class CancelAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		 
		String reserveListChk[] = req.getParameterValues("reserveListChk");
		ReservationDAO dao = ReservationDAO.getInstance();
		dao.deleteReservationMethod(reserveListChk);
		dao.deletePersonMethod(reserveListChk);
	}//end execute
}
