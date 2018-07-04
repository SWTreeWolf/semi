package semi.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.*;
import semi.DTO.*;

public class Inquiry_ListAction {

	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		InquiryDAO dao = InquiryDAO.getInstance();
		String pageNum = req.getParameter("pageNum");
		if (pageNum == null || pageNum.equals("null"))
			pageNum = "1";

		int currentPage = Integer.parseInt(pageNum);

		String searchKey = req.getParameter("searchKey");
		String searchWord = req.getParameter("searchWord");
		if (searchKey != null && searchKey.equals("")) {
			searchKey = null;
			searchWord = null;
		}
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("searchKey", searchKey);
		map.put("searchWord", searchWord);

		int cnt = dao.rowTotalCount(map);

		if (cnt > 0) {
			PageDTO pdto = new PageDTO(currentPage, cnt, searchKey, searchWord);
			req.setAttribute("pdto", pdto);
			req.setAttribute("aList", dao.listMethod(pdto));
		}

	}
}
