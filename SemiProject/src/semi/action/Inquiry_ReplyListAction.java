package semi.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import semi.DAO.*;
import semi.DTO.*;

public class Inquiry_ReplyListAction {
	@SuppressWarnings("unchecked")
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException  {
		
		int b_num = Integer.parseInt(req.getParameter("b_num"));
		InquiryDAO dao = InquiryDAO.getInstance(); 
		List<CmtDTO> list = dao.getCommList(b_num);
		JSONArray arr = new JSONArray(); 
		
		for(CmtDTO cdto:list) { 
			JSONObject obj = new JSONObject(); 
			obj.put("c_num", cdto.getC_num()); 
			obj.put("b_num", cdto.getB_num()); 
			obj.put("writer", cdto.getWriter()); 
			obj.put("password",cdto.getPassword()); 
			obj.put("content", cdto.getContent());
			String temp = transDate(cdto);
			obj.put("rdate", temp); 
			arr.add(obj); 
		}
		
		resp.setContentType("text/json;charset=utf-8");
		PrintWriter out = resp.getWriter(); 
		out.print(arr);
		System.out.println(arr);
	}//end execute()
	
	private String transDate(CmtDTO dto) {
		Date date = dto.getRdate();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		return sdf.format(date);
	}//end transDate()
}//end Inquiry_ReplyListAction()
