package semi.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.review_CommentDAO;

public class ReviewcommDeleteAction{
	public void execute(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException {
		int col = Integer.parseInt(req.getParameter("col"));
		int num = Integer.parseInt(req.getParameter("num"));
		review_CommentDAO dao = review_CommentDAO.getIstance();
		dao.commDelete(col);
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println(num);
	}//end execute()
}//end class
