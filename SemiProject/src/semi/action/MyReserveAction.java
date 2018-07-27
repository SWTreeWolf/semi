package semi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import semi.DAO.ReservationDAO;
import semi.DTO.PersonDTO;
import semi.DTO.ReservationDTO;
import semi.DTO.ReserveViewpageDTO;
import semi.DTO.RoomDTO;

public class MyReserveAction {

	@SuppressWarnings("unchecked")
	public void execute(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException {
		int l_tipNum=Integer.parseInt(req.getParameter("l_tipNum"));
		String p_name=req.getParameter("p_name");
		ReservationDAO dao=ReservationDAO.getInstance();
		PersonDTO pdto=dao.getPerson(l_tipNum);
		ReservationDTO rdto=dao.getRes(l_tipNum);
		RoomDTO roomdto=dao.getRoom(rdto.getR_num());
		
		if(pdto.getP_address() == null) {
			pdto.setP_address("");
		}
		
		resp.setContentType("text/json;charset=utf-8");
		
		if(p_name.equals(pdto.getP_name())) {
				JSONObject obj=new JSONObject();
				obj.put("l_tipNum", rdto.getL_tipNum());
				obj.put("r_num", roomdto.getR_num());
				obj.put("r_name", roomdto.getR_name());
				obj.put("dateIn",String.valueOf(rdto.getL_dateIn()));
				obj.put("dateOut", String.valueOf(rdto.getL_dateOut()));
				obj.put("p_name", pdto.getP_name());
				obj.put("p_birth", pdto.getP_birth());
				obj.put("p_phoneNumber", pdto.getP_phoneNumber());
				obj.put("p_email", pdto.getP_email());
				obj.put("p_address", pdto.getP_address());
				if(pdto.getP_contents() == null) {
					pdto.setP_contents("");
				}
				obj.put("p_contents", pdto.getP_contents());
				obj.put("r_total", rdto.getR_total());
				obj.put("yes", rdto.getYes());
				resp.getWriter().print(obj);
		}else {
			resp.getWriter().print(1);
		}
	}//end method
}//end class
