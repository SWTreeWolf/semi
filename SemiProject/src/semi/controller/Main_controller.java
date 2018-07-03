package semi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import semi.action.*;

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
		} else if (action.equals("/room.do")) {
			path = "/semi_view/m_roomPreview.jsp";
		}
		// reservation 시작
		else if (action.equals("/emptyRoomList.do")) {// 빈방(첨에)
			ListAction list = new ListAction();
			list.execute(req, resp);
			path = "../semi_view/r_emptyRoomList.jsp";
		} else if (action.equals("/emptyRoomListA.do")) {// 빈방(ajax)
			ListAction list = new ListAction();
			list.execute(req, resp);
		} else if (action.equals("/reserveForm.do")) {// 예약폼
			ReserveFormAction rr = new ReserveFormAction();
			rr.execute(req, resp);
			path = "../semi_view/r_reserveForm.jsp";
		} else if (action.equals("/reserveRequest.do")) { // 예약요청
			ReserveAction reserve = new ReserveAction();
			reserve.execute(req, resp);
			path = "../semi_view/r_reserveEnd.jsp";
		} else if (action.equals("/myReserve.do")) { // 나의 예약 찾기
			path = "../semi_view/r_myReserve.jsp";
		} else if (action.equals("/myReserveRequest.do")) { // 나의 예약 찾기 검색
			MyReserveAction my = new MyReserveAction();
			my.execute(req, resp);
		} else if (action.equals("/mg_reserveList.do")) {// 관리자페이지-메인(예약리스트)
			path = "../semi_view/mg_reserveList.jsp";
		} else if (action.equals("/mg_reserveCancel.do")) {// 관리자페이지-예약리스트-예약취소
			CancelAction can = new CancelAction();
			can.execute(req, resp);
			path = "../semi_view/mg_reserveList.jsp";
		} 
		// 관리자페이지 시작
		else if (action.equals("/mg_reserveView.do")) { // 관리자페이지-예약리스트-리스트출력 ajax
			ManagerReserveViewAction mrva = new ManagerReserveViewAction();
			mrva.execute(req, resp);
		} else if (action.equals("/mg_payCheck.do")) {// 관리자페이지-예약리스트-입금확인 ajax
			ManagerPayCheckAction mpca = new ManagerPayCheckAction();
			mpca.execute(req, resp);
		} else if (action.equals("/mg_reserveSearch.do")) {// 관리자페이지-예약리스트-검색 ajax
			ManagerReserveSearchAction mrsa = new ManagerReserveSearchAction();
			mrsa.execute(req, resp);
		} else if (action.equals("/mg_reserveListView.do")) {// 관리자페이지-예약리스트-예약정보보기
			ManagerReserveListViewAction mrlva = new ManagerReserveListViewAction();
			mrlva.execute(req, resp);
			path = "../semi_view/mg_reserveListView.jsp";
		} else if (action.equals("/mg_calendarView.do")) { // 관리자페이지-예약현황달력
			path = "../semi_view/mg_calendarView.jsp";
		} else if (action.equals("/mg_calendarViewA.do")) { // 예약현황 캘릭더 출력 ajax
			CalendarAction cal = new CalendarAction();
			cal.execute(req, resp);
		}
		// notice_borad
		else if (action.equals("/noticelist.do")) {
			Notice_ListAction list = new Notice_ListAction();
			list.execute(req, resp);
			path = "../semi_view/n_review_board.jsp";
		} else if (action.equals("/noticeview.do")) {
			Notice_ViewAction view = new Notice_ViewAction();
			view.execute(req, resp);
			path = "../semi_view/n_view_board.jsp";
		} else if (action.equals("/noticewriteboard.do")) {
			path = "../semi_view/n_write_board.jsp";
		} else if (action.equals("/noticewrite.do")) {
			Notice_WriteAction write = new Notice_WriteAction();
			MultipartRequest multi = write.execute(req, resp);
			resp.sendRedirect("noticelist.do?pageNum=" + multi.getParameter("pageNum"));
		} else if (action.equals("/noticedeleteForm.do")) {
			Notice_DeleteAction del = new Notice_DeleteAction();
			del.execute(req, resp);
			resp.sendRedirect("noticelist.do?pageNum=" + req.getParameter("pageNum"));
		} else if (action.equals("/noticeupdateForm.do")) {
			Notice_UpdateFormAction uform = new Notice_UpdateFormAction();
			uform.execute(req, resp);
			path = "../semi_view/n_update_board.jsp";
		} else if (action.equals("/noticeupdatePro.do")) {
			Notice_UpdateProAction pro = new Notice_UpdateProAction();
			MultipartRequest multi = pro.execute(req, resp);
			resp.sendRedirect("noticelist.do?pageNum=" + multi.getParameter("pageNum"));
		}
		
		if (path != "") {
			RequestDispatcher dis = req.getRequestDispatcher(path);
			dis.forward(req, resp);
		}
	}// end doProcess()

}// end class