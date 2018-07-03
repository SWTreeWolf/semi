package semi.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import semi.DAO.review_CommentDAO;
import semi.DTO.review_CommentDTO;

public class ReviewcommListAction {
	@SuppressWarnings("unchecked")
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int num = Integer.parseInt(req.getParameter("num"));
		review_CommentDAO dao = review_CommentDAO.getIstance();
		List<review_CommentDTO> list = dao.getCommList(num);
		JSONArray arr = new JSONArray();
		for (review_CommentDTO dto : list) {
			JSONObject obj = new JSONObject();
			obj.put("col", dto.getCol());
			obj.put("num", dto.getNum());
			obj.put("content", dto.getContent());
			obj.put("id", dto.getId());
			obj.put("password", dto.getPassword());
			obj.put("reg_date", dto.getReg_date());
			arr.add(obj);
		}
		resp.setContentType("text/json;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(arr);
	}// end execute()
}//end class
