package semi.action;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import semi.DAO.Notice_SemiProDAO;
import semi.DTO.Notice_SemiProDTO;

public class Notice_WriteAction {

	public MultipartRequest execute(HttpServletRequest req, HttpServletResponse resp) {
		MultipartRequest multi = null;
		String saveDirectory = "c:/temp";
		File file = new File(saveDirectory);
		if (!file.exists())
			file.mkdirs();
		int maxPostSize = 100000000;
		String encoding = "UTF-8";

		Notice_SemiProDAO dao = Notice_SemiProDAO.getInstance();
		Notice_SemiProDTO dto = new Notice_SemiProDTO();

		try {
			multi = new MultipartRequest(req, saveDirectory, maxPostSize, encoding, new DefaultFileRenamePolicy());
			dto.setWriter(multi.getParameter("writer"));
			dto.setSubject(multi.getParameter("subject"));
			dto.setSummernote(multi.getParameter("summernote"));
			dto.setUpload(multi.getParameter("upload"));

			if (multi.getParameter("re_level") != null) {
				HashMap<String, Integer> map = new HashMap<String, Integer>();
				map.put("ref", Integer.parseInt(multi.getParameter("ref")));
				map.put("re_step", Integer.parseInt(multi.getParameter("re_step")));
				dao.reStepMethod(map);
				dto.setRef(Integer.parseInt(multi.getParameter("ref")));
				dto.setRe_step(Integer.parseInt(multi.getParameter("re_step")));
				dto.setRe_level(Integer.parseInt(multi.getParameter("re_level")));

			}
			dao.insertMethod(dto);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return multi;
	}

	private void exit() {

	}

}//end class
