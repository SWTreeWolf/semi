package semi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.action.CalendarAction;
import semi.action.ChartAction;
import semi.action.ListAction;
import semi.action.ReserveAction;
import semi.action.ReserveFormAction;

@WebServlet("/chk/*")
public class Main_controller extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}// end doGet()

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}// end doPost()

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String action = uri.substring(uri.lastIndexOf("/"));
		String path = "";

		if (action.equals("/*") || action.equals("/intro.do")) {
			path = "/semi_view/m_intro.jsp";
		} else if (action.equals("/main.do")) {
			path = "/semi_view/m_main.jsp";
		} else if (action.equals("/pool.do")) {
			path = "/semi_view/m_pool.jsp";
		} else if (action.equals("/cafe.do")) {
			path = "/semi_view/m_cafe.jsp";
		} else if (action.equals("/service.do")) {
			path = "/semi_view/m_service.jsp";
		} else if (action.equals("/question.do")) {
			path = "/semi_view/m_question.jsp";
		} else if (action.equals("/map.do")) {
			path = "/semi_view/m_location.jsp";
		} else if (action.equals("/list.pen")) {// 빈방(첨에)
			ListAction list = new ListAction();
			list.execute(req, resp);
			path = "../semi_view/r_reserve.jsp";
		} else if (action.equals("/ajax.list")) {// 빈방(ajax)
			ListAction list = new ListAction();
			list.execute(req, resp);
		} else if (action.equals("/reserveForm.pen")) {// 예약폼
			ReserveFormAction rr = new ReserveFormAction();
			rr.execute(req, resp);
			path = "../semi_view/r_reserveForm.jsp";
		} else if (action.equals("/reserve.pen")) { // 예약요청
			ReserveAction reserve = new ReserveAction();
			reserve.execute(req, resp);
			path = "../semi_view/r_reserveEnd.jsp";
		} else if (action.equals("/manageP.pen")) {
			resp.sendRedirect("../semi_view/r_manageMain.jsp");
		} else if (action.equals("/ajax.res")) { // 예약현황 캘릭더(ajax)
			CalendarAction cal = new CalendarAction();
			cal.execute(req, resp);
		} else if (action.equals("/calendarView.pen")) { // 예약현황
			path = "../semi_view/calendarView.jsp";
		} else if (action.equals("/ajax.chart")) { // 차트(ajax)
			ChartAction chart = new ChartAction();
			chart.execute(req, resp);
		}

		if (path != "") {
			RequestDispatcher dis = req.getRequestDispatcher(path);
			dis.forward(req, resp);
		}
	}// end doProcess()

}// end class
