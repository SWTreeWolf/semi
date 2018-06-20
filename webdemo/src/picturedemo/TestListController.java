package picturedemo;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import multicheckdemo.MemberDAO;

@WebServlet("/preview")
public class TestListController extends HttpServlet{
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				TestDAO dao =TestDAO.getInstance();
				List<TestDTO>aList=dao.selectMethod();
				req.setAttribute("aList", aList);
				RequestDispatcher dis= req.getRequestDispatcher("/pictureview/list.jsp");
				dis.forward(req, resp);
		}//end DG
		
}//end class
