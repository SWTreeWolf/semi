package semi.action;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import semi.DAO.ReservationDAO;
import semi.DTO.ReservationDTO;

public class CalendarAction {
	@SuppressWarnings("unchecked")
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ReservationDAO dao = ReservationDAO.getInstance();
		List<ReservationDTO> list = dao.getResList();
		JSONArray arr = new JSONArray();
		for (ReservationDTO lis : list) {
			JSONObject obj = new JSONObject();
			String l_dateIn[] = String.valueOf(lis.getL_dateIn()).split("-");
			String l_dateOut[] = String.valueOf(lis.getL_dateOut()).split("-");
			obj.put("l_num", lis.getL_num());
			obj.put("l_dateInY", l_dateIn[0]);
			obj.put("l_dateInM", l_dateIn[1]);
			obj.put("l_dateInD", l_dateIn[2]);
			obj.put("l_dateOutY", l_dateOut[0]);
			obj.put("l_dateOutM", l_dateOut[1]);
			obj.put("l_dateOutD", l_dateOut[2]);
			obj.put("p_num", lis.getP_num());
			obj.put("r_num", lis.getR_num());
			obj.put("r_total", lis.getR_total());
			obj.put("l_tipNum", lis.getL_tipNum());
			obj.put("yes", lis.getYes());
			arr.add(obj);
		}
		resp.setContentType("text/json;charset=utf-8");
		resp.getWriter().print(arr);
	}//end execute()
}//end class