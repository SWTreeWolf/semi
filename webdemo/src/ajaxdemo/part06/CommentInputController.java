package ajaxdemo.part06;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/commentInput")
public class CommentInputController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				int num = Integer.parseInt(req.getParameter("num"));
				String content = req.getParameter("content");
				CommentDTO dto = new CommentDTO();
				dto.setNum(num);
				dto.setContent(content);
				DiscussDAO dao = DiscussDAO.getInstance();
				dao.commIntsert(dto);
				resp.setContentType("text/html;charset=utf-8");
				PrintWriter out=resp.getWriter();
				out.print(num);
				
		}//end DP
}//end class
