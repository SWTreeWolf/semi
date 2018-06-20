package boarddemo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import boarddemo.action.DeleteAction;
import boarddemo.action.FileDownLoadAction;
import boarddemo.action.ListAction;
import boarddemo.action.LoginAction;
import boarddemo.action.UpdateFormAction;
import boarddemo.action.UpdateProAction;
import boarddemo.action.ViewAction;
import boarddemo.action.WriteAction;

@WebServlet("/board/*")
public class BoardController extends HttpServlet {

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
		// System.out.println(uri);

		String action = uri.substring(uri.lastIndexOf("/"));
		// System.out.println(action);

		String path = "";

		if (action.equals("/login.do")) {
			LoginAction log = new LoginAction();
			log.execute(req, resp);
			path = "/boardview/login.jsp";
		} else if (action.equals("/*") || action.equals("/list.do")) {
			ListAction list = new ListAction();
			list.execute(req, resp);
			path = "/boardview/list.jsp";
		} else if (action.equals("/view.do")) {
			ViewAction view = new ViewAction();
			view.execute(req, resp);
			path = "/boardview/view.jsp";
		} else if (action.equals("/writeForm.do")) {
			path = "/boardview/write.jsp";
		} else if (action.equals("/write.do")) {
			WriteAction write = new WriteAction();
			MultipartRequest multi = write.execute(req, resp);
			resp.sendRedirect("list.do?pageNum=" + multi.getParameter("pageNum"));
		} else if (action.equals("/download.do")) {
			FileDownLoadAction download = new FileDownLoadAction();
			download.execute(req, resp);
		} else if (action.equals("/updateForm.do")) {
			UpdateFormAction uform = new UpdateFormAction();
			uform.execute(req, resp);
			path = "/boardview/update.jsp";
		} else if (action.equals("/updatePro.do")) {
			UpdateProAction pro = new UpdateProAction();
			MultipartRequest multi = pro.execute(req, resp);
			resp.sendRedirect("list.do?pageNum=" + multi.getParameter("pageNum"));
		} else if (action.equals("/deleteForm.do")) {
			DeleteAction del = new DeleteAction();
			del.execute(req, resp);
			resp.sendRedirect("list.do?pageNum=" + req.getParameter("pageNum"));
		}

		if (path != "") {
			RequestDispatcher dis = req.getRequestDispatcher(path);
			dis.forward(req, resp);
		}
	}// end doProcess()

}// end class