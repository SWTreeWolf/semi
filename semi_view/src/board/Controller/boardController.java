package board.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chk/*")
public class boardController extends HttpServlet{
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String uri = req.getRequestURI();
			String action = uri.substring(uri.lastIndexOf("/"));
			String path="";
			if(action.equals("/*")) {
				path="/merge/review_board.jsp";
			}else if(action.equals("/writeboard.do")) {
				path="/merge/write_board.jsp";
			}else if(action.equals("/view_board.do")) {
				path="/merge/view_board.jsp";
			}else if(action.equals("/test.do")) {
				path="/merge/header.jsp";
			}
			
			if(path!="") {
				RequestDispatcher dis =req.getRequestDispatcher(path);
				dis.forward(req, resp);
			}
	}//end doProcess()
}//end class
