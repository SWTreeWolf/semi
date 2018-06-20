package boarddemo.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import boarddemo.dao.BoardDAO;
import boarddemo.dto.BoardDTO;

public class UpdateProAction {
	public MultipartRequest execute(HttpServletRequest req, HttpServletResponse resp) {
		MultipartRequest multi =null;
		
		String saveDirectory ="c:/temp";
		int maxPostSize = 100000000; // 1GB
		String encoding = "UTF-8";
		
		try {
			multi = new MultipartRequest(req, saveDirectory,maxPostSize,encoding,new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		BoardDTO dto =new BoardDTO();
		BoardDAO dao =BoardDAO.getInstance();
		dto.setEmail(multi.getParameter("email"));
		dto.setSubject(multi.getParameter("subject"));
		dto.setContent(multi.getParameter("content"));
		dto.setNum(Integer.parseInt(multi.getParameter("num")));
		
		int num =Integer.parseInt(multi.getParameter("num"));
		
		//board테이블에 첨부파일의 저장여부 검색
		String filename =dao.fileMethod(num);
		
		//수정 첨부파일이 있으면
		
		if(multi.getFilesystemName("upload") !=null) {
			//borad테이블에 첨부파일이 저장이 되어 있으면
			if(filename !=null) {
				//board테이블의 첨부파일 삭제
				File oldFile = new File(saveDirectory, filename);
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
	}//end ET()
}//end class
