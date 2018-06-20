package ajaxdemo.part04;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		EmployeesDAO dao = EmployeesDAO.getInstance();
		String data = req.getParameter("data");
		
		if(data == "")
			data = null;
		
		req.setAttribute("aList", dao.search(data));
	}//end execute()
}//end class
