package ajaxdemo.part06;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/commentList")
public class CommentListController extends  HttpServlet{
			@SuppressWarnings("unchecked")
			@Override
			protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
					int num=Integer.parseInt(req.getParameter("num"));
					DiscussDAO dao =DiscussDAO.getInstance();
					List<CommentDTO> list =dao.getCommList(num);
					JSONArray arr=new JSONArray();
					for(CommentDTO dto : list) {
						JSONObject obj=new JSONObject();
						obj.put("col", dto.getCol());
						obj.put("num", dto.getNum());
						obj.put("content", dto.getContent());
						arr.add(obj);
					}
					
					resp.setContentType("text/json;charset=utf-8");
					PrintWriter out=resp.getWriter();
					out.print(arr);
			}//end DG
}// end class
