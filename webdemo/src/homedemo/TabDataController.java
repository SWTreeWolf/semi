package homedemo;

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

@WebServlet("/tabdata")
public class TabDataController extends HttpServlet{
	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String gubun = req.getParameter("gubun");
		System.out.println("gubun"+gubun);
		
		HomeDAO dao = HomeDAO.getInstance();
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out=resp.getWriter();
		JSONArray array=new JSONArray();
		if(gubun.equals("emp")) {
			array.add("emp");
			List<EmpDTO> tabList = dao.getEmpList(null);			
			for(int i=0; i<tabList.size(); i++) {
				EmpDTO dto=tabList.get(i);
				JSONObject obj=new JSONObject();
				obj.put("employee_id",dto.getEmployee_id());
				obj.put("first_name",dto.getFirst_name());
				array.add(obj);
			}			
		}else if(gubun.equals("dept")) {
			array.add("dept");
			List<DeptDTO> tabList = dao.getDeptList(null);				
			for(int i=0; i<tabList.size(); i++) {
				DeptDTO dto=tabList.get(i);
				JSONObject obj=new JSONObject();
				obj.put("department_id", dto.getDepartment_id());
				obj.put("department_name", dto.getDepartment_name());
				array.add(obj);
			}
		}else if(gubun.equals("loc")) {
			array.add("loc");
			List<LocDTO> tabList = dao.getLocList(null);			
			for(int i=0; i<tabList.size(); i++) {
				LocDTO dto=tabList.get(i);
				JSONObject obj=new JSONObject();
				obj.put("location_id", dto.getLocation_id());
				obj.put("city", dto.getCity());
				array.add(obj);
			}
		}
		
		out.print(array);
	}//end doGet()
}//end class
