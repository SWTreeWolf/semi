package semi.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.review_CommentDAO;
import semi.DTO.review_CommentDTO;

public class ReviewCommInput {
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String par = req.getParameter("num").trim();
		int num = Integer.parseInt(par);
		String content = req.getParameter("content");
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		System.out.println(password);
		review_CommentDTO dto = new review_CommentDTO();
		dto.setNum(num);
		dto.setId(id);
		dto.setPassword(password);
		dto.setContent(content);
		review_CommentDAO dao = review_CommentDAO.getIstance();
		dao.commInsert(dto);
		resp.setContentType("text/json;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println(num);
	}// end execute()
}// end class
