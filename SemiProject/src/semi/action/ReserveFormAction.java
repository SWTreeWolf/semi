package semi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.ReservationDAO;
import semi.DTO.RoomDTO;

public class ReserveFormAction {

	@SuppressWarnings("unused")
	public void execute(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException {
		int stay=Integer.parseInt(req.getParameter("stay"));
		String dateIn=req.getParameter("dateIn");
		String dateOut=req.getParameter("dateOut");
		int r_num=Integer.parseInt(req.getParameter("r_num"));
		int guests=Integer.parseInt(req.getParameter("guests"));
		ReservationDAO dao=ReservationDAO.getInstance();
		RoomDTO rdto=dao.getRoom(r_num);
		req.setAttribute("r_pay", rdto.getR_pay());
		/*req.setAttribute("stay", stay);
		req.setAttribute("guests",guests);
		req.setAttribute("dateIn", dateIn);
		req.setAttribute("dateOut", dateOut);
		파라미터로 이미 넘어가는값들^^
		*/
		req.setAttribute("r_total",rdto.getR_pay()*stay);
	}//end execute()
}//end class
