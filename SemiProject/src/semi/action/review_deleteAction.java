package semi.action;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.review_BoardDAO;

public class review_deleteAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		int num = Integer.parseInt(req.getParameter("num"));
		review_BoardDAO dao = review_BoardDAO.getInstance();
		String filename = dao.fileMethod(num);
		String savaDirectory = "c:/temp";
		if(filename !=null) {
			File oldFile = new File(savaDirectory,filename);
			oldFile.delete();
		}
		dao.deleteMethod(num);
	}
}
