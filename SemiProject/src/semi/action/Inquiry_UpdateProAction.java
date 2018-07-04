package semi.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import semi.DAO.*;
import semi.DTO.*;


public class Inquiry_UpdateProAction {
	public MultipartRequest execute(HttpServletRequest req, 
			HttpServletResponse resp) { 
		
		MultipartRequest multi = null; 
		
		String saveDirectory ="c://temp"; 
		int maxPostSize = 1*1024*1024*1024; 
		String encoding = "UTF-8"; 
		
		try {
			multi = new MultipartRequest(req, saveDirectory, maxPostSize,
						encoding, new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		} 
		
		InquiryDTO dto = new InquiryDTO(); 
		InquiryDAO dao = InquiryDAO.getInstance();
		dto.setTitle(multi.getParameter("title"));
		dto.setPassword(multi.getParameter("password"));
		dto.setContent(multi.getParameter("content"));
		dto.setWriter(multi.getParameter("writer"));
		dto.setNum(Integer.parseInt(multi.getParameter("num")));
		dto.setEmail(multi.getParameter("email"));
		dto.setHpage(multi.getParameter("hpage"));
		dto.setLk1(multi.getParameter("lk1"));
		dto.setLk2(multi.getParameter("lk2"));
		
		int num = Integer.parseInt(multi.getParameter("num")); 
		
		//board테이블에 첨부파일의 저장여부 검색 
		String filename = dao.fileMethod(num); 
		
		//수정 첨부파일이 있을때 
		if(multi.getFilesystemName("upload") !=null) { 
			//board테이블에 첨부파일이 저장이 되어 있으면 
			if(filename !=null) { 
				//board테이블의 첨부파일을 삭제하고 
				File oldFile = new File(saveDirectory, filename); 
				oldFile.delete(); 
			}
			//수정 첨부파일을 dto에 업로드 
			dto.setUpload(multi.getFilesystemName("upload"));
		
		//수정할 첨부파일이 없을때 
		}else { 
			
			//기존에 업로드 되어 있는 파일 그냥 놔둔다 
			if(filename != null) { 
				dto.setUpload(filename);
			}
			
		}
		dao.updateMethod(dto);
		return multi ;  
	}//execute() 

}
