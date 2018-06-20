package semiproject.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semiproject.action.ListAction;
import semiproject.action.ViewAction;

@WebServlet("/semi/*")
public class SemiController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();

		String action = uri.substring(uri.lastIndexOf("/"));

		String path = "";

		if (action.equals("/*") || action.equals("/list.do")) {
			ListAction list = new ListAction();
			list.execute(req, resp);
			path = "/semiprojectview/list.jsp";
		} else if (action.equals("/view.do")) {
			ViewAction view = new ViewAction();
			view.execute(req, resp);
			path = "/semiprojectview/view.jsp";
		}
		if (path != "") {
			RequestDispatcher dis = req.getRequestDispatcher(path);
			dis.forward(req, resp);
		}
	}

}
