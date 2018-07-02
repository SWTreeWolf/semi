package semi.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.DAO.Notice_SemiProDAO;
import semi.DTO.Notice_SemiProDTO;



public class Notice_DeleteAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		Notice_SemiProDAO dao= Notice_SemiProDAO.getInstance();
		List<Notice_SemiProDTO> aList =new ArrayList<Notice_SemiProDTO>();
		int num =Integer.parseInt(req.getParameter("num"));
		aList=dao.searchMethod(num);
		
		for(Notice_SemiProDTO dto : aList) {
			if(dto.getUpload() !=null) {
				File file =new File("c:/temp",dto.getUpload());
				file.delete();
			}
		}
		dao.DeleteMethod(num);
	}
}
