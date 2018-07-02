package semi.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import semi.DAO.ReservationDAO;
import semi.DTO.PersonDTO;
import semi.DTO.ReservationDTO;
import semi.DTO.ReserveViewpageDTO;


public class ManagerReserveSearchAction {
	
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int thisP=1;
		if(req.getParameter("thisP")!=null||req.getParameter("thisP")!="") {
			thisP=Integer.parseInt(req.getParameter("thisP"));
		}
		String searchName = req.getParameter("searchName");
        ReservationDAO dao = ReservationDAO.getInstance();
        int resTotal=dao.getResTotal(searchName);
		ReserveViewpageDTO rvpdto=new ReserveViewpageDTO(resTotal,thisP);
		List<ReservationDTO> list = dao.searchList(searchName,rvpdto);
		
		JSONObject pdtoObj=new JSONObject();
		pdtoObj.put("blockC", rvpdto.getBlockC());
		pdtoObj.put("blockF", rvpdto.getBlockF());
		pdtoObj.put("blockL", rvpdto.getBlockL());
		pdtoObj.put("firstW", rvpdto.getFirstW());
		pdtoObj.put("lastW", rvpdto.getLastW());
		pdtoObj.put("thisP", rvpdto.getThisP());
		pdtoObj.put("total", rvpdto.getTotal());
		pdtoObj.put("totalP", rvpdto.getTotalP());
		pdtoObj.put("totalW", rvpdto.getTotalW());
		
		JSONArray arr = new JSONArray();
		for (int i = 0; i < list.size(); i++) {
			JSONObject obj = new JSONObject();
			obj.put("l_num", list.get(i).getL_num());
			obj.put("l_dateIn", String.valueOf(list.get(i).getL_dateIn()));
			obj.put("l_dateOut", String.valueOf(list.get(i).getL_dateOut()));
			obj.put("l_tipNum", list.get(i).getL_tipNum());
			obj.put("p_num", list.get(i).getP_num());
			obj.put("p_name", list.get(i).getP_name());
			obj.put("r_num", list.get(i).getR_num());
			obj.put("r_total", list.get(i).getR_total());
			obj.put("yes", list.get(i).getYes());
			arr.add(obj);
		}
		
		JSONObject objDeux=new JSONObject();
		objDeux.put("rvpdto", pdtoObj);
		objDeux.put("objlist", arr);
		objDeux.put("listType", "search");
		resp.setContentType("text/json;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(objDeux);
	}
}
