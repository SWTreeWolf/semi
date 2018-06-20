package ajaxdemo.part04;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;


// http://localhost:8090/webdemo/empList2

@WebServlet("/empList2")
public class EmpListController2 extends HttpServlet{
	
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//forward()해줄 페이지를 등록함
		RequestDispatcher dis=
				 req.getRequestDispatcher("/ajaxview/part04/empList.jsp");
		EmployeesDAO dao=EmployeesDAO.getInstance();
		List<EmployeesDTO> list=dao.search(req.getParameter("data"));
		String chk=req.getParameter("chk");
		
		if(chk==null) {
			req.setAttribute("aList", list);
			dis.forward(req, resp);
		}else {
		resp.setContentType("text/json; charset=UTF-8"); 	
		JSONArray array=new JSONArray();
		for(int i=0;i<list.size();i++) {
			JSONObject obj=new JSONObject();
			obj.put("employee_id",list.get(i).getEmployee_id());
			obj.put("salary",list.get(i).getSalary());
			obj.put("first_name",list.get(i).getFirst_name());
			array.add(obj);
		}
		PrintWriter out=resp.getWriter();
		out.print(array);
		
		}
		
	}//end doGet()

}//end class










