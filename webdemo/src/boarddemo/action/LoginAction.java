package boarddemo.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boarddemo.dao.BoardDAO;
import boarddemo.dto.MemDTO;

public class LoginAction {
	
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String fid=req.getParameter("fid");
		String fpass=req.getParameter("fpass");
		MemDTO dto=new MemDTO();
		dto.setFid(fid);
		dto.setFpass(fpass);
		BoardDAO dao=BoardDAO.getInstance();
		int cnt=dao.memCheck(dto);
		HttpSession session=req.getSession();
		
		if(cnt==1) {
				session.setAttribute("logOK", fid);
				session.setMaxInactiveInterval(30*60);
		}else {
			req.setAttribute("chk", fid);
		}
	}

}
