package picturedemo;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/testDel")
public class TestDeleteController extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] chk= req.getParameterValues("chk");
		TestDAO dao=TestDAO.getInstance();
		List<String>aList=dao.fileList(chk);
		for(String fileData : aList) {
			File file=new File("c:/temp/",fileData);
			file.delete();
		}
		dao.deleteMethod(chk);
		resp.sendRedirect("preview");
	}// end doPost()

}
