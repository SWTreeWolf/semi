package servletdemo.part01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.http.HTTPException;

@WebServlet("/basic")
public class Basic extends HttpServlet{
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws HTTPException,IOException, ServletException{
			RequestDispatcher dis=req.getRequestDispatcher("/servletview/part01/nameView.jsp");
			dis.forward(req, resp);
			/*resp.setContentType("text/html;charset-utf-8");
			예전방식 지금은 사용하지않는다.
			PrintWriter out=resp.getWriter();
			out.print("<html>");
			out.print("<body>");
			out.print("<p>servlet view page</p>");
			out.print("</body>");
			out.print("</html>");
			out.close();*/
		}

		

}
