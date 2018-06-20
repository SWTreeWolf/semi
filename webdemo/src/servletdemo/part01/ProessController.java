package servletdemo.part01;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/namePro")
public class ProessController extends HttpServlet{
				@Override
				protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
						String fname=req.getParameter("fname");
						req.setAttribute("fname",fname);
						RequestDispatcher dis=req.getRequestDispatcher("/servletview/part01/result.jsp");
						dis.forward(req, resp);
				}// end DG
				@Override
				protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
					//post방식일때 한글처리 
					String fname=req.getParameter("fname");
					req.setAttribute("fname",fname);
					RequestDispatcher dis=req.getRequestDispatcher("/servletview/part01/result.jsp");
					dis.forward(req, resp);
				}// end DP
}//end class
