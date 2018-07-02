package semi.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.ReservationDAO;

public class ManagerPayCheckAction {

	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int l_num = Integer.parseInt(req.getParameter("l_num"));
		ReservationDAO dao = ReservationDAO.getInstance();
		dao.yesUpdate(l_num);
		//
	}

}
