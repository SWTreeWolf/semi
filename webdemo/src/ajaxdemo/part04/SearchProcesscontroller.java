package ajaxdemo.part04;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchProcess")
public class SearchProcesscontroller extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ListAction list = new ListAction();
		list.execute(req, resp);
		
		RequestDispatcher dis = req.getRequestDispatcher("/ajaxview/part04/result.jsp");
		dis.forward(req, resp);
	}//end doPost()
	
}//end class
