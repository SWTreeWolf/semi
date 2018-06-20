package boarddemo.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import boarddemo.dao.BoardDAO;
import boarddemo.dto.BoardDTO;

public class DeleteAction {
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO dao = BoardDAO.getInstance();
		List<BoardDTO> aList = new ArrayList<BoardDTO>();
		int num = Integer.parseInt(req.getParameter("num"));
		aList = dao.searchMethod(num);

		for (BoardDTO dto : aList) {
			if (dto.getUpload() != null) {
				File file = new File("c:/temp", dto.getUpload());
				file.delete();
			}
		}

		dao.DeleteMethod(num);
	}// end execute()
}// end class