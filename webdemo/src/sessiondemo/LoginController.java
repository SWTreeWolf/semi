package sessiondemo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginController extends HttpServlet {
		@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
			RequestDispatcher dis= req.getRequestDispatcher("/boardview/login.jsp");
			dis.forward(req, resp);
		}//end DG
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String fid=req.getParameter("fid");
			String fpass=req.getParameter("fpass");
			MemDTO dto=new MemDTO();
			dto.setFid(fid);
			dto.setFpass(fpass);
			
			MemDAO dao=MemDAO.getInstance();
			int cnt=dao.memCheck(dto);  
			
			//client와 server의 연결을 지속시켜줄 목적
			HttpSession session=req.getSession();
			
			if(cnt==1) {
					session.setAttribute("logOK", fid);
					session.setMaxInactiveInterval(30*60); //30분
			}else {
				req.setAttribute("chk", fid);
			}
			RequestDispatcher dis=req.getRequestDispatcher("/boardview/list.jsp");
			dis.forward(req, resp);
		}//end DP
}//end class
