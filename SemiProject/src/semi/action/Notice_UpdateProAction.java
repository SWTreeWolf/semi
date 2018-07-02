package semi.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import semi.DAO.Notice_SemiProDAO;
import semi.DTO.Notice_SemiProDTO;



public class Notice_UpdateProAction {
	public MultipartRequest execute(HttpServletRequest req, HttpServletResponse resp) {
		MultipartRequest multi=null;
		
		String saveDirectory = "c:/temp";
		int maxPostSize =100000000;
		String encoding ="UTF-8";
		
		try {
			multi = new MultipartRequest(req, saveDirectory, maxPostSize, encoding,new DefaultFileRenamePolicy());
		}catch(IOException e) {
			e.printStackTrace();
		}
		Notice_SemiProDTO dto = new Notice_SemiProDTO();
		Notice_SemiProDAO dao =Notice_SemiProDAO.getInstance();
		dto.setNum(Integer.parseInt(multi.getParameter("num")));
		dto.setWriter(multi.getParameter("writer"));
		dto.setSubject(multi.getParameter("subject"));
		dto.setSummernote(multi.getParameter("summernote"));
		
		int num =Integer.parseInt(multi.getParameter("num"));
		
		String filename= dao.fileMethod(num);
		
		if(multi.getFilesystemName("upload")!=null) {
			if(filename !=null) {
				File oldFile =new File(saveDirectory,filename);
				oldFile.delete();
			}
			dto.setUpload(multi.getFilesystemName("upload"));
		}else {
			if(filename !=null) {
				dto.setUpload(filename);
			}
		}
		dao.updateMethod(dto);
		return multi;
	}

}
