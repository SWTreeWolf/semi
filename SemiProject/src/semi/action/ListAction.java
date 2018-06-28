package semi.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import semi.DAO.ReservationDAO;
import semi.DTO.RoomDTO;

public class ListAction {
	//빈방리스트
	@SuppressWarnings("unchecked")
	public void execute(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException {
		//도착이랑 출발날짜랑 인원수
		String dateIn=req.getParameter("dateIn");
		String dateOut=req.getParameter("dateOut");
		int guests=Integer.parseInt(req.getParameter("guests"));

		//날짜계산
		String dat1[]=dateIn.split("-");
		String dat2[]=dateOut.split("-");
		Date ddateIn=new Date(Integer.parseInt(dat1[0]),Integer.parseInt(dat1[1]),Integer.parseInt(dat1[2]));
		Date ddateOut=new Date(Integer.parseInt(dat2[0]),Integer.parseInt(dat2[1]),Integer.parseInt(dat2[2]));
		long date=ddateOut.getTime()-ddateIn.getTime();
		long stay=date/(24*60*60*1000);
		//////////
		ReservationDAO dao=ReservationDAO.getInstance();
		List<RoomDTO> list=dao.getRoomList(dateIn, dateOut, guests);
		if(req.getParameter("ajax")==null) {
			req.setAttribute("list", list);
			req.setAttribute("stay", stay);
			req.setAttribute("dateIn", dateIn);
			req.setAttribute("dateOut", dateOut);
			req.setAttribute("guests", guests);
		}else {
			JSONArray arr=new JSONArray();
			for(RoomDTO lis: list){
				JSONObject obj=new JSONObject();
				obj.put("r_name", lis.getR_name());
				obj.put("r_contents", lis.getR_contents());
				obj.put("r_num", lis.getR_num());
				obj.put("r_pay", lis.getR_pay());
				obj.put("stay", stay);
				obj.put("dateIn",dateIn);
				obj.put("dateOut", dateOut);
				obj.put("r_num", guests);
				arr.add(obj);
			}
			resp.setContentType("text/json;charset=utf-8");
			resp.getWriter().print(arr);
		}//end else
		
	}//end execute()
}//end class
