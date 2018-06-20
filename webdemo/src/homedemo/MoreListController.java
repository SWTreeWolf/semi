package homedemo;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/moreList")
public class MoreListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String gubun=req.getParameter("gubun"); 
		String path="";
		HomeDAO dao=HomeDAO.getInstance();		  
		if(gubun.equals("emp")) {
		  List<EmpDTO> aList=dao.getEmpList("more");
		  req.setAttribute("aList", aList);
		  path="/home/empList.jsp";
		}else if(gubun.equals("dept")) {
			List<DeptDTO> aList=dao.getDeptList("more");
			req.setAttribute("aList", aList);
			path="/home/deptList.jsp";
		} else if(gubun.equals("loc")) {
			List<LocDTO> aList=dao.getLocList("more");
			req.setAttribute("aList", aList);
			path="/home/locList.jsp";
		}
		  
		  RequestDispatcher dis=req.getRequestDispatcher(path);
		  dis.forward(req, resp);
		  
	}//end doGet()

}//end class
