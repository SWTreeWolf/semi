package semi.action;

import java.io.IOException;
import java.sql.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.ReservationDAO;
import semi.DTO.PersonDTO;
import semi.DTO.ReservationDTO;
import semi.DTO.RoomDTO;

public class ReserveAction {

	public void execute(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException {
		//랜덤번호
	   	GenerateNumber nn = new GenerateNumber();
        int l_tipNum=nn.excuteGenerate();
		ReservationDAO dao=ReservationDAO.getInstance();
		//개인정보 (person)
		PersonDTO pdto=new PersonDTO();
		int r_num=Integer.parseInt(req.getParameter("r_num"));
		
		pdto.setP_address(req.getParameter("p_address"));
		pdto.setP_birth(req.getParameter("p_birth"));
		pdto.setP_contents(req.getParameter("p_contents"));
		pdto.setP_email(req.getParameter("p_email"));
		pdto.setP_name(req.getParameter("p_name"));
		pdto.setP_phoneNumber(req.getParameter("p_phoneNumber"));
		pdto.setL_tipNum(l_tipNum);
		int p_num=dao.insertP(pdto);
		
		//예약정보(reservation)
		int stay=Integer.parseInt(req.getParameter("stay"));
		RoomDTO room=dao.getRoom(Integer.parseInt(req.getParameter("r_num")));
		int r_total=stay*room.getR_pay();
		String dateIn=req.getParameter("dateIn");
		String dateOut=req.getParameter("dateOut");
		
		String di[]=dateIn.split("-");
		String dout[]=dateOut.split("-");
		java.sql.Date l_dateIn=new java.sql.Date(Integer.parseInt(di[0])-1900,Integer.parseInt(di[1])-1,Integer.parseInt(di[2]));
		java.sql.Date l_dateOut=new java.sql.Date(Integer.parseInt(dout[0])-1900,Integer.parseInt(dout[1])-1,Integer.parseInt(dout[2]));
		int yes=0;
		//카드결제인지 무통장입금인지
		if(req.getParameter("payType").equals("card")) {
			yes=1;
		}else {
			yes=0;
		}
		
		ReservationDTO rdto=new ReservationDTO();
		rdto.setL_dateIn(l_dateIn);
		rdto.setL_dateOut(l_dateOut);
		rdto.setL_tipNum(l_tipNum);
		rdto.setR_total(r_total);
		rdto.setP_num(p_num);
		rdto.setR_num(r_num);
		rdto.setYes(yes);
		
		dao.insertR(rdto);

		//예약완료페이지에 추가로 넘길값~~
		req.setAttribute("r_name", room.getR_name());
		req.setAttribute("r_total",r_total);
		req.setAttribute("l_tipNum", l_tipNum);
		
	}/////
}
