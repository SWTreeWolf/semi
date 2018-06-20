package boarddemo.action;

import java.util.HashMap;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boarddemo.dao.BoardDAO;
import boarddemo.dto.PageDTO;

public class ListAction {

	public void execute(HttpServletRequest req, HttpServletResponse resp) { 
		BoardDAO dao = BoardDAO.getInstance();
		String pageNum=req.getParameter("pageNum");
		if(pageNum==null || pageNum.equals("null"))
			pageNum="1";
		
		int currentPage=Integer.parseInt(pageNum);
		 //all, subject, content, writer
	     String searchKey=req.getParameter("searchKey");
	     String searchWord=req.getParameter("searchWord");
	     if(searchKey!=null && searchKey.equals("")) {
	    	 searchKey=null;
	    	 searchWord=null;
	     }
	     //현재 테이블에 저장되어 있는 총 레코드 수
	     HashMap<String, String> map = new HashMap<String,String>();
	     map.put("searchKey", searchKey);
	     map.put("searchWord", searchWord);
		int cnt=dao.rowTotalcount(map);
		if(cnt>0) {
		PageDTO pdto=new PageDTO(currentPage, cnt,searchKey,searchWord);
		req.setAttribute("pdto", pdto);
		//req영역에 저장해주고 boardcontroller에서 listAction을 처리해주면 
		req.setAttribute("aList", dao.listMethod(pdto));
		}
	}
	
}//end class
