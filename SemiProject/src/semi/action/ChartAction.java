package semi.action;

import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javafx.util.converter.DateTimeStringConverter;
import semi.DAO.ReservationDAO;
import semi.DTO.ChartDTO;

public class ChartAction {
	@SuppressWarnings("unchecked")
	public void execute(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException {
		List<ChartDTO> list=new LinkedList<ChartDTO>();
		ReservationDAO dao=ReservationDAO.getInstance();
		Calendar calendar = Calendar.getInstance();
		int num=6-1;
		calendar.set(2018,num, 01);
		int lastDay=calendar.getActualMaximum(calendar.DATE);
		
		ChartDTO dto=dao.getSales(new Date(2018-1900,num,2));
	}//end execute()
}//end class
